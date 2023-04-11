
@echo off
title= AwesomeVk47's rclone helper.
@echo ------------------------------------Automator by AwesomeVk47-----------------------------------------
@echo ------------------------------------------------------------------------------------------------------
@echo ------------------------------------------------------------------------------------------------------











@ECHO off

:start
ECHO.
ECHO a. Add\edit\delete\rename\copy remote
ECHO l. Mount Remote as local drive
ECHO n. Mount remote as network drive
ECHO r. List Remotes
ECHO f. Start rclone in free mode
ECHO s. Start Sync
ECHO p. Preset manager
ECHO e. Execute a preset
ECHO g. Open GUI
ECHO u. Check for update and open GUI
ECHO b. Redownload broken GUI
ECHO h. Help
ECHO c. Start copy
set choice=
set /p choice=Type the number for desired choice:
if not '%choice%'=='' set choice=%choice:~0,1%
if '%choice%'=='a' goto a
if '%choice%'=='l' goto l
if '%choice%'=='n' goto n
if '%choice%'=='r' goto r
if '%choice%'=='f' goto f
if '%choice%'=='s' goto s
if '%choice%'=='p' goto p
if '%choice%'=='e' goto e
if '%choice%'=='g' goto g
if '%choice%'=='u' goto u
if '%choice%'=='b' goto b
if '%choice%'=='h' goto h
if '%choice%'=='c' goto c
ECHO "%choice%" is not valid, try again
ECHO.
goto start
:a
start rclone config
goto start
:l
set /p rn=Please type the full name of remote (case sensitive):
set /p dl=Please type the drive letter of drive:
set /p cr=Please type custom starting piont in cloud drive (NOTE:if this is left blank the actual root will be mounted):
start rclone mount "%rn%:%cr%" %dl%:
goto start
:n
set /p rn=Please type the full name of remote (case sensitive):
set /p dl=Please type the drive letter of drive:
set /p cr=Please type custom starting piont in cloud drive (NOTE:if this is left blank the actual root will be mounted):
start rclone mount "%rn%:%cr%" %dl%: --fuse-flag --VolumePrefix=\ND\Rclone
goto start
:r
start rclone config
goto start
:f
start


:s
ECHO
ECHO 1. Sync from local drive to cloud
ECHO 2. Sync from cloud to local drive
set choice=
set /p choice=Type the number for desired choice:
if not '%choice%'=='' set choice=%choice:~0,1%
if '%choice%'=='1' goto 1
if '%choice%'=='2' goto 2
ECHO "%choice%" is not valid, try again
ECHO.
goto s


:1
echo Plese note that sync is NOT bidirectional Only the Source folder will be mirrored to target deleting some files if needed YOU HAVE BEEN WARNED
set /p rn1=Please type the full name of remote (case sensitive):
set /p sp=Please type the full path of source:
set /p tp=Please type the full path of target (leave blank to sync to home directory):
rclone sync "%sp%" "%rn1%:%tp%" --progress
goto start

:2
echo Plese note that sync is NOT bidirectional Only the Source folder will be mirrored to target deleting some files if needed YOU HAVE BEEN WARNED
set /p rn1=Please type the full name of remote (case sensitive):
set /p sp=Please type the full path of source  (leave blank to sync to home directory):
set /p tp=Please type the full path of target:
rclone sync "%rn1%:%sp%" "%tp%" --progress
goto start

:p
start vkpresetmanager.bat
goto start
:e
set /p npex=Please type the name of desired preset:
cd "vkPRESETS"
cd "mountlocal"
start cmd /c "%npex%.bat"
cd ..
cd "mountnetwork"
start cmd /c "%npex%.bat"
cd ..
cd "syncltoc"
start cmd /c "%npex%.bat"
cd ..
cd "syncctol"
start cmd /c "%npex%.bat"
cd..
cd "cpctol"
start cmd /c "%npex%.bat"
cd..
cd "cpltoc"
start cmd /c "%npex%.bat"
cd ..
cd ..
goto start
:g
start rclone rcd --rc-web-gui
exit
:u
start rclone rcd --rc-web-gui --rc-web-gui-update
exit
:b
start rclone rcd --rc-web-gui --rc-web-gui-force-update
goto start
:h
start vkhelp.bat
goto start


:c
ECHO
ECHO 1. Copy from local drive to cloud
ECHO 2. Copy from cloud to local drive
set choice=
set /p choice=Type the number for desired choice:
if not '%choice%'=='' set choice=%choice:~0,1%
if '%choice%'=='1' goto 3
if '%choice%'=='2' goto 4
ECHO "%choice%" is not valid, try again
ECHO.
goto c

:3

set /p rn1=Please type the full name of remote (case sensitive):
set /p sp=Please type the full path of source:
set /p tp=Please type the full path of target (leave blank to sync to home directory):
rclone copy "%sp%" "%rn1%:%tp%" --progress
goto start

:4
set /p rn1=Please type the full name of remote (case sensitive):
set /p sp=Please type the full path of source (leave blank to sync to home directory):
set /p tp=Please type the full path of target:
rclone copy "%rn1%:%sp%" "%tp%" --progress
goto start