@echo off
title serveo easy commander

cls
if exist "ssh.exe" (
    echo ssh exist
	timeout 3
	echo.
) else (
    echo ssh not exist
	pause
)

cls
echo __________________________________________________
echo     __   ___  __        ___  __         ___ ___    
echo    /__` ^|__  ^|__) \  / ^|__  /  \  ^|\ ^| ^|__   ^|    
echo    .__/ ^|___ ^|  \  \/  ^|___ \__/ .^| \^| ^|___  ^|    
echo.
echo __________________________________________________  
echo         // serveo.net easy commander v1
echo -------------------------------------------------
echo(  milio48 ^| pescyte ^| IDBTE4M ^| javcode ^| zerobyte
REM                        v1 06 Jan 2018:
echo __________________________________________________
echo.
echo      *ssh installed required*
echo parameter : [http/tcp] [local port] [option]
echo.
echo      parameter [option] : 0      = request random port
echo      parameter [option] : change = change http subdomain forwarded
echo      parameter [option] : 4869   = custom port number to forwarding (using tcp)
echo.
echo  http  80 0             //localhost:80 forward to public https
echo.
echo.
echo  tcp 4869 0             //random tcp port forwarding   
echo  tcp 4869 1945          //custom tcp port forwarding    
echo.

if "%1" == "" (
	echo __________________________________________________
	set /p mode= "mode (http/tcp):"
	echo __________________________________________________
	set /p local= "local port:"
	echo __________________________________________________
	set /p option= "option:"
) else (
	set mode=%1
	set local=%2
	set option=%3
)
	echo.
	echo running : %mode% %local% %option%
	echo.
	
if %mode%==http (
	if %option%==0           (ssh -R 80:localhost:%local% serveo.net)
	if %option%==change      (ssh -R 80:localhost:%local% %random%@serveo.net) else (
	if %option% GEQ 1        (ssh -R %option%:localhost:%local% serveo.net) )
)

if %mode%==tcp (
	if %option%==0    (ssh -R 80:localhost:%local% serveo.net)
	if %option% GEQ 1 (ssh -R %option%:localhost:%local% serveo.net)
)
pause
