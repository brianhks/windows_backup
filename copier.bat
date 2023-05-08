echo off
@set switches=/M /S /V /C /R /Y /I

:start
if not "%~1%"=="" goto copy
goto exit

:copy
echo on
xcopy "%~1*.*" "%backup_drive%%~1" %switches%
@echo off
shift
goto start

:exit