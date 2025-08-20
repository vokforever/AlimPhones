@echo off
echo ========================================
echo    AlimPhones Web Application
echo ========================================
echo.
echo Installing dependencies...
pip install -r requirements.txt
echo.
echo Starting web server...
echo.
echo The application will be available at:
echo http://localhost:5000
echo.
echo Press Ctrl+C to stop the server
echo.
python app.py
pause
