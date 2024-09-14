#Requires AutoHotkey v2.0

; Remap Capslock to Ctrl:
Capslock::Ctrl

Capslock Up::{
    Send "{Ctrl Up}"
    If (A_PriorKey = "Capslock") ; if Capslock was pressed alone
        Send "{Esc}"
}