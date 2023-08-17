# Ensaios de ferramentas e utilitários

Coleta de informações do ambiente:
```Cmd
systeminfo | findstr /B /C:"OS Name" /C:"OS Version"
```

Coleta de informações de certificados
```PowerShell
Get-ChildItem Cert:\CurrenUser
Get-ChildItem Cert:\LocalMachine
```

Coleta de informações de certificados
```Cmd
certutil -user -store My
cerlm
certmgr.msc
```
