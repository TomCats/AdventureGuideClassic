#!/bin/bash

if [ -f .env ]; then
    export $(grep -v '^#' .env | xargs)
else
    echo "Error: .env file not found."
    exit 1
fi

toc_file=$(find "$(pwd)" -name "*.toc" | head -n 1)
addon_name=$(awk -F': ' '/^## Title:/ {print $2}' "$toc_file")
version=$(awk -F': ' '/^## Version:/ {print $2}' "$toc_file")
zip_file="ci/dist/${addon_name}-${version}.zip"

local_deploy() {
   echo "Copying $zip_file to $wow_addons_dir.."
   unzip -o "$zip_file" -d "$wow_addons_dir"/"$addon_name"
   echo "Done."
}

if [ "$1" == "local" ] || [ "$1" == "lcl" ]; then
    local_deploy
else
    echo "Error: Invalid argument. Use 'local' or 'lcl' to deploy locally."
    exit 1
fi

