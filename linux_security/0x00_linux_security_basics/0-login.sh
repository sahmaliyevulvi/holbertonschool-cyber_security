#!/bin/bash

# Check if the script is run as root or via sudo
if [ "$EUID" -ne 0 ]; then
    echo "Please run this script as root or with sudo."
    exit 1
fi

# Display the last 5 login sessions
last -n 5
