#NoTrayIcon ; Removes the tray icon
#NoEnv  ; Recommended for performance and compatibility with future AutoHotkey releases.
#SingleInstance, force ; only allows one running script and prevents the confirmation prompt
; #Warn  ; Enable warnings to assist with detecting common errors.
SendMode Input  ; Recommended for new scripts due to its superior speed and reliability.
SetWorkingDir %A_ScriptDir%  ; Ensures a consistent starting directory.

<#b:: ; Left windows key and b
BlockInput, On ; Prevents keyboard inputs form interupting the running script
	run *RunAs D:\Iain\Documents\Batch_Files\taskill_maximise_battery.bat ; kills a bunch of running tasks and turns on battery saver, runs as admin
	send !^+4 ; runs throttlestop profile 4	
	run powershell.exe D:\Iain\Documents\Powershell_Scripts\lower_brightness.ps1
	send ^+2 ; switches to quiet tpfancontrol
BlockInput, Off
return

!^+Del:: ; Full Laptop shutdown
	run *RunAs C:\Windows\System32\shutdown.exe /s /t 10
return