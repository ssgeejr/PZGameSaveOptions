@echo off
setlocal
:PROMPT
SET /P AREYOUSURE=Restore Last Save (Y/[N])?
IF /I "%AREYOUSURE%" NEQ "Y" GOTO END
rd /s /q "%HOMEPATH%\Zomboid\Saves\Builder\01"
echo Creating New Archive: Rosewood01
7z a -tzip %HOMEPATH%\Zomboid\Saves\Rosewood01.zip %HOMEPATH%\Zomboid\Saves\Builder\Rosewood01


