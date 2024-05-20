#!/bin/bash

# Get battery status using acpi command
battery_info=$(acpi)

# Extract battery percentage
battery_percentage=$(echo "$battery_info" | grep -oP '\d+%' | tr -d '%')

# Extract battery status (Charging/Discharging/Full)
battery_status=$(echo "$battery_info" | grep -oP '(?<=: )\w+(?=.+,)')

# Print battery status
echo "Battery Percentage: $battery_percentage%"
echo "Battery Status: $battery_status"
