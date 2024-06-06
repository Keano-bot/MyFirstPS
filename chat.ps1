
$antwoord = Read-host "Hoe was je vakantie?"

#als het antwoord goed is
if ($antwoord -eq "Goed"){
    Write-Host "Fijn dat het een Goede vakantie was" -ForegroundColor Green
    $antwoord3 = Read-Host "Wat heb je gedaan?"
    if ($antwoord3 -eq "Zwemmen"){
        Write-Host "Was het leuk?"
    }
        
    }



#als het antwoord slecht is
elseif ($antwoord -eq "slecht"){
    Write-Host "Dat is vervelend" -ForegroundColor Green
    Start-Process "Firefox" -ArgumentList "https://www.lego.com/nl-nl"
}


#elk ander antrwoord de vraag opnieuw stellen
else{
    Write-Host "Ik heb je niet begrepen" -ForegroundColor DarkYellow
    $antwoord2 = Read-Host "Hoe was je vakantie? (Goed of Slecht)"
    if ($antwoord2 -eq "Goed"){
        for ($teller = 0; $teller -lt 20;$teller++){
            Start-Process "Firefox" -ArgumentList "https://s3.pixers.pics/pixers/160/FO/47/00/27/91/160_FO47002791_229d0889c8358f92e20f9eb97b1030be.jpg"
        }
    }
    }
        if ($antwoord2 -eq "Slecht"){
            for ($teller = 0; $teller -lt 50;$teller++){
             Start-Process "Firefox" -ArgumentList "https://img.freepik.com/vrije-vector/handgetekende-haat-emoji-illustratie_23-2151041519.jpg?w=826&t=st=1715759512~exp=1715760112~hmac=077af09d86a5ad1076c3d94ae792cd6303d7f22dfe5d6978845026c65d328944"
     }
    }
     else{(Write-Host "Geef antwoord op de vraag!!!" -ForegroundColor Red)
        $antwoord2 = Read-Host "Hoe was je vakantie? (Goed of Slecht)"
        if ($antwoord2 -eq "Goed"){
         for ($teller = 0; $teller -lt 20;$teller++){
                Start-Process "Firefox" -ArgumentList "https://s3.pixers.pics/pixers/160/FO/47/00/27/91/160_FO47002791_229d0889c8358f92e20f9eb97b1030be.jpg"
            }
        }
     if ($antwoord2 -eq "Slecht"){
            for ($teller = 0; $teller -lt 50;$teller++){
                Start-Process "Firefox" -ArgumentList "https://img.freepik.com/vrije-vector/handgetekende-haat-emoji-illustratie_23-2151041519.jpg?w=826&t=st=1715759512~exp=1715760112~hmac=077af09d86a5ad1076c3d94ae792cd6303d7f22dfe5d6978845026c65d328944"
        }
    }

     }

