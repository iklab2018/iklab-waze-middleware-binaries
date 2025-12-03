# IKLab Waze Middleware
Application to connect real-time alerts from the Waze for Cities platform with VMS security monitoring platforms (GENETEC, VIVOTEK - VSS, etc.). This application only works on Windows operating systems with Python version 3.10.11.

### Requirements & dependencies
Inside the `setup` directory you will find compatible application environments with their requirements and dependencies. In the 'requirements.txt' file you can review the versions that will be installed.

---
### Install the packages and dependencies located in the `setup` directory:
1. Microsoft Tools (vs_BuildTools.exe, PowerShell-7.5.4-win-x64.exe). Tools available as of 2025-12-02. You can download updated versions from official Microsoft sources.
2. Install Python interpreter + PIP package manager globally (python-3.10.11-amd64.exe).
3. Install Python packages in the `requirements.txt` file from the Windows PowerShell console (as Administrator) using the command `python -m pip install -r requirements.txt`
