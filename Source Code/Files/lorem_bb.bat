@Echo off
setlocal enabledelayedexpansion
Mode 80,25
set text=Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua.
for /l %%p in (0,1,5) do (for %%A in (%text%) do (
    call :r
    batbox /c !c! /d "%%A "
))
batbox /c 0xF0 /d ""
If /i "%~1" NEQ "" (pause>NUL)
exit /b

:r
set /a c=%random% %% 7 + 1
goto :eof
