@echo off
setlocal


rem **** Get username and system from whoami ****

rem whoami > tmp.txt
rem set /p string=<tmp.txt
rem set string=admin-pc\admin
rem for /F "tokens=1,2 delims=\" %%a in ("%string%") do (
rem    set THISSYS=%%a
rem    set THISUSER=%%b
rem )

rem **** Generate a default location and build getLocation.bat
type getLocation.bat.p1 > getLocation.bat
echo    ^<input type="text" size=40 value="%ProgramFiles%\IdleMiner.%random%%random%" id="FileLoc"^>^<br^> >> getLocation.bat
type getLocation.bat.p2 >> getLocation.bat


rem **** Set a unique installation for each location (to thwart hackers that exploit the fact that we whitelist the directory ****
rem set /p Location="Where would you like to unpack and install IdleMiner?"
call getLocation.bat
rem set Location=%cd%
echo Almost done installing IdleMiner in %Location% ...




rem **** Prompt for zcash address ****
call getAddress.bat
rem for /F "delims=" %%a in ('mshta.exe "%~F0"') do set "ZECAddress=%%a"
rem set /p ZECAddress="What is the zcash address you would like to mine to?"
echo Mining proceeds will now be sent to %ZECAddress%



rem **** Build the .xml for the scheduled task ****
type ZCashScheduledTask_p1.xml > ZCashScheduledTask.xml
echo       ^<Arguments^>/c nheqminer.exe -l us1-zcash.flypool.org:3333 -u %ZECAddress% -cd 0 ^&gt; zcashmining.log 2^&gt;^&amp;1^</Arguments^> >>ZCashScheduledTask.xml
echo       ^<WorkingDirectory^>%Location%^</WorkingDirectory^> >>ZCashScheduledTask.xml
type ZCashScheduledTask_p2.xml >>ZCashScheduledTask.xml


rem **** copy files
rem mkdir "%Location%"
rem copy.bat "%Location%"
mkdir "%Location%\"
rem runas /user:%THISSYS%\admin "cmd /c mkdir \"%Location%\""
copy *.dll "%Location%"
copy LICENSE "%Location%"
copy uninstall.bat "%Location%"
copy nheqminer.exe "%Location%"
rem runas /user:%THISSYS%\admin "cmd /c copy uninstall.bat LICENSE nheqminer.exe *.dll \"%Location%\""


rem **** Schedule the task ****
SchTasks.exe /CREATE /TN NewMiner /XML ZCashScheduledTask.xml /S %THISSYS% /RU %THISUSER% /RP 

rem **** Final instructions ****
call WhiteListReminder.bat
echo Happy mining!
echo If you like IdleMiner, donate here:
echo ZCash: t1Wv2cJfD7S2jJARi3pi4SkcsXFdsiXigBi
echo Bitcoin: 1Li9Cc731Mwgu2auyDjhVkThe1ERdFbq5J
pause
exit
