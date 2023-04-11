@echo off
title= AwesomeVk47's preset manager.
@echo ------------------------------------Automator by AwesomeVk47-----------------------------------------
@echo ------------------------------------------------------------------------------------------------------
@echo ------------------------------------------------------------------------------------------------------







@ECHO off

set "rcdir=%cd%"

:start
ECHO.
ECHO 1. Add a new sync task
ECHO 2. Task to mount as local drive
ECHO 3. Task to mount as network drive
ECHO 4. Add a new copy task
set choice=
set /p choice=Type the number for desired choice:
if not '%choice%'=='' set choice=%choice:~0,1%
if '%choice%'=='1' goto 1
if '%choice%'=='2' goto 2
if '%choice%'=='3' goto 3
if '%choice%'=='4' goto 4
ECHO "%choice%" is not valid, try again
ECHO.
goto start
:1
ECHO.
ECHO 1. Sync from local storage to cloud
ECHO 2. Sync from cloud to local storage
set choice=
set /p choice=Type the number for desired choice:
if not '%choice%'=='' set choice=%choice:~0,1%
if '%choice%'=='1' goto a
if '%choice%'=='2' goto b
ECHO "%choice%" is not valid, try again
ECHO.
goto 1

:a
echo Plese note that sync is NOT bidirectional Only the Source folder will be mirrored to target deleting some files if needed YOU HAVE BEEN WARNED
set /p np=Type the name of preset:
set /p rn1=Please type the full name of remote (case sensitive):
set /p sp=Please type the full path of source:
set /p tp=Please type the full path of target (leave blank to sync to home directory):
type NUL > "%np%.bat"
ECHO @echo off >> "%np%.bat"
ECHO cd "%rcdir%" >> "%np%.bat"
ECHO rclone sync "%sp%" "%rn1%:%tp%" --progress >> "%np%.bat"
copy "%np%.bat" "vkPRESETS\syncltoc" /y
rename "%np%.bat" "%np%.mt" 
copy "%np%.mt" "vkPRESETS\mtable" /y
copy "%np%.mt" "vkPRESETS\sync" /y
del "%np%.mt" 
goto start

:b
echo Plese note that sync is NOT bidirectional Only the Source folder will be mirrored to target deleting some files if needed YOU HAVE BEEN WARNED
set /p np=Type the name of preset:
set /p rn1=Please type the full name of remote (case sensitive):
set /p sp=Please type the full path of source:
set /p tp=Please type the full path of target (leave blank to sync to home directory):
type NUL > "%np%.bat"
ECHO @echo off >> "%np%.bat"
ECHO cd "%rcdir%" >> "%np%.bat"
ECHO rclone sync "%rn1%:%sp%" "%tp%" --progress >> "%np%.bat"
copy "%np%.bat" "vkPRESETS\syncctol" /y
rename "%np%.bat" "%np%.mt" 
copy "%np%.mt" "vkPRESETS\mtable" /y
copy "%np%.mt" "vkPRESETS\sync" /y
del "%np%.mt" 
goto start


:2
set /p np=Type the name of preset:
set /p rn1=Please type the full name of remote (case sensitive):
set /p dl=Please type the drive letter:
set /p cr=Please type custom starting piont in cloud drive (NOTE:if this is left blank the actual root will be mounted):
type NUL > "%np%.bat"
ECHO @echo off >> "%np%.bat"
ECHO cd "%rcdir%" >> "%np%.bat"
ECHO rclone mount "%rn1%:%cr%" %dl%: >> "%np%.bat"
copy "%np%.bat" "vkPRESETS\mountlocal" /y
rename "%np%.bat" "%np%.mt" 
copy "%np%.mt" "vkPRESETS\mtable" /y 
del "%np%.mt" 
goto start
:3
set /p np=Type the name of preset:
set /p rn1=Please type the full name of remote (case sensitive):
set /p dl=Please type the drive letter:
set /p cr=Please type custom starting piont in cloud drive (NOTE:if this is left blank the actual root will be mounted):
type NUL > "%np%.bat"
ECHO @echo off >> "%np%.bat"
ECHO cd "%rcdir%" >> "%np%.bat"
ECHO rclone mount "%rn1%:%cr%" %dl%: --fuse-flag --VolumePrefix=\ND\Rclone >> "%np%.bat"
copy "%np%.bat" "vkPRESETS\mountnetwork" /y
rename "%np%.bat" "%np%.mt" 
copy "%np%.mt" "vkPRESETS\mtable" /y
del "%np%.mt" 
goto start
















:4
ECHO.
ECHO 1. Copy from local storage to cloud
ECHO 2. Copy from cloud to local storage
set choice=
set /p choice=Type the number for desired choice:
if not '%choice%'=='' set choice=%choice:~0,1%
if '%choice%'=='1' goto c
if '%choice%'=='2' goto d
ECHO "%choice%" is not valid, try again
ECHO.
goto 1

:c

set /p np=Type the name of preset:
set /p rn1=Please type the full name of remote (case sensitive):
set /p sp=Please type the full path of source:
set /p tp=Please type the full path of target (leave blank to sync to home directory):
type NUL > "%np%.bat"
ECHO @echo off >> "%np%.bat"
ECHO cd "%rcdir%" >> "%np%.bat"
ECHO rclone copy "%sp%" "%rn1%:%tp%" --progress >> "%np%.bat"
copy "%np%.bat" "vkPRESETS\cpltoc" /y
rename "%np%.bat" "%np%.mt" 
copy "%np%.mt" "vkPRESETS\mtable" /y
copy "%np%.mt" "vkPRESETS\copy" /y
del "%np%.mt" 
goto start

:d

set /p np=Type the name of preset:
set /p rn1=Please type the full name of remote (case sensitive):
set /p sp=Please type the full path of source:
set /p tp=Please type the full path of target (leave blank to sync to home directory):
type NUL > "%np%.bat"
ECHO @echo off >> "%np%.bat"
ECHO cd "%rcdir%" >> "%np%.bat"
ECHO rclone copy "%rn1%:%sp%" "%tp%" --progress >> "%np%.bat"
copy "%np%.bat" "vkPRESETS\cpctol" /y
rename "%np%.bat" "%np%.mt" 
copy "%np%.mt" "vkPRESETS\mtable" /y
copy "%np%.mt" "vkPRESETS\copy" /y
del "%np%.mt" 
goto start
