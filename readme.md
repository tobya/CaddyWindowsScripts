Windows Caddy Scripts
===========

Two scripts to run [caddy](https://caddyserver.com) with php fast-cgi reliably on windows.

RunCaddy.bat runs caddy and will restart whenever caddy is killed.

shutdownCaddy.bat kills Caddy and any subprocesses (essential for killing fast-cgi processes created with startup directive )

On my server I have a task that calls shutdownCaddy.bat every 5 hours.  I don't have very much traffic.  ON a busy site you may need to restart much more frequently.

Restart happens in sub 1 second timeframe.

Doesn't Taskkill cause a forced shutdown?
---

Yes.  However on windows there is no way of sending an interupt to a process such as Ctrl-C (well there are but they are all very involved.)

The shutdownCaddy.bat script does do a forcedkill and does NOT allow caddy to do a safe shutdown.  This has two effects. On a heavy traffic site there is a possibility of 502 errors.  Also no shutdown directives are executed.
