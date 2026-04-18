@echo off
setlocal enabledelayedexpansion

echo ==========================================
echo  Configuracao Inicial - Projeto_Fiscal40
echo ==========================================
echo.

REM 1. Verifica se o Git esta instalado e no PATH
git --version >nul 2>&1
if %errorlevel% neq 0 (
    echo [ERRO] Git nao encontrado. Instale o Git para Windows antes de executar.
    pause
    exit /b 1
)

REM 2. Verifica se o script foi executado dentro de um repositorio Git
git rev-parse --is-inside-work-tree >nul 2>&1
if %errorlevel% neq 0 (
    echo [ERRO] Execute este script na pasta raiz do projeto clonado.
    pause
    exit /b 1
)

echo Aplicando configuracoes locais ao repositorio...
git config --local core.quotepath false
git config --local core.autocrlf false
git config --local i18n.commitencoding cp1252
git config --local i18n.logoutputencoding cp1252
git config --local core.safecrlf false

echo.
echo Configuracoes aplicadas:
echo ----------------------------------------
git config --local --list | findstr /i "quotepath autocrlf commitencoding logoutputencoding safecrlf"
echo ----------------------------------------
echo.
echo ✅ Pronto! Ambiente configurado para:
echo    • Manter encoding ANSI (Windows-1252) sem corromper acentos
echo    • Respeitar .gitattributes para line endings (CRLF)
echo    • Evitar avisos de conversao no terminal
echo.
pause