<!-- :: Batch section
@echo off
rem set /p ZECAddress="What is the zcash address you would like to mine to?"
for /F "delims=" %%a in ('mshta.exe "%~F0"') do set "ZECAddress=%%a"

endlocal
goto :EOF
-->



<HTML>
<HEAD>
<HTA:APPLICATION SCROLL="no" SYSMENU="no" >
<TITLE>Set Zcash address</TITLE>
<SCRIPT language="JavaScript">

window.resizeTo(500,200);

function closeHTA(sub){
   var fso = new ActiveXObject("Scripting.FileSystemObject");
   reply = document.getElementById("ZECAddress").value;
   fso.GetStandardStream(1).WriteLine(reply);
   window.close();
}

</SCRIPT>
</HEAD>
<BODY>
   Enter your ZCash address below. This should be an <br>
   address at which you can receive Zcash. Also, z addresses<br>
   are not supported. Make sure your address begins with t.<br>
   <input type="text" size=40 value="t1WVyTtzeVdSThsicoPn1ZM1CWrfcpwf1SG" id="ZECAddress"><br>
   <button onclick="closeHTA(1);">Submit</button>
</BODY>
</HTML>
