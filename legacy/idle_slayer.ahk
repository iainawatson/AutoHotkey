#NoEnv  ; Recommended for performance and compatibility with future AutoHotkey releases.
; #Warn  ; Enable warnings to assist with detecting common errors.
SendMode Input  ; Recommended for new scripts due to its superior speed and reliability.
SetWorkingDir %A_ScriptDir%  ; Ensures a consistent starting directory.

SetTitleMatchMode 2 ; Sets searching for window title to match only a part of the title

#MaxThreadsPerHotkey 3
; ^!/::  ; Ctrl+Alt+/ hotkey.
!\::  ; Alt+\ hotkey.


/* 
<#f12:: ; Left Win + F12
ifWinActive, Idle Slayer
	Pause, Toggle
 */

#MaxThreadsPerHotkey 1
if Keep_hotkey_Running  ; This means an underlying thread is already running the loop below.
{
    Keep_hotkey_Running := false  ; Signal that thread's loop to stop.
    return  ; End this thread so that the one underneath will resume and see the change made by the line above.
}
; Otherwise:
Keep_hotkey_Running := true


/* 
;; does larger jumps
Loop
{
    ; The next lines are the action you want to repeat:
	WinWaitActive, Idle Slayer
	SendMode, Event
	SetKeyDelay, , 150 ;Delay, PressDuration
	Send, {up Down}
	Sleep, 50
	Send, w
	
	; while GetKeyState(up, 1)
		; {   
		; SetKeyDelay, 1, 1 ;Delay, PressDuration
		; loop, 10
			; {
			; Send, w
		; }
	; }


	Sleep 1000
	Send, {up Up}
	
		
    ; But leave the rest below unchanged.
    if not Keep_hotkey_Running  ; The user signaled the loop to stop by pressing hotkey again.
        break  ; Break out of this loop.
} 
*/



;;does smaller jumps
Loop
{
    ;; The next lines are the action you want to repeat:
	WinWaitActive, Idle Slayer
	Send, e ; rage mode
	Send, "{w 10}"; jump x
	Sleep 150 ; break in ms
	Send, d ; boost
	Send, "{w 10}"; jump x

	
		
    ;; But leave the rest below unchanged.
    if not Keep_hotkey_Running  ; The user signaled the loop to stop by pressing hotkey again.
        break  ; Break out of this loop.
}


Keep_hotkey_Running := false  ; Reset in preparation for the next press of this hotkey.
return