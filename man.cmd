@echo off

rem -- http://zhg.me
rem -- hfcorriez_at_gmail.com

:menu
cls
echo   ____________________________________________
echo  ^|                                           ^|
echo  ^|          Windows������Porxy����           ^|
echo  ^|                                           ^|
echo  ^|     1 - ����             2 - ֹͣ         ^|
echo  ^|     3 - ˢ��             ������ - �˳�    ^|
if exist autossh.run echo  ^|     ��ǰ״̬��Proxy������...              ^|
if not exist autossh.run echo  ^|     ��ǰ״̬��Proxyδ���У�               ^|
echo  ^|___________________________________________^|
set input=
set /p input= **��ѡ��: 
cls
if "%input%"=="1" goto :start
if "%input%"=="2" goto :stop
if "%input%"=="3" goto :menu
goto :eof

:start
call start.cmd
echo SSH�������
@pause
goto :menu

:stop
call stop.cmd
echo Proxyֹͣ���
@pause
goto :menu