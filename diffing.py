import os
import json
from colorama import Fore

import config
import extract_oem_components as oem_extraction
import function_diffing as fdiffing
import logic_diffing as ldiffing


def save_results_as_json(results, filename):
    with open(filename, 'w') as file:
        json.dump(results, file, indent=4)

        

def diff_network_components(device,baseline):

    results_directory = os.path.join(config.current_path, 'diffing_results', os.path.basename(device))
    os.makedirs(results_directory, exist_ok=True)

    # JSSE Diffing
    print(Fore.LIGHTRED_EX + "\nJSSE extraction and diffing")
    print(Fore.RESET)
    decompiled_jsse = oem_extraction.extract_jsse(device)
    if decompiled_jsse:
        decompiled_baseline_jsse = os.path.join(config.current_path, 'decompilations/jsse/baseline', baseline)
        function_results = fdiffing.diff_function_level(decompiled_baseline_jsse, decompiled_jsse)
        save_results_as_json(function_results, os.path.join(results_directory, "jsse_diff.json"))
        jsse_semantic_diff = []
        semantic_result = ldiffing.logic_diff_entry(decompiled_baseline_jsse, decompiled_jsse, jsse_semantic_diff)
        save_results_as_json(semantic_result, os.path.join(results_directory, "jsse_semantic_diff.json"))
        

    # Conscrypt Diffing
    print(Fore.LIGHTRED_EX + "\nConscrypt extraction and diffing")
    print(Fore.RESET)
    decompiled_conscrypt = oem_extraction.extract_conscrypt(device)
    if decompiled_conscrypt:
        decompiled_baseline_conscrypt = os.path.join(config.current_path, 'decompilations/jce/conscrypt/baseline', baseline)
        function_results = fdiffing.diff_function_level(decompiled_baseline_conscrypt, decompiled_conscrypt)
        save_results_as_json(function_results, os.path.join(results_directory, "conscrypt_diff.json"))
        conscrypt_semantic_diff = []
        semantic_result = ldiffing.logic_diff_entry(decompiled_baseline_conscrypt, decompiled_conscrypt, conscrypt_semantic_diff)
        save_results_as_json(semantic_result, os.path.join(results_directory, "conscrypt_semantic_diff.json"))

    # OkHttp Diffing
    print(Fore.LIGHTRED_EX + "\nOkHttp extraction and diffing")
    print(Fore.RESET)
    decompiled_okhttp = oem_extraction.extract_okhttp(device)
    if decompiled_okhttp:
        decompiled_baseline_okhttp = os.path.join(config.current_path, 'decompilations/jce/okhttp/baseline', baseline)
        function_results = fdiffing.diff_function_level(decompiled_baseline_okhttp, decompiled_okhttp)
        save_results_as_json(function_results, os.path.join(results_directory, "okhttp_diff.json"))
        okhttp_semantic_diff = []
        semantic_result = ldiffing.logic_diff_entry(decompiled_baseline_okhttp, decompiled_okhttp, okhttp_semantic_diff)
        save_results_as_json(semantic_result, os.path.join(results_directory, "okhttp_semantic_diff.json"))

    # BouncyCastle Diffing
    print(Fore.LIGHTRED_EX + "\nBouncy Castle extraction and diffing")
    print(Fore.RESET)
    decompiled_bouncy = oem_extraction.extract_bouncy(device)
    if decompiled_bouncy:
        decompiled_baseline_bouncy = os.path.join(config.current_path, 'decompilations/jce/bouncycastle/baseline', baseline)
        function_results = fdiffing.diff_function_level(decompiled_baseline_bouncy, decompiled_bouncy)
        save_results_as_json(function_results, os.path.join(results_directory, "bouncy_diff.json"))
        bouncy_semantic_diff = []
        semantic_result = ldiffing.logic_diff_entry(decompiled_baseline_bouncy, decompiled_bouncy, bouncy_semantic_diff)
        save_results_as_json(semantic_result, os.path.join(results_directory, "bouncy_semantic_diff.json"))
        
    