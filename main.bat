@echo off
:startup
:startupanim
title BruceOS
start startup.wav
start switch1.vbs
start fullscreen.vbs
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
echo fullscreen         Take BruceOS in and out of fullscreen mode.
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
echo Not yet implemented.
)

if "%command%"=="fullscreen" (
start fullscreen.vbs
)

if "%command%"=="exit" (
echo And IIIIIIIIIIIIIIEEEEEEEIIIIIIIIIIIIIIEEEEEEEEEEEEEEEEEEEEEEEEIIIIIIIIIIIIIIIII WILL ALWAYS REMEMBER,
timeout /t 3 /NOBREAK >nul
echo YOUUUUUUUUUUUUUUUUUUUUOOOUUUUUUUUUUUUOOOUUUUUUUUUUUUUU
timeout /t 3 /NOBREAK >nul
echo dont lev meh
taskkill /f /im cmd.exe
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