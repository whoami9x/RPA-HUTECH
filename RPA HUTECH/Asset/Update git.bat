@echo off
setlocal

set "WORKING_DIR=D:\RPA\"
cd /d "%WORKING_DIR%"
git pull origin master
cd /d "%~dp0"
timeout /t 3

endlocal

