#NoEnv  ; Recommended for performance and compatibility with future AutoHotkey releases.
#NoTrayIcon ; Removes the tray icon when running

;to find microsoft edge apps:
;create shortcut
;rightclick shortcut > properties
;copy target

; #Warn  ; Enable warnings to assist with detecting common errors.
SendMode Input  ; Recommended for new scripts due to its superior speed and reliability.
SetWorkingDir %A_ScriptDir%  ; Ensures a consistent starting directory.

;;;;;;;;;;;;;;;;;;;;;;;;;;

<#`:: ; Open Spotify
	run C:\Users\Iain\AppData\Roaming\Spotify\Spotify.exe
return

;;;;;;;;;;;;;;;;;;;;;;;;;;

<#\:: ; Open microsoft edge
	run msedge.exe
return

;;;;;;;;;;;;;;;;;;;;;;;;;;;

<#;:: ; Open ProtonMail in Edge app
	run "C:\Program Files (x86)\Microsoft\Edge\Application\msedge_proxy.exe"  --profile-directory=Default --app-id=dnfhhlehgfipnnanmnahfkhmebmdpkef --app-url=https://mail.protonmail.com/
return

<#':: ; Open ProtonCalendar in Edge app
	run "C:\Program Files (x86)\Microsoft\Edge\Application\msedge_proxy.exe"  --profile-directory=Default --app-id=bfcpggbcbdohgkfbfakkjgmpkabfojni
return

<##:: ; Open TickTick in Edge app
	run "C:\Program Files (x86)\Microsoft\Edge\Application\msedge_proxy.exe"  --profile-directory=Default --app-id=dhjocdgajohookfkmaeknhomjkaalhll --app-url=https://www.ticktick.com/webapp/#p/inbox/tasks
return

;;;;;;;;;;;;;;;;;;;;;;;;;;;

<#-:: ; Open Cold Turkey Writer
	run "D:\Iain\Desktop\Cold_Turkey_Writer_Free.exe"
return

; <#+:: ; 
	; run 
; return

<#[:: ; Open Overleaf in Edge app
	run "C:\Program Files (x86)\Microsoft\Edge\Application\msedge_proxy.exe"  --profile-directory=Default --app-id=gjoaplgcpnmemdaklplebdapjihcoibe --app-url=https://www.overleaf.com/project
return

<#]:: ; Open Zotero
	run "C:\Program Files (x86)\Zotero\zotero.exe"
return

;;;;;;;;;;;;;;;;;;;;;;;;;;;

;<#,:: ; Open Device Manager
;	run C:\Windows\System32\cmd.exe /c "D:\Iain\Documents\Batch Files\device_manager.bat"
;return

<#,:: ; Open calc
	run calc
return

<#.:: ; Run Nightlight
BlockInput, On
	Send, #a
	sleep 1000
	Send {Enter}
	sleep 1000
	Send, #a
BlockInput, Off	
return

; <#.:: ; Open Display Settings
; 	run ms-settings:display
; return

;<#.:: ; Open file explorer in documents
;	run D:\Iain
;return

<#/:: ; Open Bluetooth Settings taskbar
BlockInput, On
	Send, #a
	sleep 1000
	Send {Right}{Down}{Enter}
	sleep 1000
	Send, #a
BlockInput, Off	
return

; <#/:: ; Open Bluetooth Settings Using settings
; BlockInput, On
	; IfWinExist, Settings	
		; {
		; WinActivate Settings
		; WinClose Settings
		; }
	; run ms-settings:bluetooth
	; WinActivate Settings
	; Sleep 2000
	; Send {Tab}{Tab}{Tab}{Space}
	; Sleep 1000
	; WinClose Settings
; BlockInput, Off	
; return