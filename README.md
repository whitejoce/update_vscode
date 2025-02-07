# VSCode Auto-Update Script

## Introduction
This script is designed to automate the update process of VSCode. It includes the following features:

1. **Checks if VSCode is running**: If VSCode is open, the script prompts the user to close it and save their work before proceeding.
2. **Finds the latest VSCode package**: The script scans the current directory for the most recent `VSCode-win32-x64-*.zip` file.
3. **Removes the old VSCode installation**: The script deletes the `D:\VSCode` directory to prevent conflicts.
4. **Extracts the new version**: The latest package is extracted to `D:\VSCode`, completing the update process.

## Usage

1. **Download or copy the script**: Place `update_vscode.bat` in the directory containing the VSCode installation package.
2. **Ensure the installation package exists**: The directory must contain a `VSCode-win32-x64-*.zip` file.
3. **Run the script**:
   - Double-click `update_vscode.bat` to execute.
   - If VSCode is running, the script will prompt you to close it.
   - Once VSCode is closed, press any key to continue the update.
4. **Wait for the installation to complete**: The script will automatically extract the package and pause at the end to prevent the window from closing immediately.

## Notes
- Ensure that `D:\VSCode` is accessible, or the installation may fail.
- Do not update while VSCode is running to avoid file access conflicts.
- If no `VSCode-win32-x64-*.zip` file is found, the script will terminate.
