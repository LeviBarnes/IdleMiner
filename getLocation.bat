<!-- :: Batch section
@echo off
rem set /p ZECAddress="What is the zcash address you would like to mine to?"
for /F "delims=" %%a in ('mshta.exe "%~F0"') do set "Location=%%a"
goto :EOF
-->



<HTML>
<HEAD>
<HTA:APPLICATION SCROLL="no" SYSMENU="no" >
<TITLE>Install Location</TITLE>
<SCRIPT language="JavaScript">

window.resizeTo(500,200);

function closeHTA(sub){
   var fso = new ActiveXObject("Scripting.FileSystemObject");
   reply = document.getElementById("FileLoc").value;
   fso.GetStandardStream(1).WriteLine(reply);
   window.close();
}

</SCRIPT>
</HEAD>
<BODY>
   Where would you like to install IdleMiner?<br>
   <input type="text" size=40 value="C:\Program Files\IdleMiner.1870019962" id="FileLoc"><br> 
   <button onclick="closeHTA(1);">Submit</button>
</BODY>
</HTML>
