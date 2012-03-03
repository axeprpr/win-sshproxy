@echo off

rem -- http://zhg.me
rem -- hfcorriez_at_gmail.com

:menu
cls
echo   ____________________________________________
echo  ^|                                           ^|
echo  ^|          Windows命令行Porxy管理           ^|
echo  ^|                                           ^|
echo  ^|     1 - 启动             2 - 停止         ^|
echo  ^|     3 - 刷新             其它键 - 退出    ^|
if exist autossh.run echo  ^|     当前状态：Proxy运行中...              ^|
if not exist autossh.run echo  ^|     当前状态：Proxy未运行！               ^|
echo  ^|___________________________________________^|
set input=
set /p input= **请选择: 
cls
if "%input%"=="1" goto :start
if "%input%"=="2" goto :stop
if "%input%"=="3" goto :menu
goto :eof

:start
call start.cmd
echo SSH启动完成
@pause
goto :menu

:stop
call stop.cmd
echo Proxy停止完成
@pause
goto :menu