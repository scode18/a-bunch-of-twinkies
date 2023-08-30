@echo Off
for /f "tokens=6 delims=[]. " %%i in ('ver') do set build=%%i
reg add "HKCU\Software\Microsoft\Windows\DWM" /v "ColorPrevalence" /t REG_DWORD /d "1" /f >nul
reg add "HKCU\Software\Microsoft\Windows\DWM" /v "AccentColorInactive" /t REG_DWORD /d "3296097910" /f >nul
reg add "HKCU\Software\Microsoft\Windows\DWM" /v "ColorizationColor" /t REG_DWORD /d "3288365271" /f >nul
if %build% GEQ 22000 (reg add "HKLM\SOFTWARE\Microsoft\Windows\CurrentVersion\Shell Extensions\Blocked" /v "{e2bf9676-5f8f-435c-97eb-11607a5bedf7}" /t REG_SZ /d "" /f >nul
reg add "HKLM\SOFTWARE\WOW6432Node\Microsoft\Windows\CurrentVersion\Shell Extensions\Blocked" /v "{e2bf9676-5f8f-435c-97eb-11607a5bedf7}" /t REG_SZ /d "" /f >nul)
reg load "HKLM\NTUSER" "%SystemDrive%\Users\Default\NTUSER.DAT" >nul
reg add "HKLM\NTUSER\Software\Microsoft\Windows\DWM" /v "ColorPrevalence" /t REG_DWORD /d "1" /f >nul
reg add "HKLM\NTUSER\Software\Microsoft\Windows\DWM" /v "AccentColorInactive" /t REG_DWORD /d "3296097910" /f >nul
reg add "HKLM\NTUSER\Software\Microsoft\Windows\DWM" /v "ColorizationColor" /t REG_DWORD /d "3288365271" /f >nul
reg unload "HKLM\NTUSER" >nul
exit /b