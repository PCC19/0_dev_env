#!/bin/bash

# Check if the correct number of arguments is provided
if [ "$#" -ne 1 ]; then
    echo "Usage: $0 <directory_name>"
    exit 1
fi

devenv='/Users/dev/PROJETOS/0_dev_env'
path='/Users/dev/PROJETOS'
# Create the main directory and subdirectories 'src' and 'data'
mkdir -p "$path/$1/src" "$path/$1/data"
cd $path/$1
cp $devenv/Makefile .
cp $devenv/dockerfile .
cp $devenv/requirements.txt .

echo "Directory structure created: $path/$1/src and $path/$1/data"
cd $path/$1
