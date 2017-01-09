Prompt Go Caddy --
TITLE Caddy Command Prompt
ECHO Shuting down CADDY and subprocesses if running.
taskkill /IM caddy.exe /f /t
ECHO Starting CADDY .
REM PHP FastCGI on windows by default stops after 500 requests due to memory and reliability, but does not restart.
REM Setting PHP_FCGI_MAX_REQUESTS to 0 prevents this behaviour, but you must set a task to restart entire process set periodically
set PHP_FCGI_MAX_REQUESTS=0
:start
 
C:\BCSDEV\XAMPP\htdocs\PRODUCTION\utilities\caddy\caddy.exe -version
C:\BCSDEV\XAMPP\htdocs\PRODUCTION\utilities\caddy\caddy.exe -quic -log c:\logs\MAINCADDYRUNLOG.log

REM loop to restart - http://stackoverflow.com/a/34458348/6244
REM Whenever caddy is killed (by the other script, should restart automatically.)
ECHO ReStarting Caddy after shutdown 
Echo Restarting Caddy after Shutdown >> c:\logs\filerestarts.txt
 date /t >>  c:\logs\filerestarts.txt
 time /t >> c:\logs\filerestarts.txt
 date /t 
 time /t 
goto start