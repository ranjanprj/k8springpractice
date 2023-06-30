@echo off

FOR /F "tokens=4 delims= " %%i in ('route print ^| find " 0.0.0.0"') do set localIp=%%i

echo Your IP Address is: %localIp%