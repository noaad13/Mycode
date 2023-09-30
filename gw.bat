@echo off
for /f "tokens=2 delims=: skip=3" %%a in ('netsh wlan show profile') do for /f "usebackq" %%b in ('%%a') do echo %%b & netsh wlan show profile "%%b" key=clear | findstr Cont > %Temp%\Temp01.txt & for /f "delims=: tokens=2" %%e in ('type %Temp%\Temp01.txt') do for /f "usebackq" %%f in ('%%e') do echo %%f & echo.
pause