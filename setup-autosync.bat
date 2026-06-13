@echo off
schtasks /Create /SC ONLOGON /TN "PythonAutoSync" /TR "powershell.exe -WindowStyle Hidden -File C:\Users\Krish\OneDrive\Desktop\PYTHON\auto-sync.ps1" /DELAY 0000:30 /F
echo Done! Auto-sync will start on next login.
pause
