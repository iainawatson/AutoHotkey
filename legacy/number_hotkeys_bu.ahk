#NoEnv  ; Recommended for performance and compatibility with future AutoHotkey releases.
; #Warn  ; Enable warnings to assist with detecting common errors.
SendMode Input  ; Recommended for new scripts due to its superior speed and reliability.
SetWorkingDir %A_ScriptDir%  ; Ensures a consistent starting directory.

SetTitleMatchMode 2 ; Sets searching for window title to match only a part of the title

;retained old messing code, but greek letter input is now just normal, fixed in latex

+^;:: ; SHIFT+CTRL+, hotkey to insert Greek γ
BlockInput, On
;ifWinActive, Overleaf ; Shortcut for Overleaf in Firefox
;	Send, +4\gamma+4
;else
;ifWinActive, .tex - Thesis - Visual Studio Code ; Window title for LaTex files for Thesis (repository) in VS Code 
;	Send, +4\gamma+4
;else
;	SendInput, γ
SendInput, γ
BlockInput, Off
return

+^':: ; SHIFT+CTRL+' hotkey to insert Greek α
BlockInput, On ; Prevents keyboard inputs form interupting the running script
;ifWinActive, Overleaf ; Window title for Overleaf in Firefox
;	;Send, +4\alpha+4
;	;Send, \textalpha
;	SendInput, α
;else
;ifWinActive, .tex - Thesis - Visual Studio Code ; Window title for LaTex files for Thesis (repository) in VS Code 
;	;Send, +4\alpha+4
;	;Send, \textalpha
;	SendInput, α
;else
;	SendInput, α
SendInput, α
BlockInput, Off
return

+^#:: ; SHIFT+CTRL+# hotkey to insert Greek β   
BlockInput, On
ifWinActive, Overleaf ; Shortcut for Overleaf in Firefox
	Send, +4\beta+4
else
ifWinActive, .tex - Thesis - Visual Studio Code ; Window title for LaTex files for Thesis (repository) in VS Code 
	Send, +4\beta+4
else
	SendInput, β
BlockInput, Off
return

+^3:: ; SHIFT+CTRL+3 hotkey to insert Greek µ
BlockInput, On
ifWinActive, Overleaf ; Shortcut for Overleaf in Firefox
	Send, +4\mu+4
else
ifWinActive, .tex - Thesis - Visual Studio Code ; Window title for LaTex files for Thesis (repository) in VS Code 
	Send, +4\mu+4
else
	SendInput, µ
BlockInput, Off
return

+^4:: ; SHIFT+CTRL+4 hotkey
BlockInput, On
ifWinActive, Overleaf ; Shortcut for Overleaf in Firefox to insert abbreviations
	Send, \ac{{}{}}{Left}
else
ifWinActive, .tex - Thesis - Visual Studio Code ; Window title for LaTex files for Thesis (repository) in VS Code 
	Send, \ac{{}{}}{Left}
BlockInput, Off
return

+^5:: ; SHIFT+CTRL+5 hotkey
BlockInput, On
ifWinActive, Overleaf ; Shortcut for Overleaf in Firefox to insert citation
	Send, \cite{{}{}}{Left}
else
ifWinActive, .tex - Thesis - Visual Studio Code ; Window title for LaTex files for Thesis (repository) in VS Code
	Send, \cite{{}{}}{Left}
BlockInput, Off
return

+^6:: ; SHIFT+CTRL+6 hotkey
BlockInput, On
ifWinActive, Overleaf ; Shortcut for Overleaf in Firefox to insert figures
{ ; More than one line of code in an if block requires curly braces to put the code in
	Send, \begin{{}figure{}}[+1b]{Enter}
	Send, {Tab}\centering{Enter}
	Send, \includegraphics{{}{}}{Enter}
	Send, +5{space}\caption{{}Caption{}}{Enter}
	Send, \mycaption{{}{}}{{}{}}{Enter}
	Send, \label{{}fig:my_label{}}{Enter}
	Send, {BackSpace}\end{{}figure{}}
}
else
ifWinActive, .tex - Thesis - Visual Studio Code ; Window title for LaTex files for Thesis (repository) in VS Code
{
	Send, \begin{{}figure{}}{right}[+1b]
	Sleep, 200
	Send, {Enter}\centering
	Sleep, 200
	Send, {Enter}\includegraphics{{}{}}
	Sleep, 200
	Send, {Enter}+5{space}\caption{{}Caption{}}
	Sleep, 200
	Send, {Enter}\mycaption{{}{}}{{}{}}
	Sleep, 200
	Send, {Enter}\label{{}fig:my_label{}}
	Sleep, 200
	Send, {Enter}{BackSpace}\end{{}figure{}}
	Sleep, 200
}
BlockInput, Off
return

+^7:: ; SHIFT+CTRL+7 hotkey
BlockInput, On
ifWinActive, Overleaf ; Shortcut for Overleaf in Firefox to insert tables
{
	Send, \begin{{}table{}}[+1b]
	Send, {Enter}{Tab}\centering
	Send, {Enter}\begin{{}tabular{}}{{}|c|c|c|{}}
	Send, {Enter}{Tab}\hline
	Send, {Enter}cell1{Space}+7{space}cell2{Space}+7{space}cell3{Space}\\
	Send, {Enter}\hline
	Send, {Enter}cell4{Space}+7{space}cell5{Space}+7{space}cell6{Space}\\
	Send, {Enter}cell7{Space}+7{space}cell8{Space}+7{space}cell9{Space}\\
	Send, {Enter}\hline
	Send, {Enter}{BackSpace}\end{{}tabular{}}
	Send, {Enter}+5{space}\caption{{}Caption{}}
	Send, {Enter}\mycaption{{}{}}{{}{}}
	Send, {Enter}\label{{}tab:my_label{}}
	Send, {Enter}{BackSpace}\end{{}table{}}
}
else
ifWinActive, .tex - Thesis - Visual Studio Code ; Window title for LaTex files for Thesis (repository) in VS Code
{
	Send, \begin{{}table{}}{right}[+1b]
	Sleep, 200
	Send, {Enter}{Tab}\centering
	Sleep, 200
	Send, {Enter}\begin{{}tabular{}}{{}|c|c|c|{}}
	Sleep, 200
	Send, {Enter}{Tab}\hline
	Sleep, 200
	Send, {Enter}cell1{Space}+7{space}cell2{Space}+7{space}cell3{Space}\\
	Sleep, 200
	Send, {Enter}\hline
	Sleep, 200
	Send, {Enter}cell4{Space}+7{space}cell5{Space}+7{space}cell6{Space}\\
	Sleep, 200
	Send, {Enter}cell7{Space}+7{space}cell8{Space}+7{space}cell9{Space}\\
	Sleep, 200
	Send, {Enter}\hline
	Sleep, 200
	Send, {Enter}{BackSpace}\end{{}tabular{}}
	Sleep, 200
	Send, {Enter}+5{space}\caption{{}Caption{}}
	Sleep, 200
	Send, {Enter}\mycaption{{}{}}{{}{}}
	Sleep, 200
	Send, {Enter}\label{{}tab:my_label{}}
	Sleep, 200
	Send, {Enter}{BackSpace}\end{{}table{}}
	Sleep, 200
}
BlockInput, Off
return

; Currently not using Git to do offline work
 
; +^8:: ; SHIFT+CTRL+8 hotkey
; Run, C:\Users\iaina\Anaconda3\python.exe "C:\Users\iaina\MEGAsync\Documents\Python Scripts\copy_bibtex_refs.py"
; return

+^8:: ;exports biblatex library from zotero and uploads in overleaf
BlockInput, On
if WinExist("Zotero")
	WinActivate Zotero ;open zotero
	send !f ;opens file menu
	sleep 50 ;needs time to load menu
    Send {up}{up} ;select the export function
	Send {Enter}
	sleep 50
	Send {Enter}
	Send D:\Iain\Desktop\Thesis.bib
	Send {Enter}
	;FileSelectFile "D:\Iain\Desktop\Thesis.bib"
	if WinExist("Confirm Save As") ;overwrite file
		WinActivate "Confirm Save As"
		Send {left}{Enter}
	sleep 1000	
if WinExist("Overleaf") ;Uploads the file to thesis document
	WinActivate Overleaf
	WinMaximize
	sleep 500
	MouseClick, left, 90, 120
	sleep 500
	MouseClick, left, 1140, 440
	sleep 500
	Send +2D:\Iain\Desktop\Thesis.bib+2
	Send {Enter}
	sleep 500
	MouseClick, left, 1040, 350
BlockInput, Off
return

+^9:: ; SHIFT+CTRL+9 hotkey
BlockInput, On
ifWinActive, Overleaf ; Shortcut for Overleaf in Firefox to insert figure reference
	Send, \ref{{}{}}{Left}
else
ifWinActive, .tex - Thesis - Visual Studio Code ; Window title for LaTex files for Thesis (repository) in VS Code
	Send, \ref{{}{}}{Left}
else
ifWinActive, .docx ; Window title for ms word
	Send, {Space}{Backspace}{Alt}srf
BlockInput, Off
return

+^0:: ; SHIFT+CTRL+# hotkey to insert °   
BlockInput, On
ifWinActive, Overleaf ; Shortcut for Overleaf in Firefox
	Send, +4+6\circ+4
else
ifWinActive, .tex - Thesis - Visual Studio Code ; Window title for LaTex files for Thesis (repository) in VS Code 
	Send, +4+6\circ+4
else
	SendInput, °
BlockInput, Off
return

+^-:: ; SHIFT+CTRL+- hotkey
BlockInput, On
ifWinActive, Overleaf ; Shortcut for Overleaf in Firefox to insert citation
	Send, \textbf{{}{}}{Left}
else
ifWinActive, .tex - Thesis - Visual Studio Code ; Window title for LaTex files for Thesis (repository) in VS Code
	Send, \textbf{{}{}}{Left}
BlockInput, Off
return

+^=:: ; SHIFT+CTRL+= hotkey
BlockInput, On
ifWinActive, Overleaf ; Shortcut for Overleaf in Firefox to insert citation
	Send, \textit{{}{}}{Left}
else
ifWinActive, .tex - Thesis - Visual Studio Code ; Window title for LaTex files for Thesis (repository) in VS Code
	Send, \textit{{}{}}{Left}
BlockInput, Off
return

+^Enter:: ; SHIFT+CTRL+Enter hotkey
BlockInput, On
ifWinActive, Overleaf ; Shortcut for Overleaf in Firefox
{
	Send, {Enter}{Enter}\par
	Sleep, 100
	Send, {Space}
	Sleep, 100
	Send, {Enter}
}
;{
;	Send, {Enter}\par{Space}
;	Sleep, 100
;	Send, {Enter}
;	Sleep, 100
;	Send, {Escape}
;}
else
ifWinActive, .tex - Thesis - Visual Studio Code ; Window title for LaTex files for Thesis (repository) in VS Code
{
	Send, {Enter}
	Sleep, 100
	Send, {Enter}
	Sleep, 100
	Send, \par{Enter}
}
;{
;	Send, {Enter}\par{Space}
;	Sleep, 100
;	Send, {Enter}
;	Sleep, 100
;	Send, {Escape}
;}
BlockInput, Off
return

+^[:: ; SHIFT+CTRL+[ hotkey to insert Greek η²
BlockInput, On ; Prevents keyboard inputs form interupting the running script
ifWinActive, Overleaf ; Window title for Overleaf in Firefox
	Send, +4\eta+62+4
	;Send, \texteta
else
ifWinActive, .tex - Thesis - Visual Studio Code ; Window title for LaTex files for Thesis (repository) in VS Code 
	Send, +4\eta+62+4
	;Send, \texteta
else
	SendInput, η²
BlockInput, Off
return

+^]:: ; SHIFT+CTRL+] hotkey to insert ²/superscript 2
BlockInput, On ; Prevents keyboard inputs form interupting the running script
ifWinActive, Overleaf ; Window title for Overleaf in Firefox
	Send, +4+62+4
else
ifWinActive, .tex - Thesis - Visual Studio Code ; Window title for LaTex files for Thesis (repository) in VS Code 
	Send, +4+62+4
else
	Send, ²
BlockInput, Off
return

+^,:: ; SHIFT+CTRL+, hotkey to insert ₂/subscript 2
BlockInput, On ; Prevents keyboard inputs form interupting the running script
ifWinActive, Overleaf ; Window title for Overleaf in Firefox
	Send, +4+-2+4
else
ifWinActive, .tex - Thesis - Visual Studio Code ; Window title for LaTex files for Thesis (repository) in VS Code 
	Send, +4+-2+4
else
	Send, ₂
BlockInput, Off
return

+^.:: ; SHIFT+CTRL+. hotkey to insert ⁺/superscript +
BlockInput, On ; Prevents keyboard inputs form interupting the running script
ifWinActive, Overleaf ; Window title for Overleaf in Firefox
	Send, +4+6+=+4
else
ifWinActive, .tex - Thesis - Visual Studio Code ; Window title for LaTex files for Thesis (repository) in VS Code 
	Send, +4+6+=+4
else
	Send, ⁺
BlockInput, Off
return

+^/:: ; SHIFT+CTRL+/ hotkey to insert ⁻/superscript -
BlockInput, On ; Prevents keyboard inputs form interupting the running script
ifWinActive, Overleaf ; Window title for Overleaf in Firefox
	Send, +4+6-+4
else
ifWinActive, .tex - Thesis - Visual Studio Code ; Window title for LaTex files for Thesis (repository) in VS Code 
	Send, +4+6-+4
else
	Send, ⁻
BlockInput, Off
return