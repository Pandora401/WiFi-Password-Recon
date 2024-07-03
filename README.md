# Wi-Fi Password Extractor

This script extracts Wi-Fi SSIDs and passwords on a Windows system and saves the output to a file named `wifi.txt`.

## How It Works

1. **OS Detection**:
   - The script detects the operating system by checking the output of the `ver` command.
   - If the OS is Windows, it proceeds to retrieve Wi-Fi network information.
   - I intend on extending this concept to almost all OS types including possibly IoT extraction.

2. **Wi-Fi Network and Password Retrieval**:
   - The script lists all Wi-Fi profiles stored on the system.
   - For each profile, it extracts the Wi-Fi password.
   - The results are written to `wifi.txt`.

## Usage

1. **Run the Script**:
   - Save the script to a file with a `.bat` extension, for example, `get_wifi_passwords.bat`.
   - Open a Command Prompt with administrative privileges.
   - Navigate to the directory where the script is saved.
   - Run the script by typing `get_wifi_passwords.bat` and pressing Enter.

2. **Output**:
   - The script generates a file named `wifi.txt` in the same directory.
   - The file contains the names and passwords of all stored Wi-Fi networks.

## Notes

- This script is intended for use on Windows operating systems only.
- Administrative privileges are required to run the script and retrieve Wi-Fi passwords.
- Use this script responsibly and ensure you have permission to access the Wi-Fi passwords on the system.
