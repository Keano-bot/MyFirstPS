

:: BatchGotAdmin
:-------------------------------------
REM  --> Check for permissions
>nul 2>&1 "%SYSTEMROOT%\system32\cacls.exe" "%SYSTEMROOT%\system32\config\system"

REM --> If error flag set, we do not have admin.
if (%errorlevel%) NEQ '0' (
    echo Requesting administrative privileges...
    goto UACPrompt
) else ( goto gotAdmin )

:UACPrompt
    echo Set UAC = CreateObject^("Shell.Application"^) > "%temp%\getadmin.vbs"
    set params = %*:"=""
    echo UAC.ShellExecute "cmd.exe", "/c %~s0 %params%", "", "runas", 1 >> "%temp%\getadmin.vbs"

    "%temp%\getadmin.vbs"
    del "%temp%\getadmin.vbs"
    exit /B

:gotAdmin
    pushd "%CD%"
    CD /D "%~dp0"
:--------------------------------------

if not exist "C:\script" mkdir C:\script it wll create a directory only if the folder does not exist.


DEL C:\script\Informatie.txt
ECHO ======================================================================
ECHO Even geduld terwijl wij informatie over de computer ophalen!
ECHO ======================================================================
echo datum: %DATE% >> C:\script\Informatie.txt
echo datum: %DATE%
ECHO tijd: %TIME% >> C:\script\Informatie.txt
ECHO tijd: %TIME%
ECHO ======================================================================
ECHO naam computer: %ComputerName% 
ECHO naam computer: %ComputerName% >>C:\script\Informatie.txt
ECHO ======================================================================
pause



wmic /output:C:\script\InstallList.txt product get name,version


PAUSE