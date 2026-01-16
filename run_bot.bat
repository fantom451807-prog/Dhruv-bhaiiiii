@echo off
echo YouTube Video Downloader Bot
echo ============================
echo.

REM Check Python
python --version >nul 2>&1
if errorlevel 1 (
    echo Error: Python is not installed!
    echo Please install Python 3.8+ from python.org
    pause
    exit /b 1
)

REM Check requirements
if not exist "requirements.txt" (
    echo Error: requirements.txt not found!
    pause
    exit /b 1
)

REM Install requirements
echo Installing required packages...
pip install -r requirements.txt

REM Check .env file
if not exist ".env" (
    echo.
    echo =========================================
    echo IMPORTANT: .env file not found!
    echo =========================================
    echo.
    echo Please create .env file with:
    echo TELEGRAM_BOT_TOKEN=your_bot_token
    echo ADMIN_USER_ID=your_telegram_id
    echo.
    pause
    exit /b 1
)

REM Run the bot
echo.
echo Starting YouTube Downloader Bot...
echo Press Ctrl+C to stop
echo.
python youtube_bot.py

pause
