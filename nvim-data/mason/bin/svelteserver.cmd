@ECHO off
GOTO start
:find_dp0
SET dp0=%~dp0
EXIT /b
:start
SETLOCAL
CALL :find_dp0

endLocal & goto #_undefined_# 2>NUL || title %COMSPEC% & "C:\Users\John Michael Abbas\AppData\Local\nvim-data\mason\packages\svelte-language-server\node_modules\.bin\svelteserver.cmd" %*