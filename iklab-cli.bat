@echo off
setlocal enabledelayedexpansion

REM Set console size (width=175 columns, height=40 lines)
mode con: cols=175 lines=40

REM Get the directory where this script is located
set "SCRIPT_DIR=%~dp0"

REM Remove trailing backslash if it exists
set "SCRIPT_DIR=!SCRIPT_DIR:~0,-1!"

REM Check if Python is installed
where python >nul 2>nul
if %errorlevel% neq 0 (
  echo [ERROR] Python is not installed or not in the PATH...
  echo:
  echo Press `Enter` key to exit...
  pause > nul
  exit
)

REM Check if the Exec script exists
set "EXEC_SCRIPT="
if not exist "%SCRIPT_DIR%\tools\iklab_cli.pyc" (
  if not exist "%SCRIPT_DIR%\tools\iklab_cli.py" (
    echo [ERROR] Exec script not found...
    echo:
    echo Press `Enter` key to exit...
    pause > nul
    exit
  )
  set "EXEC_SCRIPT=%SCRIPT_DIR%\tools\iklab_cli.py"
) else (
  set "EXEC_SCRIPT=%SCRIPT_DIR%\tools\iklab_cli.pyc"
)

REM Run the Exec script for interactive CLI
python "%EXEC_SCRIPT%" %*

echo:
echo Press `Enter` key to exit...
pause > nul

endlocal
exit