/*
DEVELOPER NOTES
- Want to block other keys from functioning whilst the capslock layer is active
*/

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

/* 
HOTKEY LAYER
*/

; ^+!# are the modifiers Ctrl, Shift, Alt and Win

#HotIf GetKeyState("CapsLock", "P")

; ---- Keys for simple navigation ----
; ---- wasd navigation ----

w:: Send '{Up}'
s:: Send '{Down}'
a:: Send '{Left}' 
d:: Send '{Right}'

+w:: Send '{PgUp}'
+s:: Send '{PgDn}'
+a:: Send '{Home}' 
+d:: Send '{End}'

^a:: Send '^{Left}'
^d:: Send '^{Right}'

; ---- esdf navigation ----

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
+Space:: Send '{Delete}'

#HotIf