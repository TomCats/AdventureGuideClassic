#!/bin/bash

toc_file=$(find "$(pwd)" -name "*.toc" | head -n 1)

if [ -z "$toc_file" ]; then
    echo -e "\033[31mError: Could not find a .toc file in the current directory or any of its subdirectories.\033[0m"
    exit 1
fi

addon_name=$(awk -F': ' '/^## Title:/{print $2}' "$toc_file")
version=$(awk -F': ' '/^## Version:/{print $2}' "$toc_file")

if [ -z "$addon_name" ] || [ -z "$version" ]; then
    echo -e "\033[31mError: Could not find the addon name or version in the .toc file.\033[0m"
    exit 1
fi

if [ -d "./ci/dist" ]; then
    echo "Removing existing dist directory.."
    rm -r ./ci/dist
fi

echo "Creating 'dist' directory.."
mkdir ./ci/dist

zip_file="ci/dist/${addon_name}-${version}.zip"
echo "Packaging addon into $zip_file.."

zip -r "$zip_file" . -x "*.git*" "dist/*" "ci/*" "README.md" ".vscode/*" ".env*"

if [ $? -eq 0 ]; then
    echo -e "\033[32mSuccessfully packaged addon.\033[0m"
else
    echo -e "\033[31mError: Failed to package addon.\033[0m"
    exit 1
fi

