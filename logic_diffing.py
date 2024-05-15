import os
import ssdeep
import re
import difflib

def parse_smali_file(file_path):
    with open(file_path, 'r') as file:
        lines = file.readlines()
        # Remove lines starting with '.' or '#'
        lines = remove_lines_with_prefix(lines, ('#','.prologue','nop','.prologue'))
        inst = [re.sub(r'v\d+', 'variable',element) for element in lines]
        inst = [re.sub(r'p\d+', 'parmeter', element) for element in inst]
        inst = [re.sub(r'line \d+', 'line_number',element) for element in inst]

        return inst


def remove_lines_with_prefix(lines, prefixes):
    return [line for line in lines if not line.strip().startswith(prefixes)]


def get_function_name(smali_function):
    func_name = smali_function.split()[-1]
    return func_name

def get_function_content(smali_function):
    return smali_function[1:-1]

def get_smali_function_similarity(smali_function1, smali_function2):
    edit_distance = ssdeep.compare(ssdeep.hash(smali_function1), ssdeep.hash(smali_function2))
    
    return edit_distance


def get_function_content(smali_function):
    lines = smali_function.splitlines()
    start_line_index = None
    end_line_index = None

    for i, line in enumerate(lines):
        if line.strip().startswith(".method"):
            start_line_index = i + 1
        elif line.strip() == ".end method":
            end_line_index = i
            break

    if start_line_index is not None and end_line_index is not None:
        return "\n".join(lines[start_line_index:end_line_index])
    else:
        return None
    
    
def check_method_existence(jsse_path,oem_dir,line_str):

    row_return = []
    status = ''
    if (';->' in line_str):
        delimiters = r', L|, \[L'
        split1 = re.split(delimiters, line_str,1)[1]
        split2 = split1.split(';->')[0]
        split3 = split1.split(';->')[1]

        check_class_file = oem_dir+'/'+split2+'.smali'
        if(os.path.exists(check_class_file)):
            parsed_class_file = parse_smali_file(check_class_file)
            all_methods = []
            for line in parsed_class_file:
                if line.startswith(".method"):
                    all_methods.append(get_function_name(line))

            if split3 in all_methods:
                status = "Exist"
#                 print("Could've called", split3, "from", split2)
                row_return = [split2, split3]
                return status
        else:
            return None



def get_logic_diff(device, aosp_path,jsse_path,smali_functions1, smali_functions2,oem_dir):

    braching_controlFlow = ('if-','goto','switch','return-','sparse-switch')

    arithmetic_dataManipulation = ('add','sub','mul','div','move','move/','mov/','move-','const','const-')

    method_invocation = ('invoke-','execute-inline')

    exception_handeling = ('try-catch','throw')

    object_manipulation = ('new-instance','check-cast')

    array_management = ('array-')

    synchronization = ('monitor-')

    final_result = {'AOSP_package_path':aosp_path,'OEM_package_path':jsse_path,'diff_results':''}
    
    diff_results_all = []
    added_blocks = []
    removed_blocks = []
    current_added_block = []
    current_removed_block = []

    for function_name, smali_function1 in smali_functions1.items():
        if function_name in smali_functions2:
            
            braching_controlFlow_added = []
            arithmetic_dataManipulation_added = []
            method_invocation_added = []
            exception_handeling_added = []
            object_manipulation_added = []
            array_management_added = []
            synchronization_added = []


            braching_controlFlow_removed = []
            arithmetic_dataManipulation_removed = []
            method_invocation_removed = []
            exception_handeling_removed = []
            object_manipulation_removed = []
            array_management_removed = []
            synchronization_removed = []
            
            diff_results = {
                "method":function_name,
                "similarity" : '',
                "added":
                {
                    "braching_controlFlow": [],
                    "arithmetic_dataManipulation": [],
                    "method_invocation": [],
                    "exception_handeling": [],
                    "object_manipulation": [],
                    "array_management": [],
                    "synchronization": []
                },
                "removed":
                {
                    "braching_controlFlow": [],
                    "arithmetic_dataManipulation": [],
                    "method_invocation": [],
                    "exception_handeling": [],
                    "object_manipulation": [],
                    "array_management": [],
                    "synchronization": []
                }
                
            }
            
            

            smali_function2 = smali_functions2[function_name]

            function_content1 = get_function_content(smali_function1)
            function_content2 = get_function_content(smali_function2)
            
            
            function_similarity = get_smali_function_similarity(smali_function1, smali_function2)
            
            if (function_similarity != 100):
                if function_content1 is not None and function_content2 is not None:
                    diff = difflib.unified_diff(function_content1.splitlines(), function_content2.splitlines(), n=0)
                    for line in diff:
                        if line.startswith('+ '):

                            line_content = line[1:].strip()
                            if line_content and not line_content.startswith((':','.')):
                                current_added_block.append(line_content)
                                if (line_content.startswith(braching_controlFlow)):
                                    braching_controlFlow_added.append(line_content)
                                
                                
                                if (line_content.startswith(arithmetic_dataManipulation)):
                                    arithmetic_dataManipulation_added.append(line_content)
                                    
                                if (line_content.startswith(method_invocation)):
                                    method_invocation_added.append(line_content)
                                    
                                if (line_content.startswith(exception_handeling)):
                                    exception_handeling_added.append(line_content)
                                    
                                    
                                if (line_content.startswith(object_manipulation)):
                                    object_manipulation_added.append(line_content)
                                    
                                if (line_content.startswith(array_management)):
                                    array_management_added.append(line_content)
                                    
                                if (line_content.startswith(synchronization)):
                                    synchronization_added.append(line_content)

                        if line.startswith('- '):
                            line_content = line[1:].strip()
                            if line_content and not line_content.startswith((':','.')):
                                current_removed_block.append(line_content)
                    
                                if (line_content.startswith(braching_controlFlow)):
                                    braching_controlFlow_removed.append(line_content)
                                
                                
                                if (line_content.startswith(arithmetic_dataManipulation)):
                                    arithmetic_dataManipulation_removed.append(line_content)
                                   

                                if (line_content.startswith(method_invocation)):
                                    check_status = check_method_existence(device,oem_dir,line_content)

                                    if (check_status == 'Exist'):
                                        method_invocation_removed.append(line_content)
                                    
                                if (line_content.startswith(exception_handeling)):
                                    exception_handeling_removed.append(line_content)
                                    
                                if (line_content.startswith(object_manipulation)):
                                    object_manipulation_removed.append(line_content)
                                    
                                if (line_content.startswith(array_management)):
                                    array_management_removed.append(line_content)
                                    
                                if (line_content.startswith(synchronization)):
                                    synchronization_removed.append(line_content)

                diff_results['added']['braching_controlFlow'] = braching_controlFlow_added
                diff_results['removed']['braching_controlFlow'] = braching_controlFlow_removed

                diff_results['added']['arithmetic_dataManipulation'] = arithmetic_dataManipulation_added
                diff_results['removed']['arithmetic_dataManipulation'] = arithmetic_dataManipulation_removed

                diff_results['added']['method_invocation'] = method_invocation_added
                diff_results['removed']['method_invocation'] = method_invocation_removed

                diff_results['added']['exception_handeling'] = exception_handeling_added
                diff_results['removed']['exception_handeling'] = exception_handeling_removed


                diff_results['added']['object_manipulation'] = object_manipulation_added
                diff_results['removed']['object_manipulation'] = object_manipulation_removed


                diff_results['added']['array_management'] = array_management_added
                diff_results['removed']['array_management'] = array_management_removed


                diff_results['added']['synchronization'] = synchronization_added
                diff_results['removed']['synchronization'] = synchronization_removed   
                
                     
            else:
                diff_results = {
                "method":function_name,
                "similarity" : 100,
                "added":
                {
                    "braching_controlFlow": [],
                    "arithmetic_dataManipulation": [],
                    "method_invocation": [],
                    "exception_handeling": [],
                    "object_manipulation": [],
                    "array_management": [],
                    "synchronization": []
                },
                "removed":
                {
                    "braching_controlFlow": [],
                    "arithmetic_dataManipulation": [],
                    "method_invocation": [],
                    "exception_handeling": [],
                    "object_manipulation": [],
                    "array_management": [],
                    "synchronization": []
                }
                
            }
                

            diff_results_all.append(diff_results)
        
        else:
            diff_results = {
                "method":function_name,
                "similarity" : 'None',
                "added":"not in OEM",
                "removed": "not in OEM"
            }
            

            diff_results_all.append(diff_results)

        final_result['diff_results'] = diff_results_all

    return final_result

                                    
def logic_diff_entry(base, directory,semantic_diff):
    
    for root, dirs, files in os.walk(base):
        for file in files:
            if file.endswith(".smali"):
                aosp_path = os.path.join(root, file)
                file_name_original = aosp_path.split(base + "/")[-1]
                file_name = file_name_original.replace("/", ".")
                
                oem_path = os.path.join(directory,file_name_original)
                if os.path.exists(oem_path):
                    smali_functions1 = {}
                    smali_functions2 = {}

                    parsed_1 = parse_smali_file(aosp_path)
                    current_function = []
                    function_name = None
                    for line in parsed_1:
                        if line.startswith(".method"):
                            if current_function and function_name:
                                smali_functions1[function_name] = "".join(current_function)
                            current_function = []
                            function_name = get_function_name(line)
                        current_function.append(line)
                    if current_function and function_name:
                        smali_functions1[function_name] = "".join(current_function)


                    parsed_2 = parse_smali_file(oem_path)
                    current_function = []
                    function_name = None
                    for line in parsed_2:
                        if line.startswith(".method"):
                            if current_function and function_name:
                                smali_functions2[function_name] = "".join(current_function)
                            current_function = []
                            function_name = get_function_name(line)
                        current_function.append(line)
                    if current_function and function_name:
                        smali_functions2[function_name] = "".join(current_function)
                        
                        
                    results=get_logic_diff(oem_path, base,file_name_original,smali_functions1, smali_functions2,directory)
                    
                    semantic_diff.append(results) 
                    
    return semantic_diff
