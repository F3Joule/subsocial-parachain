#!/bin/bash

# Find all .go files and process them
find . -type f -name '*.rs' -print0 | while IFS= read -r -d $'\0' file; do
    addlicense -f .maintain/license-header "$file"
done
