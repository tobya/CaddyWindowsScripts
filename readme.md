Windows Caddy Scripts
===========

Two scripts to run caddy with php fast-cgi reliably on windows.

RunCaddy.bat runs caddy and will restart whenever caddy is killed.

shutdownCaddy.bat kills Caddy and any subprocesses (essential for killing fast-cgi processes created with startup command )

On my server I have a task that calls shutdownCaddy.bat every 5 hours.  I don't have very much traffic.  ON a busy site you may need to restart much more frequently.

Restart happens in sub 1 second timeframe.