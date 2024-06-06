write-host "===============================================" -ForegroundColor Blue
write-host "===================" -NoNewline -ForegroundColor Blue
write-host " opties " -NoNewline -ForegroundColor Green
write-host "====================" -ForegroundColor Blue
write-host "===============================================" -ForegroundColor Blue
write-host "=====" -NoNewline -ForegroundColor Blue
write-host " optie 1        lego website " -NoNewline -ForegroundColor Green
write-host "=============" -ForegroundColor Blue
write-host "=====" -NoNewline -ForegroundColor Blue
write-host " optie 2        datum en tijd " -NoNewline -ForegroundColor Green
write-host "============" -ForegroundColor Blue
write-host "=====" -NoNewline -ForegroundColor Blue
write-host " optie 3        sluiten " -NoNewline -ForegroundColor Green
write-host "==================" -ForegroundColor Blue
write-host "===============================================" -ForegroundColor Blue
Write-Host

$antwoord = Read-host "Welke optie wilt u gebruiken?" 

if ($antwoord -eq "1"){
    Write-Host "veel plezier op de lego website" -ForegroundColor Green
  
    Start-Process "Firefox" -ArgumentList "https://www.lego.com/nl-nl"
    }
       

if ($antwoord -eq "2"){
    Write-Host "de tijd is " -ForegroundColor Green
 timedate.cpl
    
    }
       

if ($antwoord -eq "3"){
    Write-Host "Fijne dag verder" -ForegroundColor Green
    exit 
    
    }
        
  
