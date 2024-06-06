Get-WmiObject -Class Win32_Product | where Vendor -eq "Simon Tatham" | Select name, version 
$testpath = Test-Path -Path "C:\Users\Keano\Downloads\npp.8.6.8.Installer.x64.exe" 
Write-Host "hij is vind baar"
Start-Process -FilePath “C:\Users\Keano\Downloads\npp.8.6.8.Installer.x64.exe" -ArgumentList "/S"