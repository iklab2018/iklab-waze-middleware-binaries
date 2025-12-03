# Set console size (width=175 columns, height=50 lines)
$console = $Host.UI.RawUI
$console.BufferSize = New-Object Management.Automation.Host.Size(175, 3000)
$console.WindowSize = New-Object Management.Automation.Host.Size(175, 50)

# Get the directory where this script is located
$SCRIPT_DIR = Split-Path -Parent $MyInvocation.MyCommand.Definition

# Remove trailing backslash if it exists
if ($SCRIPT_DIR.EndsWith("\")) {
  $SCRIPT_DIR = $SCRIPT_DIR.Substring(0, $SCRIPT_DIR.Length - 1)
}

# Check if Python is installed
$pythonPath = Get-Command python -ErrorAction SilentlyContinue
if (-not $pythonPath) {
  Write-Host "[ERROR] Python is not installed or not in the PATH..."
  Read-Host "Press `Enter` key to exit..."
  exit
}

# Check if the executable script exists
$EXEC_SCRIPT = ""
$pycPath = Join-Path $SCRIPT_DIR "tools\iklab_cli.pyc"
$pyPath = Join-Path $SCRIPT_DIR "tools\iklab_cli.py"

if (Test-Path $pycPath) {
  $EXEC_SCRIPT = $pycPath
} elseif (Test-Path $pyPath) {
  $EXEC_SCRIPT = $pyPath
} else {
  Write-Host "[ERROR] Exec script not found..."
  Read-Host "Press `Enter` key to exit..."
  exit
}

# Run the Exec script for interactive CLI
& python $EXEC_SCRIPT @args

Write-Host ""
Read-Host "Press `Enter` key to exit..."