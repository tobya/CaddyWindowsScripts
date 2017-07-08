REM This script should be called on a regular (hours) basis to reset the php fast-cgi processes (caddy reloads to achieve this)
ECHO Shuting down CADDY and subprocesses (fastcgi)
taskkill /IM caddy.exe /f /t
