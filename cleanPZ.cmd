@echo off
setlocal
:PROMPT
SET /P AREYOUSURE=Are you sure you want to clean save and backuP (Y/[N])?
IF /I "%AREYOUSURE%" NEQ "Y" GOTO END

echo Deleteing Save
rd /s /q "%HOMEPATH%\Zomboid\Saves\Builder\01"
echo Deleteing Backup
rd /s /q "%HOMEPATH%\Zomboid\Saves\01"

:END
endlocal