; AutoHotkey script for scrolling with double left-click and hold

#NoEnv
#SingleInstance force
SendMode Input
SetWorkingDir %A_ScriptDir%
#MaxHotkeysPerInterval 1000

~RButton::
KeyWait, LButton, D T0.3
If ErrorLevel
    Return

KeyWait, LButton, U T0.3
If ErrorLevel
    Return

KeyWait, LButton, D T0.3
If ErrorLevel
    Return

Gosub, StartScrolling

return

StartScrolling:
    CoordMode, Mouse, Screen
    MouseGetPos, X0, Y0
    Loop {
        MouseGetPos, X, Y
        If (Y < Y0)
            Send {WheelDown}
        Else If (Y > Y0)
            Send {WheelUp}
        
        ; Update Y0 for next iteration
        Y0 := Y
        
        ; Check if the LButton is released
        If !GetKeyState("LButton", "P")
            break
        
        Sleep 10 ; Adjust this value for scrolling speed
    }
Return
