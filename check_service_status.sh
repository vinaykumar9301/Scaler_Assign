#!/bin/bash

# Check if service name is provided
if [ $# -ne 1 ]; then
    echo "Usage: $0 sshd"
    exit 1
fi

# Check if the service is running
if systemctl is-active --quiet "$1"; then
    echo "$1 is running."
else
    echo "$1 is not running."
fi

