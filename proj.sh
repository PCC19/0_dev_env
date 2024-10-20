#!/bin/bash

# Check if the correct number of arguments is provided
if [ "$#" -ne 1 ]; then
    echo "Usage: $0 <directory_name>"
    exit 1
fi

devenv='/Users/dev/PROJETOS/0_dev_env'
# Create the main directory and subdirectories 'src' and 'data'
mkdir -p "$1/src" "$1/data"
cd $1
cp $devenv/Makefile .
cp $devenv/dockerfile .
cp $devenv/requirements.txt .
cp $devenv/create.sh .


echo "Directory structure created: $1/src and $1/data"
