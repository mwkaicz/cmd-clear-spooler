:: stop printer service
net stop spooler

:: kill pipeline process (mostly holds some printer .TMP file)
taskkill /IM printfilterpipelinesvc.exe /F

:: delete printers query
del %systemroot%\System32\spool\printers\* /Q

:: run printer service
net start spooler

:: pause