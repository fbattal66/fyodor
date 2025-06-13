if (-not ([Security.Principal.WindowsPrincipal] [Security.Principal.WindowsIdentity]::GetCurrent()).IsInRole(`
    [Security.Principal.WindowsBuiltInRole] "Administrator")) {
    Write-Host "Bu oturum değil." -ForegroundColor Red
} else {
    Write-Host "Bu oturum yetkilere sahip." -ForegroundColor Green
}
