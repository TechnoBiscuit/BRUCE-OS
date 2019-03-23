@echo off
:startup
:startupanim
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
echo beginning
pause
goto :EOF

:pluginhandling
:listplugins
echo List of plugins found:
for %%f in (plugins\*.bat) do (
echo %%f
)
goto :beginning

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