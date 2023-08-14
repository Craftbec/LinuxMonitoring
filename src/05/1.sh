#! /bin/bash

export Number_of_folders="$(find $path -type d | wc -l)"
export five_folder_path="$(du -h $path | sort -rh | head -5 | awk '{print$2}')"
export five_folder_size="$(du -h $path | sort -rh | head -5 | awk '{print$1}')"
export Number_of_files="$(find $path -type f | wc -l)"
export Configuration="$(find $path -type f -name "*.conf" | wc -l)"
export Text_files="$(find $path -type f -name "*.txt" | wc -l)"
export Executable_files="$(find $path -type f -executable | wc -l)"
export Log_files="$(find $path -type f -name "*.log" | wc -l)"
export Archive_files="$(($(find $path -type f -name "*.zip" | wc -l) + $(find $path -type f -name "*.tar" | wc -l) + $(find $path -type f -name "*.gz" | wc -l) + $(find $path -type f -name "*.rar" | wc -l) ))"
export Symbolic_links="$(find $path -type l | wc -l)"
export ten_files_p="$(find $path -type f -exec du -h {} + | sort -rh | head -10 | awk '{print$2}')"
export ten_files_s="$(find $path -type f -exec du -h {} + | sort -rh | head -10 | awk '{print$1}')"
export ten_files_t="$(find $path -type f -exec du -h {} + | sort -rh | head -10 | awk -F'.' '{print$NF}')"
export ten_exe_files_path="$(find $path -type f -executable -exec du -h {} + | sort -rh | head -10 | awk '{print$2}')"
export ten_exe_files_size="$(find $path -type f -executable -exec du -h {} + | sort -rh | head -10 | awk '{print$1}')"
export ten_exe_files_has="$(find $path -type f -executable -exec md5sum {} + | sort -hr | head -10 | awk '{print$1}')"
./print.sh

