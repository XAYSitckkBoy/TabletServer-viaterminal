#!/bin/bash

# Check if the user has sufficient privileges
if [ "$(id -u)" != "0" ]; then
    echo "This script must be run as root" 1>&2
    exit 1
fi

# Prompt the user for confirmation
read -p "Are you sure you want to restart the device? (y/n): " choice
case "$choice" in
  y|Y )
    echo "Restarting the device..."
    sleep 3
    reboot
    ;;
  n|N )
    echo "Restart cancelled"
    ;;
  * )
    echo "Invalid choice. Please enter y or n."
    ;;
esac




# commands to type --> chmod +x restart_device.sh 
# auto save restart_device.sh
# auto restart_device.sh
