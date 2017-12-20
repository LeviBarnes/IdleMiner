cls
whoami > tmp.txt
set /p string=<tmp.txt
set string=admin-pc\admin
for /F "tokens=1,2 delims=\" %%a in ("%string%") do (
   set THISSYS=%%a
   set THISUSER=%%b
)
  
setup.bat
exit