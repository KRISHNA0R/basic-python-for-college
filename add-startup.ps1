$wshell = New-Object -ComObject WScript.Shell
$shortcut = $wshell.CreateShortcut("$env:APPDATA\Microsoft\Windows\Start Menu\Programs\Startup\PythonAutoSync.lnk")
$shortcut.TargetPath = "powershell.exe"
$shortcut.Arguments = "-WindowStyle Hidden -File C:\Users\Krish\OneDrive\Desktop\PYTHON\auto-sync.ps1"
$shortcut.Save()
Write-Host "Startup shortcut created! Auto-sync will start on next login."
