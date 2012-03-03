rem -- http://zhg.me

@echo off
echo Stop plink...
if exist autossh.run del autossh.run
taskkill /F /IM plink.exe > nul
echo Stop CMD...
echo Stop Sucess.
