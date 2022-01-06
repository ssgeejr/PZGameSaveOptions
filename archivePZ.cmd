@ECHO OFF

if "%~1"=="" (
    echo No parameters have been provided.
) else (
    echo Creating New Archive: %1
	7z a -tzip %HOMEPATH%\Zomboid\Saves\%1.zip %HOMEPATH%\Zomboid\Saves\01
)


