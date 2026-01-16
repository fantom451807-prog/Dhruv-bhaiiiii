#!/bin/bash

echo "YouTube Video Downloader Bot"
echo "============================"
echo ""

# Check Python
if ! command -v python3 &> /dev/null; then
    echo "Error: Python3 is not installed!"
    echo "Please install Python 3.8+"
    exit 1
fi

# Check requirements
if [ ! -f "requirements.txt" ]; then
    echo "Error: requirements.txt not found!"
    exit 1
fi

# Install requirements
echo "Installing required packages..."
pip3 install -r requirements.txt

# Check .env file
if [ ! -f ".env" ]; then
    echo ""
    echo "========================================="
    echo "IMPORTANT: .env file not found!"
    echo "========================================="
    echo ""
    echo "Please create .env file with:"
    echo "TELEGRAM_BOT_TOKEN=your_bot_token"
    echo "ADMIN_USER_ID=your_telegram_id"
    echo ""
    exit 1
fi

# Run the bot
echo ""
echo "Starting YouTube Downloader Bot..."
echo "Press Ctrl+C to stop"
echo ""
python3 youtube_bot.py
