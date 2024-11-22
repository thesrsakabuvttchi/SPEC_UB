import re
from collections import defaultdict

def extract_merged_functions(log_file):
    merged_functions = defaultdict(int)
    current_function = None

    # Regex patterns to match function names and "CFMSE merge applied"
    function_pattern = re.compile(r"DEBUG\[cfmse\] : Processing function : (\w+)")
    merge_pattern = re.compile(r"CFMSE merge applied to block")

    with open(log_file, 'r') as file:
        for line in file:
            function_match = function_pattern.search(line)
            merge_match = merge_pattern.search(line)

            # If a new function is being processed, update the current function
            if function_match:
                current_function = function_match.group(1)

            # If a merge is applied, increment the count for the current function
            if merge_match and current_function:
                merged_functions[current_function] += 1

    return merged_functions

def main():
    log_file = 'cfmse_log.txt'  # Change to your actual log file path
    merged_functions = extract_merged_functions(log_file)
    
    print("Functions with successful CFMSE merges and their counts:")
    for func, count in merged_functions.items():
        print(f"{func}: {count}")

if __name__ == "__main__":
    main()
