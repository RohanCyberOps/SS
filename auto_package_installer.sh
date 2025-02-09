#!/bin/bash
PACKAGES=("vim" "curl" "wget" "git")
for package in "${PACKAGES[@]}"; do
    sudo apt install -y $package
done
echo "All packages installed successfully!"
