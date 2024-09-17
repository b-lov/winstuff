Space::return

Space Up::
    if (A_PriorKey = "Space")
    {
        Send {Space}
    }
return

#If, GetKeyState("Space", "P")
    h::left
    j::down
    k::up
    l::right
    a::Send, ä
    o::Send, ö
    u::Send, ü
    s::Send, ß
    +a::Send, Ä
    +o::Send, Ö
    +u::Send, Ü
    2::Send, €

    e::
        if (WinExist("ahk_exe code.exe"))
        {
            WinActivate, ahk_exe code.exe
        }
        else
            Run, C:\Users\%A_UserName%\AppData\Local\Programs\Microsoft VS Code\code.exe
    return

    t::
        if (WinExist("ahk_exe WindowsTerminal.exe"))
        {
            WinActivate, ahk_exe WindowsTerminal.exe
        }
        else
            Run, wt.exe
    return

    b::
        if (WinExist("ahk_exe msedge.exe"))
        {
            WinActivate, ahk_exe msedge.exe
        }
        else
            Run, msedge.exe
    return

    f::
        if WinExist("ahk_class CabinetWClass")
        {
            WinActivate
        }
        else
        {
            Run, C:\Users\%A_UserName%\Downloads
        }
    return
#If
