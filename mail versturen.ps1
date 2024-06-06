<#PSScriptInfo
.VERSION 1.0
.AUTHOR MrPowerShell
#>


#Password
$username = "powershell2@sunnus.nl" 
$topsecret = "8lRiHzXc" #never store passwords like this.
$password = ConvertTo-SecureString $topsecret -AsPlainText -Force
$psCred = New-Object System.Management.Automation.PSCredential -ArgumentList ($username, $password)

#SMTP Settings
$smtp = "smtp.sunnus.nl"
$port = 587

#Address
$to = "173323@student.horizoncollege.nl" # aanpassen!
$from = "powershell2@sunnus.nl"

#Message
$subject = "Verzonden met Powershell"
$html = Get-Content "C:\Users\Keano\mail.html" | Out-String
 
#Send MailMessage
Send-MailMessage -BodyAsHtml $html -To $to -Subject $subject -SmtpServer $smtp -From $from -Credential $psCred -Port $port
# SIG # Begin signature block
# MIIFdAYJKoZIhvcNAQcCoIIFZTCCBWECAQExDzANBglghkgBZQMEAgEFADB5Bgor
# BgEEAYI3AgEEoGswaTA0BgorBgEEAYI3AgEeMCYCAwEAAAQQH8w7YFlLCE63JNLG
# KX7zUQIBAAIBAAIBAAIBAAIBADAxMA0GCWCGSAFlAwQCAQUABCBkl+Xn4HiR5BsX
# Ck5btc1kv83ut3YB0IpJElCKAm7w4aCCAvQwggLwMIIB2KADAgECAhBdKD/oPVn3
# mU6pQBrXgpC2MA0GCSqGSIb3DQEBCwUAMBAxDjAMBgNVBAMMBWhhbGxvMB4XDTI0
# MDUyMzA3NTM1N1oXDTI1MDUyMzA4MTM1N1owEDEOMAwGA1UEAwwFaGFsbG8wggEi
# MA0GCSqGSIb3DQEBAQUAA4IBDwAwggEKAoIBAQDPs8rNSurHaqWBcmyMcL/djTtM
# t5G6gT6GHRzNPGF1hxO56BAenUvMgUxS7rwbMPhku6MuJPG2la6TmNTWO5HWQw7n
# DdnyiBZh3I02lMyycUrRNk6/06RzTmSzHxcFSuQL88nJdRSCuLeWHWAQnxSKi9IW
# sXqv/+OkAqPu1Ir/zJxAke2iSCfxGbJvZo0oj/8C45TbIYtwpVyzb3cBG0cwJO8H
# Gylb55/5kmZcE2FtnKTsVxYORMIg0oM1lKP6cvozNf84tVwwgG6zglzae4wqGIAH
# M3OBksSYYDUdclUv6ARyR9hX60dvGKNDZFPMcrnZmquFXowcfAtl1h7MR1gZAgMB
# AAGjRjBEMA4GA1UdDwEB/wQEAwIHgDATBgNVHSUEDDAKBggrBgEFBQcDAzAdBgNV
# HQ4EFgQUClOjDp4/awn2aWam+KkLYEnpp+IwDQYJKoZIhvcNAQELBQADggEBABCe
# uTtt5WTQqtHl0O2Ol4GLz+vy5lIuz5zsoOGNebSsELsIBmfynqS9/u9LqRWnWTSE
# PUlrUlrpMx0LPzhLW3+cU6SNnpA7No4LHYkC0+6FuyH/pAVOFRcdJUUNxngDDETh
# RJ5WqzVRgMPnwrJuqohXMfH82lGk3wtebtAyFF4HDx6imOFYf4y00+C9MsIxOoa+
# 0aenO1Y/FUDFvdfJRXUJpM+73SK4tZHjlWD0FaYST2WghJemn0S24TUjBl2ZDMxZ
# 3jOEdZxcA1oF82cCzCUkp4h3QO1DHimadaAdSLKXlpXhY3Em8CmsWH3BqUkLCxMA
# IWPTJoItWuLKaaUgUrAxggHWMIIB0gIBATAkMBAxDjAMBgNVBAMMBWhhbGxvAhBd
# KD/oPVn3mU6pQBrXgpC2MA0GCWCGSAFlAwQCAQUAoIGEMBgGCisGAQQBgjcCAQwx
# CjAIoAKAAKECgAAwGQYJKoZIhvcNAQkDMQwGCisGAQQBgjcCAQQwHAYKKwYBBAGC
# NwIBCzEOMAwGCisGAQQBgjcCARUwLwYJKoZIhvcNAQkEMSIEIHCMIYTFDAVzWxgT
# /obYWWWJpk2HlA/zkbWvotLxeeIxMA0GCSqGSIb3DQEBAQUABIIBAHzeg6eTwihm
# R/DmB7DtFyDR5E7/gLp2vetGCePXMkrtAU29lymcUEt4d0ZqMLyYEAawxkamQsQ1
# zaXapaVrxs3TC1rsby6GeD0FHTpet6Krlasg+QQAf3HCMPCegR/muNxGRVh46Wzh
# 2NBVpHrt7A0CGJLqHOtyekVt7XXBgjhgRPeba9IhST5WtVsqcGJXH472TjAWIXuV
# wAcVd+/zHHvXL/z70GkuiMuyNYSHH31jqgF2ursGW4GczGRuFLWgVYQFe/1zQlwX
# 1VvvilU73YaK56LmUKTx1a8bYWNg7jouss/MDixjbt/+jlTzgDbzOyyuSXYyV1PP
# JIr+40VnLyY=
# SIG # End signature block
