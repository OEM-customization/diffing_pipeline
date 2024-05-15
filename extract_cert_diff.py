import os
import subprocess
import hashlib
from OpenSSL import crypto
import pandas as pd
from datetime import datetime
import json
import config

def parse_validity_time(time_str):
    return datetime.strptime(time_str.decode('ascii'), '%Y%m%d%H%M%SZ').strftime('%Y-%m-%d %H:%M:%S')


def parse_certificate(cert_path):
    try:
        with open(cert_path, 'rb') as f:
            cert_data = f.read()
        cert = crypto.load_certificate(crypto.FILETYPE_PEM,cert_data)

        # Extracting desired fields from the certificate
        md5 = hashlib.md5(cert_data).hexdigest()
        sha1 = cert.digest("sha1").decode("utf-8")
        sha256 = cert.digest("sha256").decode("utf-8")
        subject = cert.get_subject()
        issuer = cert.get_issuer()
        serial = cert.get_serial_number()
        hash_algo = cert.get_signature_algorithm().decode("utf-8")
        signature_algo = cert.get_signature_algorithm().decode("utf-8")
        valid_not_before = cert.get_notBefore().decode("utf-8")
        valid_not_before = valid_not_before[:-1]
        valid_not_before = datetime.strptime(valid_not_before, '%Y%m%d%H%M%S')


        valid_not_after = cert.get_notAfter().decode("utf-8")
        valid_not_after = valid_not_after[:-1]
        valid_not_after = datetime.strptime(valid_not_after, '%Y%m%d%H%M%S')

        # Extracting additional subject fields
        subject_name = "".join(" {:s}={:s}".format(name.decode(), value.decode()) for name, value in subject.get_components())
        subject_common_name = subject.commonName
        subject_organizational_unit = subject.organizationalUnitName
        subject_organization = subject.organizationName
        subject_locality = subject.localityName
        subject_state = subject.stateOrProvinceName
        subject_country = subject.countryName
        subject_email = subject.emailAddress

        # Extracting additional issuer fields
        issuer_name = "".join(" {:s}={:s}".format(name.decode(), value.decode()) for name, value in issuer.get_components())
        issuer_common_name = issuer.commonName
        issuer_organizational_unit = issuer.organizationalUnitName
        issuer_organization = issuer.organizationName
        issuer_locality = issuer.localityName
        issuer_state = issuer.stateOrProvinceName
        issuer_country = issuer.countryName
        issuer_email = issuer.emailAddress

        details = {
            'md5': md5,
            'sha1': sha1,
            'sha256': sha256,
            'subject':subject_name,
            'subject_common_name': subject_common_name,
            'subject_organizational_unit': subject_organizational_unit,
            'subject_organization': subject_organization,
            'subject_locality': subject_locality,
            'subject_state': subject_state,
            'subject_country': subject_country,
            'subject_email': subject_email,
            'issuer': issuer_name,
            'issuer_common_name': issuer_common_name,
            'issuer_organizational_unit': issuer_organizational_unit,
            'issuer_organization': issuer_organization,
            'issuer_locality': issuer_locality,
            'issuer_state': issuer_state,
            'issuer_country': issuer_country,
            'issuer_email': issuer_email,
            'serial': serial,
            'hash_algo': hash_algo,
            'signature_algo': signature_algo,
            'valid_not_before': valid_not_before,
            'valid_not_after': valid_not_after
        }


        return details
    
    except Exception as e:
        print(f"Error processing certificate {cert_path}: {e}")
        return None


def extract_certificates_info(cert_directory):
    certs_info = []
    for root, dirs, files in os.walk(cert_directory):
        for file in files:
            if file.endswith('.crt') or file.endswith('.0'):
                file_path = os.path.join(root, file)
                cert_details = parse_certificate(file_path)
                if cert_details:
                    certs_info.append(cert_details)
    return certs_info

def save_certificates_to_csv(certs_info, output_path):
    df = pd.DataFrame(certs_info)
    os.makedirs(os.path.dirname(output_path), exist_ok=True)
    df.to_csv(output_path, index=False)
    print(f"Certificate details saved to {output_path}")

def checkout_tag(repo_path, baseline):
    original_dir = config.current_path
    print("Originally we are at", original_dir)
    try:
        if not os.path.exists(repo_path):
            raise Exception("Repository path does not exist.")
        os.chdir(repo_path)
        subprocess.run(["git", "fetch", "--all"], check=True)
        subprocess.run(["git", "checkout", f"refs/tags/{baseline}"], check=True)
        print(f"Successfully checked out to {baseline}")
    except subprocess.CalledProcessError as e:
        print(f"An error occurred: {e}")
    except Exception as e:
        print(e)
    finally:
        os.chdir(original_dir)
        
        
def find_oem_certs(device):
    cert_list = []
    try:
        for root, dirs, files in os.walk(device):
            for file in files:
                file_path = os.path.join(root, file)
                if "/etc/security/cacerts/" in file_path and file_path.endswith('.0'):
                    cert_details = parse_certificate(file_path)
                    if cert_details:
                        cert_list.append(cert_details)
                        
    except:
        print("Failed to extract certificate data")
        
        
    return cert_list


def save_cert_diffs(aosp_only_certs, oem_only_certs, output_path):
    diffs = {
        "aosp_only_certs": aosp_only_certs.to_dict(orient='records'),
        "oem_only_certs": oem_only_certs.to_dict(orient='records')
    }
    with open(output_path, 'w') as f:
        json.dump(diffs, f, indent=4)
    print(f"Differences saved to {output_path}")
    

def load_certificates(csv_path):
    return pd.read_csv(csv_path)


def find_unique_certs(aosp_certs_path, oem_certs_path):
    aosp_certs = load_certificates(aosp_certs_path)
    oem_certs = load_certificates(oem_certs_path)
    
    aosp_sha256_set = set(aosp_certs['sha256'])
    oem_sha256_set = set(oem_certs['sha256'])
    
    aosp_only = aosp_sha256_set - oem_sha256_set
    oem_only = oem_sha256_set - aosp_sha256_set
    
    aosp_only_certs = aosp_certs[aosp_certs['sha256'].isin(aosp_only)]
    oem_only_certs = oem_certs[oem_certs['sha256'].isin(oem_only)]
    
    return aosp_only_certs, oem_only_certs


def clone_git_repo():
    
    repo_url = "https://android.googlesource.com/platform/system/ca-certificates"
    repo_dir = os.path.join(config.current_path, "ca-certificates")
    
    if os.path.exists(repo_dir):
        try:
            os.chdir(repo_dir)
            subprocess.run(["git", "pull"], check=True)
            print("Repository updated successfully.")
        except subprocess.CalledProcessError as e:
            print(f"An error occurred while updating the repository: {e}")
        except Exception as e:
            print(f"An unexpected error occurred during the update: {e}")
        finally:
            os.chdir(config.current_path)
    else:
        try:
            subprocess.run(["git", "clone", repo_url, repo_dir], check=True)
            print("Repository cloned successfully.")
        except subprocess.CalledProcessError as e:
            print(f"An error occurred while cloning the repository: {e}")
        except Exception as e:
            print(f"An unexpected error occurred during cloning: {e}")


def diff_root_stores(device, baseline):
    
    clone_git_repo()
    
    cert_repo = os.path.join(config.current_path,"ca-certificates")
    checkout_tag(cert_repo, baseline)
    cert_directory = os.path.join(cert_repo, "files")
    base_certs_info = extract_certificates_info(cert_directory)
    output_baseline = os.path.join(config.current_path, "decompilations", "root_certs", "baseline")
    output_path_baseline = os.path.join(output_baseline, f"{baseline}.csv")
    save_certificates_to_csv(base_certs_info, output_path_baseline)
    
    
    oem_certs_info = find_oem_certs(device)
    output_path_oem = os.path.join(config.current_path, "decompilations", "root_certs", "oem",os.path.basename(device)+'.csv')
    save_certificates_to_csv(oem_certs_info, output_path_oem)
    
    baseline_cert_only, oem_cert_only = find_unique_certs(output_path_baseline, output_path_oem)
    output_path = os.path.join(config.current_path,'diffing_results',os.path.basename(device),'cert_diffing.json')
    save_cert_diffs(baseline_cert_only, oem_cert_only,output_path)