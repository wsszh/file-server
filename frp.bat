@echo off
md "c:\frp"
cd "c:\frp"
set "download=certutil.exe -urlcache -split -f"
%download% "https://github.com/wsszh/file-server/raw/main/frp_0.38.0_windows_test.zip" frp_0.38.0_windows_test.zip
powershell -command "Expand-Archive -Force '.\frp_0.38.0_windows_test.zip' '.'"
cd "frp_0.38.0_windows_test"
frpc.exe -c frpc.ini
pause