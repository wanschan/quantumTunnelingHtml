@echo off
chcp 65001 >nul
cd /d "%~dp0"
echo Starting local preview at http://127.0.0.1:8123/index.html
start "" "http://127.0.0.1:8123/index.html"
where py >nul 2>nul && (py -m http.server 8123) || (python -m http.server 8123)
