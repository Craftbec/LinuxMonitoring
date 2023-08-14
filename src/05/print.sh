#! /bin/bash

path_folders=($five_folder_path)
size_folder=($five_folder_size)

path_f=($ten_files_p)
size_f=($ten_files_s)
type_f=($ten_files_t)

path_exe_f=($ten_exe_files_path)
size_exe_f=($ten_exe_files_size)
has_exe_f=($ten_exe_files_has)

echo "Total number of folders (including all nested ones) = $Number_of_folders"
echo "TOP 5 folders of maximum size arranged in descending order (path and size):"
for (( i=0; i<5; i++)); do
    if [[ -n ${path_folders[i]} ]]; then
        printf "$((i+1))"" - "
        printf "${path_folders[i]}, "
        printf "${size_folder[i]}\n"
    fi
done
echo "Total number of files = $Number_of_files"
echo "Number of:"
echo "Configuration files (with the .conf extension) = $Configuration"
echo "Text files = $Text_files"
echo "Executable files = $Executable_files"
echo "Log files (with the extension .log)  = $Log_files"
echo "Archive files = $Archive_files"
echo "Symbolic links = $Symbolic_links"
echo "TOP 10 files of maximum size arranged in descending order (path, size and type):"
for (( i=0; i<10; i++)); do
    if [[ -n ${path_f[i]} ]]; then
        printf "$((i+1))"" - "
        printf "${path_f[i]}, "
        printf "${size_f[i]}, "
        printf "${type_f[i]}\n"
    fi
done
echo "TOP 10 executable files of the maximum size arranged in descending order (path, size and MD5 hash of file):"
for (( i=0; i<10; i++)); do
    if [[ -n ${path_exe_f[i]} ]]; then
        printf "$((i+1))"" - "
        printf "${path_exe_f[i]}, "
        printf "${size_exe_f[i]}, "
        printf "${has_exe_f[i]}\n"
    fi
done
export end=$(date +%s)
echo "Script execution time (in seconds) = "$(($end - $start))

