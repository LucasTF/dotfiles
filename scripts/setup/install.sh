#!/usr/bin/bash

# Color definitions
GREEN='\033[0;32m'
NC='\033[0m' # No Color

# Check if package is installed
is_package_present() {
    if pacman -Qs "^$1$" > /dev/null 2>&1; then
        return 0
    else
        return 1
    fi
}

# Check if the 'banner' package is installed
if is_package_present "git"; then
    echo -e "${GREEN}Installed${NC}"
    exit 0
else
    echo -e "Not Installed"
    exit 1
fi