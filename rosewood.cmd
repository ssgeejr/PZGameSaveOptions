@echo off
setlocal
:PROMPT
SET /P AREYOUSURE=Create new Rosewood Save File (Y/[N])?
IF /I "%AREYOUSURE%" NEQ "Y" GOTO END

	echo Removing old archive file
	del /f /q %HOMEPATH%\Zomboid\Saves\Rosewood01.zip

	echo Creating New Archive: Rosewood01
	7z a -tzip %HOMEPATH%\Zomboid\Saves\Rosewood01.zip %HOMEPATH%\Zomboid\Saves\Builder\Rosewood01

:END
endlocal







