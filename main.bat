@echo off
:startup
:startupanim
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
goto :beginning
) else (
echo ERROR 0001 - FATAL - DATA FILE CAN NOT BE FOUND.
set "error=nodatafile"
goto :errorhandling
)

:beginning
echo beginning
SetLocal EnableDelayedExpansion
pause
Set _count=1
For /f "tokens=*" %%A in ("data.txt") do (
if !_count! EQU 1 ("Set /p "_Input=%%A")
set /a _count+=1
)
pause
if "%_Input%" == "false" (
goto :startup
) else (
echo hi
pause
)
goto :EOF

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
exit