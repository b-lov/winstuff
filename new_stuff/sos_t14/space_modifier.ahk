#Requires AutoHotkey v2.0

Space:: return

Space Up::
{
		if (A_PriorKey = "Space") {
				Send "{Space}"
		}
}

; used keys: h, j, k, l, a, o, u, s, A, O, U, e, t, b, f, /
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
e::
{
		if (WinExist("ahk_exe code.exe")) {
				WinActivate "ahk_exe code.exe"
		} else Run "C:\Users\BilovM\AppData\Local\Programs\Microsoft VS Code\code.exe"
}
t::
{
		if (WinExist("ahk_exe WindowsTerminal.exe")) {
				WinActivate "ahk_exe WindowsTerminal.exe"
		} else Run "wt.exe"
}
b::
{
		if (WinExist("ahk_exe msedge.exe")) {
				WinActivate "ahk_exe msedge.exe"
		} else Run "msedge.exe"
}
/::
{
		if (WinExist("ahk_exe Everything.exe")) {
				WinActivate "ahk_exe Everything.exe"
		} else Run "C:\Program Files\Everything\Everything.exe"
}
f:: Run "C:\Users\BilovM\Downloads"
#HotIf