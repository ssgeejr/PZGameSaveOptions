@echo off
setlocal
:PROMPT
SET /P AREYOUSURE=Restore Last Save (Y/[N])?
IF /I "%AREYOUSURE%" NEQ "Y" GOTO END

echo Deleting save game 01
rd /s /q "%HOMEPATH%\Zomboid\Saves\Builder\01"
echo Restoring 01 from backup
robocopy "%HOMEPATH%\Zomboid\Saves\01" "%HOMEPATH%\Zomboid\Saves\Builder\01" /MIR

:END
endlocal