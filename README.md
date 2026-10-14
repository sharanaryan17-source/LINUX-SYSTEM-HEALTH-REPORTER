# Linux System Health Reporter

A beginner-friendly Bash scripting project that automates the collection of basic Linux system information into a readable text report.

## Features
When executed, this script generates a `system-report.txt` file containing the following metrics:
*   **Hostname:** The network name of the machine.
*   **Kernel Version:** The core operating system release.
*   **Disk Usage:** The storage capacity and consumption of the root (`/`) directory.
*   **Memory Usage:** The currently used RAM versus total RAM.
*   **Top Processes:** A sorted list of the top 5 running programs consuming the most CPU resources.

## Prerequisites
*   A Linux operating system (e.g., Kali Linux, Ubuntu)
*   Standard core utilities: `df`, `free`, `ps`, `awk`

## How to Run

1. Open your terminal and navigate to the directory containing the project files.
2. Execute the script explicitly using Bash:
   ```bash
   bash system_report.sh