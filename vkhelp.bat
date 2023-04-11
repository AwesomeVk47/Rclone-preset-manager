@echo off
title= AwesomeVk47's rclone helper.
@echo ------------------------------------Automator by AwesomeVk47-----------------------------------------
@echo ------------------------------------------------------------------------------------------------------
@echo ------------------------------------------------------------------------------------------------------



:start
ECHO.
ECHO 1. Closing all command windows terminates all tasks?
ECHO 2. How to get client id and client secret for google drive?
ECHO 3. Why do so many windows open when I execute a preset?
ECHO 4. How to set a scheduled task or run it hidden?
set choice=
set /p choice=Type the number for desired choice:
if not '%choice%'=='' set choice=%choice:~0,1%
if '%choice%'=='1' goto 1
if '%choice%'=='2' goto 2
if '%choice%'=='3' goto 1
if '%choice%'=='4' goto 3
ECHO "%choice%" is not valid, try again
ECHO.
goto start
:1
ECHO When you start a task few new windows will open, not all of them are required to be kept open.
ECHO Only those windows where something like "rclone service has been started" or if you are doing a sync job it will show progess of sync cannot be closed all other windows can be closed safely.
goto start

:2
cd "vkPRESETS"
cd "help"
"gdrive.txt"
goto start

:3
cd "vkPRESETS"
cd "help"
"Schedule.txt"
goto start



















