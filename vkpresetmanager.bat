@echo off
title= AwesomeVk47's preset manager.
@echo ------------------------------------Automator by AwesomeVk47-----------------------------------------
@echo ------------------------------------------------------------------------------------------------------
@echo ------------------------------------------------------------------------------------------------------






@ECHO off

:start
ECHO.
ECHO 1. Add Preset/Add property to existing preset
ECHO 2. Remove Preset
ECHO 3. List all Presets
ECHO 4. Rename Preset
ECHO 5. List all presets with "sync" command
ECHO 6. List all presets with "Mount as local drive" command
ECHO 7. List all presets with "Mount as network drive" command
ECHO 8. List all presets with "copy" command
ECHO s. Create shortcut for preset(s)
set choice=
set /p choice=Type the number for desired choice:
if not '%choice%'=='' set choice=%choice:~0,1%
if '%choice%'=='1' goto 1
if '%choice%'=='2' goto 2
if '%choice%'=='3' goto 3
if '%choice%'=='4' goto 4
if '%choice%'=='5' goto 5
if '%choice%'=='6' goto 6
if '%choice%'=='7' goto 7
if '%choice%'=='s' goto s
if '%choice%'=='8' goto 8
ECHO "%choice%" is not valid, try again
ECHO.
goto start


:1
start vkaddpresetmng.bat
goto start


:2
set /p rnp=Type the name of preset:
cd "vkPRESETS"
cd "mountlocal"
del /f "%rnp%.bat"
cd ..
cd "mountnetwork"
del /f "%rnp%.bat"
cd ..
cd "sync"
del /f "%rnp%.mt"
cd ..
cd "mtable"
del /f "%rnp%.mt"
cd ..
cd "syncltoc"
del /f "%rnp%.bat"
cd ..
cd "syncctol"
del /f "%rnp%.bat"
cd ..
cd "copy"
del /f "%rnp%.mt"
cd ..
cd "cpctol"
del /f "%rnp%.bat"
cd ..
cd "cpltoc"
del /f "%rnp%.bat"
cd ..
cd ..
goto start


:3
cd "vkPRESETS"
cd "mtable"
for %%f in ("*.mt") do @echo %%~nf
cd ..
cd ..
pause
goto start

:4
set /p opn=Type the old preset name:
set /p npn=Type the new preset name:
cd "vkPRESETS"
cd "mountlocal"
rename "%opn%.bat" "%npn%.bat"
cd ..
cd "mountnetwork"
rename "%opn%.bat" "%npn%.bat"
cd ..
cd "sync"
rename "%opn%.mt" "%npn%.mt"
cd ..
cd "mtable"
rename "%opn%.mt" "%npn%.mt"
cd ..
cd "syncltoc"
rename "%opn%.bat" "%npn%.bat"
cd ..
cd "syncctol"
rename "%opn%.bat" "%npn%.bat"
cd ..
cd "copy"
rename "%opn%.mt" "%npn%.mt"
cd ..
cd "cpltoc"
rename "%opn%.bat" "%npn%.bat"
cd ..
cd "cpctol"
rename "%opn%.bat" "%npn%.bat"
cd ..
cd ..
goto start

:5
ECHO
ECHO 1. List all Sync tasks
ECHO 2. List sync tasks from local drive to cloud
ECHO 3. List sync tasks from cloud to local drive.
set choice=
set /p choice=Type the number for desired choice:
if not '%choice%'=='' set choice=%choice:~0,1%
if '%choice%'=='1' goto a
if '%choice%'=='2' goto b
if '%choice%'=='3' goto c

ECHO "%choice%" is not valid, try again
ECHO.
goto 5




:a
cd "vkPRESETS"
cd "sync"
for %%f in ("*.mt") do @echo %%~nf
cd ..
cd ..
pause
goto start

:b
cd "vkpresets"
cd "syncltoc"
for %%f in ("*.bat") do @echo %%~nf
cd ..
cd ..
pause
goto start

:c
cd "vkpresets"
cd "syncctol"
for %%f in ("*.bat") do @echo %%~nf
cd ..
cd ..
pause
goto start

:6
cd "vkPRESETS"
cd "mountlocal"
for %%f in ("*.bat") do @echo %%~nf
cd ..
cd ..
pause
goto start

:7
cd "vkPRESETS"
cd "mountnetwork"
for %%f in ("*.bat") do @echo %%~nf
cd ..
cd ..
pause
goto start

:s
ECHO Type the drive letter where Desktop is located, if you don't know just type "C"
set /p dl=Type the Drive letter:
set "rcdir=%cd%"
set /p sn=Type the desired shortcut name:
set /p pn=Type the name of preset to execute:
type NUL > "%sn%.bat"
ECHO @echo off >> "%sn%.bat"
ECHO pushd "%rcdir%" >> "%sn%.bat"
ECHO cd "vkPRESETS" >> "%sn%.bat"
ECHO cd "mountlocal" >> "%sn%.bat"
ECHO start cmd /c "%pn%.bat" >> "%sn%.bat"
ECHO cd .. >> "%sn%.bat"
ECHO cd "mountnetwork" >> "%sn%.bat"
ECHO start cmd /c "%pn%.bat" >> "%sn%.bat"
ECHO cd .. >> "%sn%.bat"
ECHO cd "cpltoc" >> "%sn%.bat"
ECHO start cmd /c "%pn%.bat" >> "%sn%.bat"
ECHO cd .. >> "%sn%.bat"
ECHO cd "cpctol" >> "%sn%.bat"
ECHO start cmd /c "%pn%.bat" >> "%sn%.bat"
ECHO cd .. >> "%sn%.bat"
ECHO cd "syncltoc" >> "%sn%.bat"
ECHO start cmd /c "%pn%.bat" >> "%sn%.bat"
ECHO cd ..
ECHO cd "syncctol" >> "%sn%.bat"
ECHO start cmd /c "%pn%.bat" >> "%sn%.bat"
ECHO cd .. >> "%sn%.bat"
ECHO cd .. >> "%sn%.bat"
copy "%sn%.bat" "%dl%:\Users\%USERNAME%\Desktop"
del "%sn%.bat"
goto start

:8
ECHO
ECHO 1. List all Copy tasks
ECHO 2. List copy tasks from local drive to cloud
ECHO 3. List copy tasks from cloud to local drive.
set choice=
set /p choice=Type the number for desired choice:
if not '%choice%'=='' set choice=%choice:~0,1%
if '%choice%'=='1' goto d
if '%choice%'=='2' goto e
if '%choice%'=='3' goto f

ECHO "%choice%" is not valid, try again
ECHO.
goto 8

:d
cd "vkPRESETS"
cd "copy"
for %%f in ("*.mt") do @echo %%~nf
cd ..
cd ..
pause
goto start

:e
cd "vkpresets"
cd "cpltoc"
for %%f in ("*.bat") do @echo %%~nf
cd ..
cd ..
pause
goto start

:f
cd "vkpresets"
cd "cpctol"
for %%f in ("*.bat") do @echo %%~nf
cd ..
cd ..
pause
goto start


