@echo off
@REM
@REM  Author: @andreluisvsa
@REM   
@REM  Coleta informações do ambiente (inventário): 
@REM   - sistema operacional, 
@REM   - hardware (cpu, mem, nic, etc), 
@REM   - fabricante 
@REM   - etc
@REM 
@REM  Plat: Win10, Win11
@REM  Reqs: - local admin privs
@REM        - dt fmt: dd/mm/yyyy
@REM
@REM  +Infos:
@REM
@REM  - https://techcommunity.microsoft.com/t5/ask-the-performance-team/useful-wmic-queries/ba-p/375023
@REM  - https://www.intel.com/content/www/us/en/support/articles/000025060/intel-nuc.html
@REM  - https://learn.microsoft.com/en-us/windows/win32/wmisdk/wmi-start-page
 
SET TS_ANO=%date:~6,4%
SET TS_MES=%date:~3,2%
SET TS_DIA=%date:~0,2%
SET TS_HRA=%time:~0,2%
SET TS_MIN=%time:~3,2%
SET TS_SEG=%time:~6,2%
SET TS_AGORA=%TS_ANO%%TSMES%%TS_DIA%_%TS_HRA%%TS_MIN%%TS_SEG%
SET STDOUT=info-env-%TS_AGORA%.txt

echo --- 
echo --- Data/Hora: %TS_AGORA%
echo --- 

echo --- BIOS.SerialNumber (Numero de serie):
wmic BIOS get SerialNumber  

echo --- CSProduct.vendor (Fabricante):
wmic CSProduct get vendor   

echo --- CSProduct.name (Modelo):
wmic CSProduct get name     

echo --- OS.Caption (Sistema Operacional):
wmic OS get caption         

echo --- SystemEnclosure.SMBIOSAssetTag (Patrimonio):
wmic SystemEnclosure get SMBIOSAssetTag  

echo --- SystemEnclosure.SerialNumber (Numero de serie):
wmic SystemEnclosure get SerialNumber    

pause
