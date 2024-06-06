write-host "==============================================================" -ForegroundColor Green
write-host "========================" -NoNewline -ForegroundColor Green
write-host "PC informatie " -NoNewline -ForegroundColor Red
write-host "========================" -ForegroundColor green
write-host "==============================================================" -ForegroundColor green
Write-Host""

$computer = $env:COMPUTERNAME
$disk = Get-Disk
$computerhost =$env:USERNAME
$computer1 =$env:ComSpec
$computer2 =$env:HOMEPATH
$ping = Test-Connection -ComputerName 8.8.8.8 -Count 1
$conectie ="werkt"

if ($ping.Status -ne "Success"){
    $conectie = "werkt niet"
}

write-host "computer naam                :"$computer -ForegroundColor Blue
Write-Host "gebruikers naam              :"$computerhost -ForegroundColor Blue
write-host "serialNumber                 :"$disk.SerialNumber -ForegroundColor Blue
write-host "model van disk               :"$disk.Model -ForegroundColor Blue
write-host "Computer specs               :"$computer1 -ForegroundColor Blue
write-host "internet werkt               :"$conectie -ForegroundColor Blue