# Nmap Scan Automation Script

## Overview

This Bash script provides an interactive interface to perform various Nmap scans on a specified target. Users can choose from a range of scan types, including Ping Scan, TCP SYN Scan, UDP Scan, and more. The results are saved in a file named \`<target>_scan.txt\`, facilitating easy review and analysis.

## Features

- **Interactive Menu**: Prompts users to select the desired scan type.
- **Multiple Scan Options**: Supports various Nmap scan types.
- **Result Storage**: Saves scan results in a clearly named text file.
- **Root Privilege Handling**: Some scans require elevated permissions; the script prompts accordingly.

## Requirements

- **Nmap**: Ensure Nmap is installed on your system.
- **Root Privileges**: Some scans require root access (e.g., SYN Scan, OS Detection).
- **Bash Shell**: The script is designed for Bash environments.

## Installation

Clone the repository:

```bash
git clone https://github.com/yourusername/nmap-scan-automation.git
cd nmap-scan-automation
```

Make the script executable:

```bash
chmod +x nmap_scan.sh
```

## Usage

Run the script with the target hostname or IP address as an argument:

```bash
./nmap_scan.sh <target>
```

Replace \`<target>\` with the desired hostname or IP address.

### Example:

```bash
./nmap_scan.sh example.com
```

The script will prompt you to select a scan type and then execute the chosen scan, saving the results in \`example.com_scan.txt\`.

## Scan Options

Upon execution, the script presents the following scan options:

1. **Ping Scan (Host Discovery)**: Identifies live hosts without scanning ports.
2. **TCP SYN Scan (Stealth)**: Performs a stealth scan to identify open ports.
3. **TCP Connect Scan**: Completes the TCP handshake to identify open ports.
4. **UDP Scan**: Identifies open UDP ports.
5. **Service Version Detection**: Determines service versions on open ports.
6. **OS Detection**: Attempts to determine the operating system of the target.
7. **Aggressive Scan (All-in-One)**: Combines multiple scans for detailed information.
8. **Exit**: Exits the script.

## Example Output

```bash
Performing TCP SYN Scan...
Starting Nmap 7.91 ( https://nmap.org ) at 2025-05-10 22:42 IST
Nmap scan report for example.com (93.184.216.34)
Host is up (0.10s latency).
Not shown: 998 closed ports
PORT   STATE SERVICE
22/tcp open  ssh
80/tcp open  http
443/tcp open  https
```

## Contributing

Contributions are welcome! To contribute:

1. Fork the repository.
2. Create a new branch (\`git checkout -b feature-name\`).
3. Make your changes.
4. Commit your changes (\`git commit -am 'Add new feature'\`).
5. Push to the branch (\`git push origin feature-name\`).
6. Create a new Pull Request.

Please ensure your code adheres to the existing style and includes appropriate tests.
