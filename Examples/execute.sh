#!/bin/bash

# This command will be used to execute all the bash scripts we write in this folder

while getopts ":f:" opt; do
  case $opt in
    f) FILE=$OPTARG ;;
    \?) echo "Invalid option: -$OPTARG" >&2 ;;
  esac
done

if [ -z "$FILE" ]; then
  echo "No file passed" >&2
  exit 1
fi

if [ -f "$FILE" ]; then
  chmod +x "$FILE" && ./"$FILE"
else
  echo "File not found: $FILE" >&2
  exit 1
fi
