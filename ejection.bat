@echo off
set disk=e:
set startTime=%time%
for /F "usebackq tokens=1,2 delims==" %%i in (`wmic os get LocalDateTime /VALUE 2^>NUL`) do if '.%%i.'=='.LocalDateTime.' set ldt=%%j
set jour=%ldt:~0,4%-%ldt:~4,2%
set log=log\log%jour%.txt 
echo date de la création du log  %jour% >>%log%
echo debut  ejection a  %date%  %startTime% >>%log%
freeeject %disk%
echo  fin  ejection a  %date% %time% >>%log%

