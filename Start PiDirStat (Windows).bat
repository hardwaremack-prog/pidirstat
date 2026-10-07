@echo off
rem PiDirStat on Windows - scans the C: drive and opens the viewer in your browser.
rem Right-click this file and choose "Run as administrator" to include protected folders.
cd /d "%~dp0"
where py >nul 2>nul
if %errorlevel%==0 (
  py pidirstat.py C:\
) else (
  where python >nul 2>nul || goto nopython
  python pidirstat.py C:\
)
goto :eof
:nopython
echo PiDirStat needs Python. Get it free from https://www.python.org/downloads/
pause
