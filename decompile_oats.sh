#!/bin/bash

file_boot=$1

target_folder=$2

framework="${file_boot%/*}"

current_path=$(pwd)

full_jar_path="$current_path/tools/smali/baksmali/build/libs/baksmali-3.0.2-0367ceb4-dirty-fat.jar"

java -jar $full_jar_path dis $file_boot -b $file_boot -o "$target_folder"

if [ $? -ne 0 ]; then

    java -jar $full_jar_path dis $file_boot -d $framework -o "$target_folder"

    if [ $? -ne 0 ]; then
        echo "Error during baksmali disassembly for $file_boot"
    else
        echo "Baksmali disassembly successful for $file_boot"
    fi
    
else
    echo "Baksmali disassembly successful for $file_boot"
fi