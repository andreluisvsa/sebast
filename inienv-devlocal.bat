@echo off
@REM 
@REM   Inicia shell como usuário devlocal. Caso seja a primeira vez,
@REM   solicitará a senha.

RUNAS /user:devlocal /savedcred "cmd /d /e:ON /k d:\env\setenv-devlocal.bat"
