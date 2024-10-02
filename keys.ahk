﻿#Requires AutoHotkey v2.0

; 1. Remap Capslock to Ctrl:
Capslock::Ctrl

Capslock Up:: {
    Send "{Ctrl Up}"
    if (A_PriorKey = "Capslock") ; if Capslock was pressed alone
        Send "{Esc}"
}

; 2. Make space a modifier key
Space:: return

Space Up::
{
    if (A_PriorKey = "Space") {
        Send "{Space}"
    }
}

; used keys:
; arrows: h, j, k, l
; umlauts: a, o, u, s, A, O, U,
; programs: e, t, b, f, /

#HotIf GetKeyState("Space", "P")
h::Left
j::Down
k::Up
l::Right
a:: Send "ä"
o:: Send "ö"
u:: Send "ü"
s:: Send "ß"
+a:: Send "Ä"
+o:: Send "Ö"
+u:: Send "Ü"
2:: Send "€"
e:: {
    if (WinExist("ahk_exe code.exe")) {
        WinActivate "ahk_exe code.exe"
    } else Run "C:\Users\BilovM\AppData\Local\Programs\Microsoft VS Code\code.exe"
}
t:: {
    if (WinExist("ahk_exe WindowsTerminal.exe")) {
        WinActivate "ahk_exe WindowsTerminal.exe"
    } else Run "wt.exe"
}
b:: {
    if (WinExist("ahk_exe msedge.exe")) {
        WinActivate "ahk_exe msedge.exe"
    } else Run "msedge.exe"
}
f:: {
    if WinExist("ahk_class CabinetWClass") {
        WinActivate
    } else Run "C:\Users\BilovM\Downloads"
}
; m::Run "olk.exe",,,PID | WinActivate "ahk_pid " PID
; m::Run "olk.exe", , "Max", "ahk_exe olk.exe"
; m::if WinExist("ahk_exe olk.exe") ? WinActivate() : Run("olk.exe")
m:: {
    if (WinExist("ahk_exe olk.exe")) {
        WinActivate "ahk_exe olk.exe"
    } else Run "olk.exe"
}
/::^+a
#HotIf