#NoTrayIcon ; Removes the tray icon
#NoEnv  ; Recommended for performance and compatibility with future AutoHotkey releases.
#SingleInstance, force ; only allows one running script and prevents the confirmation prompt
; #Warn  ; Enable warnings to assist with detecting common errors.
SendMode Input  ; Recommended for new scripts due to its superior speed and reliability.
SetWorkingDir %A_ScriptDir%  ; Ensures a consistent starting directory.

+^!Down:: ; pause/play music
BlockInput, On ; Prevents keyboard inputs form interupting the running script
	Send, {Media_Play_Pause}
BlockInput, Off
return

+^!Right:: ; Next Track
BlockInput, On ; Prevents keyboard inputs form interupting the running script
	Send, {Media_Next}
BlockInput, Off
return

+^!Left:: ; Previous Track
BlockInput, On ; Prevents keyboard inputs form interupting the running script
	Send, {Media_Prev}
BlockInput, Off
return