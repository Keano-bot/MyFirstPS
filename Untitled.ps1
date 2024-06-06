$cert = Get-ChildItem Cert:\CurrentUser\My -CodeSigningCert |
    Select-Object -First 1
    
Set-AuthenticodeSignature -FilePath "mail versturen.ps1" -Certificate $cert