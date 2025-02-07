# VSCode Auto-Update Script

[中文文档](https://github.com/whitejoce/update_vscode/blob/main/README_CN.md)
 
> *Generated and optimized by GPT-4o*

## Introduction
This script is designed to automate the update process of VSCode. It includes the following features:

1. **Checks if VSCode is running**: If VSCode is open, the script prompts the user to close it and save their work before proceeding.
2. **Finds the latest VSCode package**: The script scans the current directory for the most recent `VSCode-win32-x64-*.zip` file.
3. **Removes the old VSCode installation**: The script deletes the `VSCode installation directory` to prevent conflicts.
4. **Extracts the new version**: The latest package is extracted to `VSCode installation directory`, completing the update process.

## Usage

1. **Download or copy the script**: Place `update_vscode.bat` in the directory containing the VSCode installation package.
2. **Ensure the installation package exists**: The directory must contain a `VSCode-win32-x64-*.zip` file.
3. **Run the script**:
   - Double-click `update_vscode.bat` to execute.
   - If VSCode is running, the script will prompt you to close it.
   - Once VSCode is closed, press any key to continue the update.
4. **Wait for the installation to complete**: The script will automatically extract the package and pause at the end to prevent the window from closing immediately.
5. **Ask a Friendly AI (AFAI)**:
   - GPT can help analyze VSCode version updates.
   - You can optimize or regenerate the `update_vscode.bat` script using GPT for better compatibility and automation.
   - If you encounter installation problems, GPT can assist in troubleshooting.

## Notes
- Ensure that `VSCode installation directory` is accessible, or the installation may fail.
- Do not update while VSCode is running to avoid file access conflicts.
- If no `VSCode-win32-x64-*.zip` file is found, the script will terminate.



