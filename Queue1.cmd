@ECHO OFF
SET queue_n=1
SET address=4058229495

SET plot_size=k32
SET RAM=3390
SET CPU=4
SET temp_disk=R
SET dest_disk=Q

SET bucket=128
SET app_ver=1.1.3

REM ==============================================================================
REM Не меняйте параметры ниже
SET qver=QChia v0.1 (http://github.com/chia-net-ru/QChia.git) 
SET temp_dir=%temp_disk%:\%queue_n%
SET dest_dir=%dest_disk%:\%address%\plot-%plot_size%
SET cmd_path=%AppData%\..\Local\chia-blockchain\app-%app_ver%\resources\app.asar.unpacked\daemon\chia.exe

ECHO %qver%
ECHO.
title Queue %queue_n% (%address%,%app_ver%) [%plot_size%,%RAM%,%CPU%,%bucket%,%temp_disk%,%dest_disk%] // %qver%

REM Очистка папки от предыдущего засева. Разные очереди должны засеиваться в разные папки!
rmdir /S /Q %temp_dir%

%cmd_path% plots create -%plot_size% -n1 -t%temp_dir% -2%temp_dir% -d%dest_dir% -b%RAM% -u%bucket% -r%CPU% -a%address% -x

REM Процедура остановки очереди
stop.cmd

REM Зацикливание процесса
%0
