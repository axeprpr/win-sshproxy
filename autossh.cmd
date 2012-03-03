@echo off


rem -- http://zhg.me

set user=corrie
set host=127.0.0.1
set pass=
set port=22

set listen=127.0.0.1:8080

REM autossh.bat
echo connecting to ssh...
echo > autossh.run
:relink

if exist autossh.run plink -C -N -D %listen% %user%@%host% -pw %pass% -P %port% -v
if not exist autossh.run goto :eof
goto :relink

