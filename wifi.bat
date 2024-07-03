@echo off
setlocal enabledelayedexpansion

:getOS
set "OS="
for /f "delims=" %%i in ('ver') do set "ver=%%i"
echo %ver% | find "Windows" > nul
if %errorlevel% equ 0 set OS=Windows

if "%OS%"=="Windows" (
    call :get_wifi_windows
) else (
    echo "Unsupported operating system."
)
exit /b

:get_wifi_windows
(
    echo Wi-Fi Networks and Passwords:
    echo ============================
    for /f "tokens=*" %%i in ('netsh wlan show profiles ^| findstr /C:"All User Profile"') do (
        set "profile=%%i"
        set "profile=!profile:All User Profile     : =!"
        echo.
        echo Profile: !profile!
        for /f "tokens=2 delims=:" %%j in ('netsh wlan show profile name^="!profile!" key^=clear ^| findstr /C:"Key Content"') do (
            set "password=%%j"
            set "password=!password:~1!"
            echo Password: !password!
        )
    )
) > wifi.txt
