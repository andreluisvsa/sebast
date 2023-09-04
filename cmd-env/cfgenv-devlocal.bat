@echo off

@REM
@REM  Cria usuário devlocal para uso no ambiente apartado para
@REM  desenvolvimento. Necessário ser admin local
@REM

NET USER "devlocal" "senhadevlocal" /ADD
