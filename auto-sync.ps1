$watcher = New-Object System.IO.FileSystemWatcher
$watcher.Path = "C:\Users\Krish\OneDrive\Desktop\PYTHON"
$watcher.IncludeSubdirectories = $true
$watcher.EnableRaisingEvents = $true
$watcher.NotifyFilter = [System.IO.NotifyFilters]::FileName -bor [System.IO.NotifyFilters]::LastWrite

$timer = New-Object System.Timers.Timer
$timer.Interval = 10000
$timer.AutoReset = $false

$action = {
    $path = "C:\Users\Krish\OneDrive\Desktop\PYTHON"
    $msg = "auto-sync: $(Get-Date -Format 'yyyy-MM-dd HH:mm:ss')"
    Set-Location $path
    git add -A 2>&1 | Out-Null
    $diff = git diff --cached --quiet 2>&1
    if ($LASTEXITCODE -ne 0) {
        git commit -m $msg 2>&1 | Out-Null
        git push 2>&1 | Out-Null
    }
}

$onChange = {
    $timer.Stop()
    $timer.Start()
}

Register-ObjectEvent $watcher "Changed" -Action $onChange | Out-Null
Register-ObjectEvent $watcher "Created" -Action $onChange | Out-Null
Register-ObjectEvent $watcher "Deleted" -Action $onChange | Out-Null
Register-ObjectEvent $watcher "Renamed" -Action $onChange | Out-Null
Register-ObjectEvent $timer "Elapsed" -Action $action | Out-Null

Write-Host "Auto-sync running... Press Ctrl+C to stop."
while ($true) { Start-Sleep -Seconds 60 }
