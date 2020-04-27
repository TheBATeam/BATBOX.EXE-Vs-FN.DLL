@Echo off
cls

Title Batbox vs Fn.dll - Demo - www.thebateam.org
Set "Path=%Path%;%cd%;%cd%\files"
Color 0a
Mode 80,25

:Main
Cls
Echo.
Echo.
Echo. You can compare the Return Time of each file ABOVE!
Echo. Starting Same File for Batbox and Fn.dll...
Echo.
Start "Fn.dll Test" Call RC "%cd%\files\lorem_fn.Bat" &&Start "Batbox Test" Call RC "%cd%\files\lorem_bb.Bat" 
pause
Echo.
exit