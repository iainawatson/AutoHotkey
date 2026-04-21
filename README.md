# AutoHotkey Scripts

A collection of personal [AutoHotkey](https://www.autohotkey.com/) tools and utilities.

## Structure
- **/legacy/** Archived AutoHotkey scripts written using AutoHotkey v1  
- **/scripts/** Scripts using AutoHotkey v2

## Use
To load the scripts at startup, add them to the Startup folder:

> Open the Run dialog:  
>
> > Win + R  
> >
> > Type `shell:startup`  
>
> Paste a link to the script into this folder:
>
> > Open the folder in Terminal as Administrator  
> >
> > `"Open in Terminal" + Ctrl + Shift`  
> >
> > ```cmd
> > mklink <filename>.ahk "path\to\script.ahk"
> > ```
Optionally allow the script to run in the background:

> At the top of the script toggle the comment:  
>
> > ```ahk
> > #NoTrayIcon
> > ```

## Notes
The legacy scripts may not use the same conventions as v2 scripts.
