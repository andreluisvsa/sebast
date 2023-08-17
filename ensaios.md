# Ensaio de ferramentas e utilitários

## Coleta de informações de ambiente - Windows

Via Cmd:
```Cmd
systeminfo | findstr /B /C:"OS Name" /C:"OS Version"

## Coleta de informações de certificados - Windows

Via PowerShell:
```PowerShell
Get-ChildItem Cert:\CurrenUser
Get-ChildItem Cert:\LocalMachine
```

Via utilitários do SO:
```Cmd
certutil -user -store My
cerlm
certmgr.msc
```

Via Registry:
```Cmd
regedit HKEY_LOCAL_MACHINE\SOFTWARE\Microsoft\SystemCertificates
```

## Mais informações:
* [The Geek Page](https://thegeekpage.com/how-to-view-digital-certificates-installed-in-windows-10/)
