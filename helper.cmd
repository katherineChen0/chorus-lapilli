@echo off
setlocal

:: Function to show usage
:usage
echo Usage: %~nx0 [command]
echo Commands:
echo   init         Initialize your system to work with Assignment 3.
echo   dev          Run a dev server to view your solution.
echo   test         Run Selenium integration tests on your solution.
echo   zip          Prepare a ZIP file for submission.
exit /b 1

:: Check if any argument is provided
if "%~1"=="" (
    echo Error: No command provided.
    call :usage
    exit /b 1
)

:: Handle 'init' command
:init_command
if not "%~1"=="" (
    echo Error: Incorrect usage of 'init' command.
    call :usage
    exit /b 1
)

if not exist package-lock.json (
    echo Installing npm packages...
    call npm i || (
        echo Your system does not have npm installed. Please make sure you've installed Node.js on your system.
        exit /b 1
    )
)

if not exist venv (
    echo Creating Python virtual environment...
    call python -m venv venv || (
        echo Your system does not have Python 3 (at least 3.11) installed. Please make sure to install it before running this script.
        exit /b 1
    )

    call venv\Scripts\python -m pip install -r requirements.txt
)

echo Success: Initialized your system to work on Assignment 3.
exit /b 0

:: Handle 'zip' command
:zip_command
if not "%~1"=="" (
    echo Error: Incorrect usage of 'zip' command.
    call :usage
    exit /b 1
)

if not exist tic-tac-toe.txt (
    echo Make sure to have a complete log of your tutorial run through in tic-tac-toe.txt.
)

if not exist chorus-lapilli.txt (
    echo Make sure to have a complete log of how you built your solution in chorus-lapilli.txt.
)

call npm run zip >nul 2>&1
move /Y chorus-lapilli.zip assign.zip >nul
echo Success: Created assign.zip.
exit /b 0

:: Command switcher
if /i "%~1"=="init" (
    shift
    call :init_command %*
) else if /i "%~1"=="zip" (
    shift
    call :zip_command %*
) else if /i "%~1"=="dev" (
    call npm run dev
) else if /i "%~1"=="test" (
    shift
    call venv\Scripts\python tester.py %*
) else (
    echo Error: Unknown command '%~1'
    call :usage
    exit /b 1
)
