@echo off
setlocal enabledelayedexpansion

:: Set VSCode installation directory, end with a backslash: "C:\Program Files\VSCode\"
set INSTALL_DIR=

:: Set the current script directory as the working directory: %~dp0 , end with a backslash (e.g., "D:\Downloads\")
set CUR_DIR=%~dp0

:: Check if INSTALL_DIR is set
if "%INSTALL_DIR%"=="" (
    echo [!] INSTALL_DIR is not set. Please modify the script to set the VSCode installation directory.
    pause
    exit /b
)

:: Check if VSCode is running
:check_vscode
tasklist | find /i "Code.exe" >nul
if %errorlevel%==0 (
    echo [*] VSCode is running, please close VSCode and save your code.
    :wait_for_vscode
    timeout /t 1 >nul
    tasklist | find /i "Code.exe" >nul
    if %errorlevel%==0 goto wait_for_vscode
)

:: Find the latest VSCode installation package in the current directory (sorted by file modification time)
for /f "delims=" %%i in ('dir /b /od /a-d "%CUR_DIR%VSCode-win32-x64-*.zip"') do set LATEST_ZIP=%%i

:: Exit if no installation package is found
if not defined LATEST_ZIP (
    echo [!] No VSCode installation package found!
    pause
    exit /b
)

echo [+] Found the latest VSCode installation package: %LATEST_ZIP%

:: Delete the old VSCode folder
if exist "%INSTALL_DIR%" (
    echo [+] Deleting old version...
    rmdir /s /q "%INSTALL_DIR%"
)

:: Recreate the VSCode directory
mkdir "%INSTALL_DIR%"

:: Unzip the installation package to the target directory
echo [+] Extracting %LATEST_ZIP% to %INSTALL_DIR%...
powershell -command "Expand-Archive -Path '%CUR_DIR%%LATEST_ZIP%' -DestinationPath '%INSTALL_DIR%' -Force"

echo [=] VSCode update completed!

:: Pause to prevent the window from closing automatically
pause
