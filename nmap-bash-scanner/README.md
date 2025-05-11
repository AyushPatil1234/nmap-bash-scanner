<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Nmap Scan Automation Script</title>
    <style>
        body {
            font-family: Arial, sans-serif;
            line-height: 1.6;
            margin: 20px;
            background-color: #f4f4f4;
            color: #333;
        }
        h1, h2 {
            color: #333;
        }
        code {
            background-color: #f5f5f5;
            padding: 2px 4px;
            border-radius: 4px;
        }
        pre {
            background-color: #f5f5f5;
            padding: 10px;
            border-radius: 4px;
            overflow-x: auto;
        }
        ul {
            list-style-type: disc;
            margin-left: 20px;
        }
        ol {
            list-style-type: decimal;
            margin-left: 20px;
        }
        blockquote {
            border-left: 4px solid #ccc;
            padding-left: 10px;
            margin-left: 0;
            color: #555;
        }
        .example-output {
            background-color: #e9ecef;
            padding: 10px;
            border-radius: 4px;
            font-family: monospace;
        }
    </style>
</head>
<body>

    <h1>Nmap Scan Automation Script</h1>

    <h2>Overview</h2>
    <p>This Bash script provides an interactive interface to perform various Nmap scans on a specified target. Users can choose from a range of scan types, including Ping Scan, TCP SYN Scan, UDP Scan, and more. The results are saved in a file named <code>&lt;target&gt;_scan.txt</code>, facilitating easy review and analysis.</p>

    <h2>Features</h2>
    <ul>
        <li><strong>Interactive Menu</strong>: Prompts users to select the desired scan type.</li>
        <li><strong>Multiple Scan Options</strong>: Supports various Nmap scan types.</li>
        <li><strong>Result Storage</strong>: Saves scan results in a clearly named text file.</li>
        <li><strong>Root Privilege Handling</strong>: Some scans require elevated permissions; the script prompts accordingly.</li>
    </ul>

    <h2>Requirements</h2>
    <ul>
        <li><strong>Nmap</strong>: Ensure Nmap is installed on your system.</li>
        <li><strong>Root Privileges</strong>: Some scans require root access (e.g., SYN Scan, OS Detection).</li>
        <li><strong>Bash Shell</strong>: The script is designed for Bash environments.</li>
    </ul>

    <h2>Installation</h2>
    <ol>
        <li>Clone the repository:
            <pre><code>git clone https://github.com/AyushPatil1234/nmap-bash-scanner.git
cd nmap-bash-scanner</code></pre>
        </li>
        <li>Make the script executable:
            <pre><code>chmod +x scan.sh</code></pre>
        </li>
    </ol>

    <h2>Usage</h2>
    <p>Run the script with the target hostname or IP address as an argument:</p>
    <pre><code>./scan.sh &lt;target&gt;</code></pre>
    <p>Replace <code>&lt;target&gt;</code> with the desired hostname or IP address.</p>

    <h3>Example:</h3>
    <pre><code>./scan.sh example.com</code></pre>
    <p>The script will prompt you to select a scan type and then execute the chosen scan, saving the results in <code>example.com_scan.txt</code>.</p>

    <h2>Scan Options</h2>
    <p>Upon execution, the script presents the following scan options:</p>
    <ol>
        <li><strong>Ping Scan (Host Discovery)</strong>: Identifies live hosts without scanning ports.</li>
        <li><strong>TCP SYN Scan (Stealth)</strong>: Performs a stealth scan to identify open ports.</li>
        <li><strong>TCP Connect Scan</strong>: Completes the TCP handshake to identify open ports.</li>
        <li><strong>UDP Scan</strong>: Identifies open UDP ports.</li>
        <li><strong>Service Version Detection</strong>: Determines service versions on open ports.</li>
        <li><strong>OS Detection</strong>: Attempts to determine the operating system of the target.</li>
        <li><strong>Aggressive Scan (All-in-One)</strong>: Combines multiple scans for detailed information.</li>
        <li><strong>Exit</strong>: Exits the script.</li>
    </ol>

    <h2>Example Output</h2>
    <div class="example-output">
        <pre><code>Performing TCP SYN Scan...
Starting Nmap 7.91 ( https://nmap.org ) at 2025-05-10 22:42 IST
Nmap scan report for example.com (93.184.216.34)
Host is up (0.10s latency).
Not shown: 998 closed ports
PORT   STATE SERVICE
22/tcp open  ssh
80/tcp open  http
443/tcp open  https</code></pre>
    </div>

    <h2>Contributing</h2>
    <p>Contributions are welcome! To contribute:</p>
    <ol>
        <li>Fork the repository.</li>
        <li>Create a new branch (<code>git checkout -b feature-name</code>).</li>
        <li>Make your changes.</li>
        <li>Commit your changes (<code>git commit -am 'Add new feature'</code>).</li>
        <li>Push to the branch (<code>git push origin feature-name</code>).</li>
        <li>Create a new Pull Request.</li>
    </ol>
    <p>Please ensure your code adheres to the existing style and includes appropriate tests.</p>

</body>
</html>
