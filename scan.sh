#!/bin/bash

# Check if a target is provided
if [ -z "$1" ]; then
  echo "Usage: $0 <target>"
  exit 1
fi

# Define the target and output file
TARGET="$1"
OUTPUT_DIR="results"
OUTPUT_FILE="${OUTPUT_DIR}/${TARGET}_scan.txt"

# Display scan options
echo "Select the type of scan to perform:"
echo "1) Ping Scan (Host Discovery)"
echo "2) TCP SYN Scan (Stealth)"
echo "3) TCP Connect Scan"
echo "4) UDP Scan"
echo "5) Service Version Detection"
echo "6) OS Detection"
echo "7) Aggressive Scan (All-in-One)"
echo "8) Exit"
read -p "Enter your choice (1-8): " SCAN_CHOICE

# Perform the selected scan
case $SCAN_CHOICE in
  1)
    echo "Performing Ping Scan..."
    nmap -sn "$TARGET" -oN "$OUTPUT_FILE"
    ;;
  2)
    echo "Performing TCP SYN Scan..."
    sudo nmap -sS "$TARGET" -oN "$OUTPUT_FILE"
    ;;
  3)
    echo "Performing TCP Connect Scan..."
    sudo nmap -sT "$TARGET" -oN "$OUTPUT_FILE"
    ;;
  4)
    echo "Performing UDP Scan..."
    sudo nmap -sU "$TARGET" -oN "$OUTPUT_FILE"
    ;;
  5)
    echo "Performing Service Version Detection..."
    sudo nmap -sV "$TARGET" -oN "$OUTPUT_FILE"
    ;;
  6)
    echo "Performing OS Detection..."
    sudo nmap -O "$TARGET" -oN "$OUTPUT_FILE"
    ;;
  7)
    echo "Performing Aggressive Scan..."
    sudo nmap -A "$TARGET" -oN "$OUTPUT_FILE"
    ;;
  8)
    echo "Exiting script."
    exit 0
    ;;
  *)
    echo "Invalid choice. Exiting script."
    exit 1
    ;;
esac

# Check if the scan was successful
if [ $? -eq 0 ]; then
  echo "Scan completed successfully. Results saved to $OUTPUT_FILE."
else
  echo "Scan failed."
fi

