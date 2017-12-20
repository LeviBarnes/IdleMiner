<!-- :: Batch section
@echo off
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
   fso.GetStandardStream(1).WriteLine("Yes");
   window.close();
}

</SCRIPT>
</HEAD>
<BODY>
   Before IdleMiner will work, you must whitelist the location<br>
   with you anti-virus software. Use the Google machine to discover<br>
   how to do this for your particular anti-virus software.<br>
   Do it right now.<br>
   <button onclick="closeHTA(1);">I did it!</button>
</BODY>
</HTML>
