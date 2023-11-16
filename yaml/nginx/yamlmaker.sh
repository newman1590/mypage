#!/bin/bash

output_file="nginx.yaml"

> $output_file

find . -name "*.yaml" | while read -r file; do
    echo "---" >> $output_file
    tail -n 999 "$file" >> $output_file
done

echo "Merged YAML has been saved to $output_file"

