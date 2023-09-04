@echo off

COLOR 0E
CD /D d:\env

SET JAVA_HOME=d:\env\java\ms-openjdk-17.0.7-x64
SET RUSTUP_HOME=d:\env\rust\.rustup
SET CARGO_HOME=d:\env\rust\.cargo
SET PYTHONPATH=d:\app\dev\python3
SET PATH=%PATH%;%CARGO_HOME%\bin

DOSKEY ls=dir /l

ECHO Bom dia! 
ECHO Ambiente de %USERNAME% iniciado com:
ECHO ...
ECHO    JAVA_HOME   = %JAVA_HOME%
ECHO    RUSTUP_HOME = %RUSTUP_HOME%
ECHO    CARGO_HOME  = %CARGO_HOME%
ECHO    PYTHONPATH  = %PYTHONPATH%
ECHO    DIRCMD      = %DIRCMD%
ECHO    USERPROFILE = %USERPROFILE%
ECHO    USERNAME    = %USERNAME% 
ECHO ...
ECHO Bom trabalho!

TITLE RUNAS /user: %USERNAME% CMD
PROMPT (%USERNAME%) $P$G