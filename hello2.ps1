Get-Process | Where-Object {
    try {
        $_.Path -like "C:\Sce\*"
    } catch {
        $false
    }
} | ForEach-Object {
    try {
        $_.Kill()
        Write-Output "Kapatıldı: $($_.ProcessName) (PID: $($_.Id))"
    } catch {
        Write-Output "Kapatılamadı: $($_.ProcessName) (PID: $($_.Id))"
    }
}
