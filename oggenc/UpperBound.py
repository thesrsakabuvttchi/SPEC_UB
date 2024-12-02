import pandas as pd
import re
import subprocess
import os
import argparse
import sys
import json

def get_function_and_line(executable: str, address: str):
    """
    Given an executable and an address, use addr2line to get the function name and line number.

    :param executable: Path to the executable file.
    :param address: Address to look up.
    :return: A tuple containing (function_name, file_name, line_number).
    """
    # Command to run addr2line
    command = ['addr2line', '-f', '-e', executable, address]
    try:
        # Run the command
        result = subprocess.run(command, capture_output=True, text=True, check=True)
        
        # Split the output into lines
        output_lines = result.stdout.strip().splitlines()
        # Check that we have the expected output
        if len(output_lines) == 2:
            function_name = output_lines[0].strip()  # Function name
            source_info = output_lines[1].strip()    # File and line info
            # Extract file name and line number
            match = re.search(r'(.+):([\d,?]+)', source_info)
            if match:
                file_name = match.group(1).split("/")[-1]
                try:
                    line_number = int(match.group(2))
                except Exception:
                    line_number = -1
            else:
                file_name = '??'
                line_number = -1
            return function_name, file_name, line_number
        else:
            raise ValueError("Unexpected output format from addr2line.")
    
    except subprocess.CalledProcessError as e:
        print(f"Error running addr2line: {e}")
        return '??', '??', -1

import json

def parse_json_file(file_path):
    """Parse the JSON file and return the data as a dictionary."""
    with open(file_path, 'r') as file:
        data = json.load(file)
    return data

def check_line_exists(data, filename, line_number):
    """Check if a specific filename and line number pair exists in the data."""
    if filename in data:
        if line_number in data[filename]:
            return True
    return False

# Create the parser
parser = argparse.ArgumentParser(description='Process some input files.')

# Add arguments for file name and data path
parser.add_argument('--path_prefix', type=str, 
                    help='Path of all files, executables',default="./")
parser.add_argument('--file_name', type=str, 
                    help='Name of the input file',default="perf_script.txt")
parser.add_argument('--data_path', type=str, 
                    help='Path to the data directory',default="data/")
parser.add_argument('--json_file', type=str, 
                    help='Path to the json file',default="lines.json")
parser.add_argument('--enable-mergable-analysis', action='store_true', 
                    help='Enable mergable analysis (default: False)')

# Parse the arguments
args = parser.parse_args()

# Check if the required arguments are provided
if not args.file_name or not args.data_path:
    print("Error: Both --file_name and --data_path arguments are required.")
    parser.print_help()  # Display the help message
    sys.exit(1)  # Exit with a status of 1 to indicate an error

# Access the arguments
path_prefix = args.path_prefix

if(path_prefix[-1]!="/"):
    path_prefix+="/"

file_name = path_prefix+args.file_name
data_path = path_prefix+args.data_path
json_file = path_prefix+args.json_file
enable_mergable_data = args.enable_mergable_analysis

# Print the values
print(f'File Name: {file_name}')
print(f'Data Path: {data_path}')

# Define regex pattern to extract the fields from the log
log_pattern = re.compile(r'(?P<program>\S+)[\t ]+(?P<pid>\d+)[\t ]+(?P<time>\d+\.\d+):\s+(?P<count>\d+)\s+(?P<event_type>\S+):\s+(?P<address>\S+)\s+(?P<function>.+)\s+\((?P<module>.+)\)')

# List to store parsed data
parsed_data = []

if not os.path.exists(data_path):
    os.makedirs(data_path)

# Parse the log data
with open(file_name, 'r') as file:
    for line in file:
        line = line.strip()
        match = log_pattern.match(line)
        if match:
            match_dict = match.groupdict()
            # match_dict['count'] = float(match_dict['count'])
            parsed_data.append(match_dict)

# Convert parsed data to pandas DataFrame
df = pd.DataFrame(parsed_data)
df['count'] = df['count'].astype(int)

grouped = df.groupby(['program', 'address'])

function_name_dict = {}
file_name_dict = {}
line_number_dict = {}

# Process each group
for (program, address), group in grouped:
    # Call get_function_and_line
    function_name, file_name, line_number = get_function_and_line(path_prefix+program, address)
    
    # Store the results in the dictionaries
    function_name_dict[(program, address)] = function_name
    file_name_dict[(program, address)] = file_name
    line_number_dict[(program, address)] = line_number

# Map results back to the DataFrame
df['function_name'] = df.set_index(['program', 'address']).index.map(function_name_dict)
df['file_name'] = df.set_index(['program', 'address']).index.map(file_name_dict)
df['line_number'] = df.set_index(['program', 'address']).index.map(line_number_dict)

df = df.drop(["module"],axis=1)

grouped = df.groupby(['file_name', 'line_number'])
captured_data = []
for (file_name, line_number), group in grouped:
    group.to_csv(data_path+"{0}_{1}_data.csv".format(file_name,line_number))
    grouped_second = group.groupby(['event_type'])
    results = {}
    for (event), grp in grouped_second:
        aggregated_df = grp.groupby('event_type').agg({
            'time': 'sum',
            'count': 'sum',
            'pid': 'first',  # Keep the first PID as it will be the same for this example
            'program': 'first',  # Keep the first program name
            'address': 'first',  # Keep the first address
            'function': 'first',  # Keep the first function name
            'function_name': 'first',  # Keep the first function name
            'file_name': 'first',  # Keep the first file name
            'line_number': 'first'  # Keep the first line number
        }).reset_index()
        if(aggregated_df['event_type'].iloc[0]=="br_inst_retired.all_branches:ppp"):
            results['branches'] = int(aggregated_df["count"].iloc[0])
        if(aggregated_df['event_type'].iloc[0]=="br_misp_retired.all_branches:ppp"):
            results['branch-misses'] = int(aggregated_df["count"].iloc[0])
        if(aggregated_df['event_type'].iloc[0]=="br_inst_retired.cond:ppp"):
            results['br_inst_retired.cond'] = int(aggregated_df["count"].iloc[0])
        if(aggregated_df['event_type'].iloc[0]=="br_misp_retired.cond:ppp"):
            results['conditional-branch-misses'] = int(aggregated_df["count"].iloc[0])
        if(aggregated_df['event_type'].iloc[0]=="inst_retired.any_p:ppp"):
            results['instructions'] = int(aggregated_df["count"].iloc[0])
    try:
        miss_rate = 100*results.get('branch-misses')/results.get('branches')
        captured_data.append((file_name,line_number,results['branch-misses'],results["conditional-branch-misses"],results['br_inst_retired.cond'],results['branches'],results['instructions'],round(miss_rate,2),group.shape[0]))
    except Exception:
        miss_rate = 0
        captured_data.append((file_name,line_number,results.get('branch-misses'),results.get("conditional-branch-misses"),results.get('br_inst_retired.cond'),results.get('branches'),results.get('instructions'),round(miss_rate,2),group.shape[0]))

df = pd.DataFrame(captured_data, columns=['File', 'line_number', "branch_misses", "conditional_branch_misses","conditional_branches", "total_branches","Instructions",'Misprediction rate', 'Sample_number'])
df = df.sort_values(by='Sample_number', ascending=False)

df['MKPI'] = df['branch_misses']*1000/df['total_branches']

print(df)

df = df.fillna(0)           #Replace any NAN's with 0's

df_library = df[df['File'] == '??'].sum()
df_init = df[df['File'] == 'init.h'].sum() 
df_raw  = df.sum()

df = df[df['File'] != '??'] #Remove any library function calls
df = df[df['File'] != 'init.h']

if(enable_mergable_data):
    mergable_line_data = parse_json_file(json_file)
    print(mergable_line_data)

    mergable_df = df[df.apply(lambda row: check_line_exists(mergable_line_data, row['File'], row['line_number']) if isinstance(row['line_number'], int) else False, axis=1)]

    df =df.dropna()
    mergable_df = mergable_df.dropna()

    branches_df = df.sum()
    mergable_df = mergable_df.sum()

    conditional_br_ratio = round(100*branches_df["conditional_branches"] / branches_df["total_branches"],2)
    conditional_removable_miss = round(100*mergable_df["conditional_branches"] / branches_df["conditional_branches"],2)
    total_removable_miss = round(100*mergable_df["conditional_branches"] / branches_df["total_branches"],2)
    condition_branch_miss = round(100*branches_df["conditional_branch_misses"]/branches_df["branch_misses"],2)
    miss_ratio = round(100*mergable_df["branch_misses"]/branches_df["branch_misses"],2)
    conditional_miss_ratio = round(100*mergable_df["conditional_branch_misses"]/branches_df["conditional_branch_misses"],2)
    mkpi = round(branches_df["conditional_branch_misses"]*1000/branches_df["Instructions"],2)
    br_lib = round(100*df_library['total_branches']/df_raw['total_branches'],2)
    br_init = round(100*df_init['total_branches']/df_raw['total_branches'],2)
    miss_lib = round(100*df_library['branch_misses']/df_raw['branch_misses'],2)
    miss_init = round(100*df_init['branch_misses']/df_raw['branch_misses'],2)
    cbr_lib = round(100*df_library['conditional_branches']/df_raw['conditional_branches'],2)

    print("_"*80)
    print()
    print("{0} % of branches are conditional".format(conditional_br_ratio))
    print("{0} % of conditional branches are removable".format(conditional_removable_miss))
    print("{0} % of total branches are removable".format(total_removable_miss))
    print("{0} % of total misses are conditional".format(condition_branch_miss))
    print("{0} % of Misses can be eliminated".format(miss_ratio))
    print("{0} % of Conditional misses can be eliminated".format(conditional_miss_ratio))  
    print("MPKI {0}".format(mkpi))  
    print("{0} % of Branches are in libraries".format(br_lib))  
    print("{0} % of Branches are in Initialization".format(br_init))
    print("{0} % of Conditional Branches are in libraries".format(cbr_lib))    
    print("{0} % of Misses are in libraries".format(miss_lib))  
    print("{0} % of Misses are in Initialization".format(miss_init))  
    print("_"*80)
    print()

df['branch_misses'] = df['branch_misses'].astype(int)
df['conditional_branches'] = df['conditional_branches'].astype(int)
df['total_branches'] = df['total_branches'].astype(int)

print(df.to_string(index=False))
df.to_csv("{0}.csv".format(file_name.split(".")[0]))