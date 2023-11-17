#Requires AutoHotkey v2.0
#SingleInstance force

; ctrl alt f4
^!F4::
{
    if not WinGetTitle("A") = "Program Manager" or WinGetTitle("A") = ""
        winkill WinGetTitle("A")
}

; ahk v1
; ^!F4::
;     WinGet, Active_Window, ProcessName, A
;     Parsed_Active_Window := StrSplit(Active_Window, ".")
;     If Not (Parsed_Active_Window[1] = "Explorer") {
;         WinGet, active_id, PID, A
;         run, taskkill /PID %active_id% /F,,Hide
;     }
; return