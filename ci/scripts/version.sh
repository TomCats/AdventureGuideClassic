#!/bin/bash
set -x
set -euo pipefail

toc_file=$(find "$(pwd)" -name "*.toc" | head -n 1)
pre_release=false
pre_release_type=""
commit_hash=$(git rev-parse --short HEAD)

increment_version() {
    local version=$1
    local part=$2

    IFS='.' read -r major minor patch <<< "$version"

    case $part in
	major)
	     ((major++))
	    minor=0
	    patch=0
	    ;;
	minor)
	    ((minor++))
	    patch=0
	    ;;
	patch)
	    ((patch++))
	    ;;
    esac

    echo "$major.$minor.$patch"
}


get_version_from_toc() {
    awk -F': ' '/^## Version:/ {print $2}' "$toc_file"
}

update_toc_version() {
    local new_version=$1
    sed -i.bak "s/^## Version:.*/## Version: $new_version/" "$toc_file"
    echo "Updated $toc_file with new version: $new_version"
}

commit_message=$(git log -1 --pretty=%B)

if [[ $commit_message == *"BREAKING CHANGE:"* ]]; then
    version_type="major"
elif [[ $commit_message == *"feat:"* ]]; then
    version_type="minor"
elif [[ $commit_message == *"fix:"* ]] || [[ $commit_message == *"Fix"* ]]; then
    version_type="patch"
else
    echo "No version increment detected in commit message."
    exit 1
fi

if [[ $1 == "alpha" || $1 == "beta" ]]; then
    pre_release="true"
    pre_release_type=$1
fi

current_version=$(get_version_from_toc)
if [[ -z "$current_version" ]]; then
    echo "No version found in .toc file."
    exit 1
fi

new_version=$(increment_version "$current_version" $version_type)

if [[ $pre_release == "true" ]]; then
    new_version="$new_version-$pre_release_type.$commit_hash"
fi

update_toc_version "$new_version"

# This script is used to retrieve the version from the .toc file and increment it correctly based on the commit message.
# Commit message - fix: Adds a patch version to the project - 1.0.0 -> 1.0.1
# Commit message - feat: Adds a minor version to the project - 1.0.0 -> 1.1.0
# Commit message - BREAKING CHANGE: Adds a major version to the project - 1.0.0 -> 2.0.0
#
# The script will also update the .toc file with the new version number.
# The script will also create a new tag with the new version number.
# The script will also push the new tag to the remote repository.
# This script will allow an additional argument to be passed to the script to specify if a pre-release version should be created.
# Pre-release tags will be created with the following format: 1.0.0-alpha.<commit_hash> or 1.0.0-beta.<commit_hash>
# The script will also update the .toc file with the new pre-release version number.
# Give the options to be able to commit pre-release version to the remote repository.
# The script will also push the new pre-release tag to the remote repository if a argument is passed to the script.

