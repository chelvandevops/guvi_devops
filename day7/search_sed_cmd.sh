#!/bin/bash
#Define the file name
file="mysampletext.txt"
awk '/welcome/ && NR >=5 {print NR}' "$file" | sed 's/.*/&s\/give\/learning\/g/' | sed -f - "$file" > output_new_file.txt
