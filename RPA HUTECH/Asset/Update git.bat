@echo off
setlocal
taskkill /f /im UiPath.Executor.exe
set "WORKING_DIR=D:\RPA\"
cd /d "%WORKING_DIR%"
git pull origin master
cd /d "%~dp0"
timeout /t 3

echo Starting bot...
"C:\Users\Administrator\AppData\Local\Programs\UiPath\Studio\UiRobot.exe" -file "D:\RPA\RPA HUTECH\Metabot.xaml"
endlocal

