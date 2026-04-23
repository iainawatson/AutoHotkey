/* DEVELOPER NOTES
- Want to block other keys from functioning whilst the capslock layer is active
- Copilot is a special key; F23. Reamapped as right control using Powertoys previously.
- holding down keys to navigate does not work and occasionally allows key presses.
Blocking input from not hotkeys whilst caps is held might solve this.
This also might indicate the caps key is not kept register with long presses (keyboard issue?)
- Having to assign F23 (Copilot) to modifier, doesn't act like modifier, so can't use in multiple key presses for something like Ctrl + Shift + <key>
Removing F23 in  Powertoys as the solution and setting AHK to recognise F23 as a modifier will be a better solution.
Could create a solution such as the capslock solution below to allow as modifier and double press for Copilot to retain functionality
To get proper functionality in PowerToys Win + Shift + F23 activates Copilot, and is set as remapping shortcut. 
So why does F23 just work in AHK? 
-Doesn't navigate well when the capslock is toggled on, have to toggle off Caps to use layer properly
- Add Undo/Redo/Save to the secondary layer. (Stops weird stretches to the left control) */

#Requires AutoHotkey v2.0
; #NoTrayIcon ; Removes the tray icon when running

CapsLock:: {
   KeyWait('CapsLock')                               ; wait for Capslock to be released
   if (A_TimeSinceThisHotkey < 200)                  ; in 0.2 seconds
   and KeyWait('CapsLock', 'D T0.2')                 ; and pressed again within 0.2 seconds
   and (A_PriorKey = 'CapsLock')                     ; block other keys
      SetCapsLockState !GetKeyState('CapsLock', 'T')
}
*CapsLock:: Send '{Blind}{vk07}'                     ; This forces capslock into a modifying key & blocks the alt/start menus

/* HOTKEY LAYER 1  - CAPSLOCK */

; ^+!# are the modifiers Ctrl, Shift, Alt and Win
; always use >+ (right shift modifier) in this section, left shift is reserved for 'second layer'

#HotIf GetKeyState("CapsLock", "P")

; ---- wasd navigation ----
; more comfortable maybe, but moves away from home keys

w:: Send '{Up}' ; simple navigation
s:: Send '{Down}'
a:: Send '{Left}' 
d:: Send '{Right}'
^w:: Send '^{Up}' ; navigates by line, maintains cursor position
^s:: Send '^{Down}'

^a:: Send '^{Left}' ; navigates whole words
^d:: Send '^{Right}'
F23 & a:: Send '^{Left}' ; uses copilot key duplicating the above controls
F23 & d:: Send '^{Right}'

q:: Send '{Home}' ; large navigation
e:: Send '{End}'
r:: Send '{PgUp}'
f:: Send '{PgDn}'

>+w:: Send '+{Up}' ; highlights single characters
>+s:: Send '+{Down}'
>+a:: Send '+{Left}' 
>+d:: Send '+{Right}'

^>+w:: Send '+{Up}' ; just single words, replicates normal function, mostley prevent Ctrl + w closing windows...
^>+s:: Send '+{Down}'
^>+a:: Send '^+{Left}' ; highlights whole words
^>+d:: Send '^+{Right}'
/* see developer notes above, trying to get shift, control, navigate to highlight whole words with Copilot key is a problem */
; F23 a:: Send '^+{Left}' ; highlights whole words
; + & F23 & d:: Send '^+{Right}'

>+q:: Send '+{Home}' ; highlight sections
>+e:: Send '+{End}'
>+r:: Send '+{PgUp}'
>+f:: Send '+{PgDn}'

; ---- esdf navigation ----
; keeps fingers on home keys but pinkie becomes a stretch for the capslock

; e:: Send '{Up}'
; d:: Send '{Down}'
; s:: Send '{Left}' 
; f:: Send '{Right}'

; +e:: Send '{PgUp}'
; +d:: Send '{PgDn}'
; +s:: Send '{Home}' 
; +f:: Send '{End}'

; ^s:: Send '^{Left}'
; ^f:: Send '^{Right}'
; F23 & s:: Send '^{Left}' ; uses copilot key duplicating the above controls
; F23 & f:: Send '^{Right}'

; w:: Send '+{Left}' ; highlights single characters
; r:: Send '+{Right}'
; +w:: Send '^+{Left}' ; highlights whole words
; +r:: Send '^+{Right}'

; ---- Keys for numpad layer ----
j:: Send '{Numpad1}'
k:: Send '{Numpad2}'
l:: Send '{Numpad3}'
u:: Send '{Numpad4}'
i:: Send '{Numpad5}'
o:: Send '{Numpad6}'
7:: Send '{Numpad7}'
8:: Send '{Numpad8}'
9:: Send '{Numpad9}'
m:: Send '{Numpad0}'
,:: Send '{Numpad0}' ; replicates the long 0
.:: Send '{NumpadDot}'
y:: Send '{NumpadAdd}'
h:: Send '{NumpadSub}'
p:: Send '{NumpadMult}'
`;:: Send '{NumpadDiv}' ; ` is the escape character
[:: Send '{NumpadEnter}' ; replicates the longer enter
':: Send '{NumpadEnter}' 

; ---- Easier backspace and delete ----
Space:: Send '{Backspace}'
^Space:: Send '^{Backspace}'
F23 & Space:: Send '^{Backspace}' ; mimics control backspace with copilot key
+Space:: Send '{Delete}'

; ---- cut, copy, paste controls ----
0:: Send '^a' ; select all
-:: Send '^x'
=:: Send '^c'
Backspace:: Send '^v'

#HotIf

/* HOTKEY LAYER 2 — CAPSLOCK + LEFT SHIFT */

#HotIf GetKeyState("CapsLock", "P")

; ---- windows controls ----
<+-:: WinMinimize "A" ; targets active window
<+=:: WinMaximize "A"
<+Backspace:: WinKill "A"

#HotIf