Get-Process | Where-Object {
    try {
        $_.MainWindowHandle -ne 0
    } catch {
        $false
    }
} | ForEach-Object {
    try {
        # Önce pencereyi kapatmayı dene
        if (-not $_.CloseMainWindow()) {
            # Kapanmazsa zorla kapat
            $_.Kill()
        }
        Write-Output "Kapatıldı: $($_.ProcessName)"
    } catch {
        Write-Output "Kapatılamadı: $($_.ProcessName)"
    }
}
