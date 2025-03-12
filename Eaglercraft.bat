@echo off
@setlocal enabledelayedexpansion
@set allchoices=12345
@set amount=6
attrib +h Eaglercraft*.html
attrib +h favicon-*.*
attrib +h wait.vbs

call :disclaimer
echo =============================================================
echo                  MENU
echo ---------------------------------------
echo     [1] Normal (no camouflage)
echo ---------------------------------------
echo     [2] JFSG leerlingen startpagina
echo ---------------------------------------
echo     [3] Magister startpagina
echo ---------------------------------------
echo     [4] itsLearning startpagina
echo ---------------------------------------
echo     [5] StudyGo startpagina
echo =============================================================
echo =============================================================
echo Geef je keuze hieronder in:
choice /c !allchoices:~0,%amount%! /n /m ""
set gamemode=%errorlevel%
echo Je hebt gekozen voor: [%gamemode%]
echo ==================================
echo Wil je Eaglercraft openen? (y/n)
choice /n
set keuze=%errorlevel%
if %keuze%==1 (
cls
echo Eaglercraft openen.
cscript wait.vbs 1
cls
echo Eaglercraft openen..
cscript wait.vbs 1
cls
echo Eaglercraft openen...
cscript wait.vbs 1
cls
echo Eaglercraft openen..
cscript wait.vbs 1
cls
echo Eaglercraft openen.
cscript wait.vbs 1
cls
echo Eaglercraft openen..
cscript wait.vbs 1
cls
echo Eaglercraft openen...
cscript wait.vbs 1
cls
echo Eaglercraft openen..
cscript wait.vbs 1
cls
echo Eaglercraft openen.
cscript wait.vbs 1
cls
echo Eaglercraft openen..
cscript wait.vbs 1
cls
echo Eaglercraft openen...
cscript wait.vbs 1
if %gamemode%==1 (
start "" "Eaglercraft.html"
) else if %gamemode%==2 (
start "" "Eaglercraft [JFSG leerlingen].html"
) else if %gamemode%==3 (
start "" "Eaglercraft [Magister].html"
) else if %gamemode%==4 (
start "" "Eaglercraft [ITS].html"
) else if %gamemode%==5 (
start "" "Eaglercraft [SG].html"
)
exit /b
) else (
echo alles sluiten...
timeout /t 1 >nul
exit /b 1
)
pause
goto :eof

:disclaimer
echo =============================================================
call :colorEcho 08 "                    EAGLERCRAFT CAMOUFLAGE"
echo                        version 1.0.0
echo                   Copyright Florian Harbers
echo  Alle Rechten Voorbehouden - Alleen voor Persoonlijk Gebruik
echo =============================================================
goto :eof

:colorEcho
echo off
<nul set /p ".=%DEL%" > "%~2"
findstr /v /a:%1 /R "^$" "%~2" nul
del "%~2" > nul 2>&1i
goto :eof
