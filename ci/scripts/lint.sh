#!/bin/bash

# Automatically detect the addon directory by finding the .toc file
ADDON_DIR=$(dirname $(find . -name "*.toc" | head -n 1))

if [ -z "$ADDON_DIR" ]; then
    echo -e "\033[31mError: Could not find a .toc file. Please make sure you're in the root of your addon project.\033[0m"
    exit 1
fi

# Check if luacheck is installed
if ! command -v luacheck &> /dev/null
then
    echo -e "\033[31mError: luacheck is not installed. Please install luacheck manually.\033[0m"
    exit 1
fi

# Run luacheck with quiet mode and capture its output
echo "Running Lua lint checks on directory: $(pwd)"
#LUACHECK_OUTPUT=$(luacheck $ADDON_DIR --std max --quiet -qq --formatter plain 2>&1)
luacheck $ADDON_DIR --std max --codes --ignore 111 --ignore 112 --ignore 113 --ignore 212 --ignore 631 --ignore 432 --ignore 211

# Parse the final line of luacheck output to check for errors and warnings
#TOTAL_LINE=$(echo "$LUACHECK_OUTPUT" | grep "Total:")

# Extract the number of warnings and errors using awk
WARNINGS=$(echo "$TOTAL_LINE" | awk '{print $2}')
ERRORS=$(echo "$TOTAL_LINE" | awk '{print $5}')

# Display luacheck output
echo "$LUACHECK_OUTPUT"

# Check if there are errors, and if so, exit with an error message
if [[ "$ERRORS" -gt 0 ]]; then
    echo -e "\033[31mLua linting found $ERRORS errors. Please fix them.\033[0m"
    exit 1
else
    echo "Lua linting passed with $WARNINGS warnings and $ERRORS errors."
fi
