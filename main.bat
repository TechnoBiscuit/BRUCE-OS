@echo off
:startup
:startupanim
title BruceOS
start startup.wav
start switch1.vbs
start fullscreen.vbs
color 0f
set theme="def"
echo Starting up BruceOS.
timeout /t 1 /NOBREAK >nul
cls
echo Starting up BruceOS..
timeout /t 1 /NOBREAK >nul
cls
echo Starting up BruceOS...
timeout /t 1 /NOBREAK >nul
cls
echo Starting up BruceOS..
timeout /t 1 /NOBREAK >nul
cls
echo Starting up BruceOS.
timeout /t 1 /NOBREAK >nul
cls
echo Starting up BruceOS..
timeout /t 1 /NOBREAK >nul
cls
echo Starting up BruceOS...
timeout /t 1 /NOBREAK >nul
cls

:filecheck
:datafilecheck
if exist data.txt (
echo BruceOS running correctly.
goto :plugincheck
) else (
echo ERROR 0001 - FATAL - DATA FILE CAN NOT BE FOUND.
set "error=nodatafile"
goto :errorhandling
)

:plugincheck
if exist plugins\*.bat (
echo Plugins found.
goto :listplugins
) else (
echo No plugins found.
goto :beginning
)

:beginning
::echo beginning
echo  ____________
echo /            \
echo ^|  BruceOS   ^|
echo \____________/
echo.
:commandhandler
:commandhandlerbeginning
set /p command=BruceOS^> 
if "%command%"=="help" (
echo.
echo cls               Clears the screen.
echo.
echo.
echo exit              Close BruceOS
echo.
echo.
echo fullscreen        Take BruceOS in and out of fullscreen mode.
echo.
echo.
echo plugin
echo.
echo plugin -l         List all plugins.
echo plugin -i [name]  Get info on a specific plugin.
echo.
echo.
echo theme             Change the theme.
echo.
echo theme [name]      Set the theme.
echo theme -r          Reset the theme.
)

if "%command%"==" " (
echo Just a space isn't going to do anything.
)

if "%command%"=="plugin" (
echo.
echo USAGE:
echo.
echo -l         List all plugins.
echo -i [name]  Get info on a specific plugin.
echo.
)

if "%command%"=="plugin -l" (
goto :commandlistplugins
)

if "%command%"=="plugin -i" (
echo Not yet implemented.
)

if "%command%"=="cls" (
cls
)

if "%command%"=="theme" (
echo USAGE:
echo.
echo theme inverted    Invert the colours.
echo theme rnd         R^&D logo colours.
echo theme pokemon     Pokemon colours.
)

if "%command%"=="theme inverted" (
set theme="inv"
color f0
)

if "%command%"=="theme rnd" (
set theme="rnd"
color af
)

if "%command%"=="theme pokemon" (
set theme="pokemon"
color cf
)

if "%command%"=="theme -r" (
set theme="def"
color 0f
)

if "%command%"=="rainbow" (
color 10
millisleep.exe 20
color 20
millisleep.exe 20
color 30
millisleep.exe 20
color 40
millisleep.exe 20
color 50
millisleep.exe 20
color 60
millisleep.exe 20
color 70
millisleep.exe 20
color 01
millisleep.exe 20
color 11
millisleep.exe 20
color 21
millisleep.exe 20
color 31
millisleep.exe 20
color 41
millisleep.exe 20
color 51
millisleep.exe 20
color 61
millisleep.exe 20
color 71
millisleep.exe 20
color 02
millisleep.exe 20
color 12
millisleep.exe 20
color 22
millisleep.exe 20
color 32
millisleep.exe 20
color 42
millisleep.exe 20
color 52
millisleep.exe 20
color 62
millisleep.exe 20
color 72
millisleep.exe 20
color 03
millisleep.exe 20
color 13
millisleep.exe 20
color 23
millisleep.exe 20
color 33
millisleep.exe 20
color 43
millisleep.exe 20
color 53
millisleep.exe 20
color 63
millisleep.exe 20
color 73
millisleep.exe 20
color 04
millisleep.exe 20
color 14
color 24
millisleep.exe 20
color 34
millisleep.exe 20
color 44
millisleep.exe 20
color 54
millisleep.exe 20
color 64
millisleep.exe 20
color 74
millisleep.exe 20
color 05
millisleep.exe 20
color 15
millisleep.exe 20
color 25
millisleep.exe 20
color 35
millisleep.exe 20
color 45
millisleep.exe 20
color 55
millisleep.exe 20
color 65
millisleep.exe 20
color 75
millisleep.exe 20
color 06
millisleep.exe 20
color 16
millisleep.exe 20
color 26
millisleep.exe 20
color 36
millisleep.exe 20
color 46
millisleep.exe 20
color 56
millisleep.exe 20
color 66
millisleep.exe 20
color 76
millisleep.exe 20
color 07
millisleep.exe 20
color 17
millisleep.exe 20
color 27
millisleep.exe 20
color 37
millisleep.exe 20
color 47
millisleep.exe 20
color 57
millisleep.exe 20
color 67
millisleep.exe 20
color 77
millisleep.exe 20
color 08
millisleep.exe 20
color 18
millisleep.exe 20
color 28
millisleep.exe 20
color 38
millisleep.exe 20
color 48
millisleep.exe 20
color 58
millisleep.exe 20
color 68
millisleep.exe 20
color 78

millisleep.exe 20
color 80
millisleep.exe 20
color 90
millisleep.exe 20
color a0
millisleep.exe 20
color b0
millisleep.exe 20
color c0
millisleep.exe 20
color d0
millisleep.exe 20
color e0
millisleep.exe 20
color f0
millisleep.exe 20
color 81
millisleep.exe 20
color 91
millisleep.exe 20
color a1
millisleep.exe 20
color b1
millisleep.exe 20
color c1
millisleep.exe 20
color d1
millisleep.exe 20
color e1
millisleep.exe 20
color f1
millisleep.exe 20
color 82
millisleep.exe 20
color 92
millisleep.exe 20
color a2
millisleep.exe 20
color b2
millisleep.exe 20
color c2
millisleep.exe 20
color d2
millisleep.exe 20
color e2
millisleep.exe 20
color f2
millisleep.exe 20
color 83
millisleep.exe 20
color 93
millisleep.exe 20
color a3
millisleep.exe 20
color b3
millisleep.exe 20
color c3
millisleep.exe 20
color d3
millisleep.exe 20
color e3
millisleep.exe 20
color f3
millisleep.exe 20
color 0f
REM if "%theme%"=="def" (
REM color 0f
REM )
REM if "%theme%"=="inv" (
REM color f0
REM )
REM if "%theme%"=="rnd" (
REM color af
REM )

REM if "%theme%"=="pokemon" (
REM color cf
REM )
)

if "%command%"=="fullscreen" (
start fullscreen.vbs
)

if "%command%"=="exit" (
start end.mp3
echo And IIIIIIIIIIIIIIEEEEEEEIIIIIIIIIIIIIIEEEEEEEEEEEEEEEEEEEEEEEEIIIIIIIIIIIIIIIII WILL ALWAYS LOVE,
timeout /t 9 /NOBREAK >nul
echo YOUUUUUUUUUUUUUUUUUUUUOOOUUUUUUUUUUUUOOOUUUUUUUUUUUUUU
timeout /t 2 /NOBREAK >nul
echo dont lev meh
taskkill /f /im cmd.exe >nul
)
set command=""
goto :commandhandler

:pluginhandling
:listplugins
echo List of plugins found:
for %%f in (plugins\*.bat) do (
echo %%f
)
goto :beginning
:commandlistplugins
echo List of plugins found:
for %%f in (plugins\*.bat) do (
echo %%f
)
goto :commandhandler

:errorhandling
if "%error%" == "nodatafile" (
echo WHAT TO DO
echo.
echo Either:
echo 1. Go sit in a corner and cry,
echo or 2. detete this version of BruceOS and reinstall it from https://github.com/TechnoBiscuit/BRUCE-OS
echo.
echo press f to pay respect to the failure of this program
pause >nul
goto :EOF
) else (
echo hi
)

:EOF
taskkill /f /im wscript.exe
exit