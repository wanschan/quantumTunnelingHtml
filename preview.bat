@echo off
chcp 65001 >nul
cd /d "%~dp0"
echo ==========================================================
echo   Quantum Tunneling - local preview server
echo ----------------------------------------------------------
echo   PC    : http://127.0.0.1:8123/index.html
for /f "tokens=2 delims=:" %%a in ('ipconfig ^| findstr /c:"IPv4"') do (
  for /f "tokens=* delims= " %%b in ("%%a") do echo   Phone : http://%%b:8123/index.html   (same Wi-Fi)
)
echo ----------------------------------------------------------
echo   Keep this window open. Closing it stops the server.
echo ==========================================================
start "" "http://127.0.0.1:8123/index.html"
where py >nul 2>nul && (py -m http.server 8123) || (python -m http.server 8123)
