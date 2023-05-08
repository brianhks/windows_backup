@echo off

REM net use y: \\192.168.1.1\backup\usbdisk /PERSISTENT:NO
REM if not %errorlevel% == 0 goto end

@set backup_drive=%1\laptop_backup

@call copier "\Documents and Settings\bhawkins.DELL-LAPTOP\My Documents\csharp\" "\Documents and Settings\bhawkins.DELL-LAPTOP\Application Data\Thunderbird\Profiles\"

@set backup_drive=

REM net use y: /DELETE

:end
