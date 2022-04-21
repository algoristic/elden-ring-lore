@echo off

set DEWEY=C:\dev\projects\misc\dewey

set COMMAND=%DEWEY%\build.ps1
set COMMAND=%COMMAND% -Src .
set COMMAND=%COMMAND% -Dest .\build
set COMMAND=%COMMAND% -Style %DEWEY%\src\main\resources\lib\style.css
set COMMAND=%COMMAND% -StyleExtension %DEWEY%\\src\main\resources\web\custom.css
set COMMAND=%COMMAND% -StyleTheme .\src\style\theme.css
set COMMAND=%COMMAND% -Templates %DEWEY%\src\main\resources\templates
set COMMAND=%COMMAND% -TocLevels 4
set COMMAND=%COMMAND% -Production:$true
set COMMAND=%COMMAND% -Flatten:$true
set COMMAND=%COMMAND% -LogLevel INFO

powershell.exe -ExecutionPolicy Unrestricted -Command %COMMAND%

pause
