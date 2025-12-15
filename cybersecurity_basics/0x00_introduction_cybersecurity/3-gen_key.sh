#!/bin/bash

# Script to generate an RSA SSH key pair using OpenSSH

# Set default key file name
KEY_FILE="$HOME/.ssh/id_rsa"

# Check if ssh-keygen exists
if ! command -v ssh-keygen &> /dev/null
then
    echo "ssh-keygen could not be found. Please install OpenSSH."
    exit 1
fi

# Prompt for a custom filename (optional)
read -p "Enter the file path to save the key [$KEY_FILE]: " INPUT_FILE
KEY_FILE=${INPUT_FILE:-$KEY_FILE}

# Generate the RSA key pair with 4096 bits
ssh-keygen -t rsa -b 4096 -f "$KEY_FILE" -C "generated-key" -N ""

# Confirm success
if [ $? -eq 0 ]; then
    echo "RSA SSH key pair generated successfully!"
    echo "Private key: $KEY_FILE"
    echo "Public key: ${KEY_FILE}.pub"
else
    echo "Failed to generate SSH key pair."
fi
