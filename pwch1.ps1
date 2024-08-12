$process_name = "notepad"
$processes = Get-Process | Where-Object { $_.Name -like "$process_name*" }

if ($processes) {
    foreach ($process in $processes) {
        try {
            Stop-Process -Id $process.Id -Force
            Write-Output "Process Stopped: Haad_CTF{${process.Name}}"
        } catch {
            Write-Output "Failed to stop process: $($_.Exception.Message)"
        }
    }
} else {
    Write-Output "Notepad is not running. Please start the Notepad process and try again."
}

