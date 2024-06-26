#Persistent
#InstallMouseHook

CoordMode, Mouse, Screen

LeftMouseButtonDown := false
MouseYStartPosition := 0
ScrollSensitivity := 10  ; Change this value to increase/decrease the scroll sensitivity

; Detect left mouse button press
~LButton::
    LeftMouseButtonDown := true
    MouseGetPos, _, MouseYStartPosition
return

; Detect left mouse button release
~LButton Up::
    LeftMouseButtonDown := false
return

; Check mouse position while left mouse button is down and move
~LButton::
    if (LeftMouseButtonDown)
    {
        MouseGetPos, _, MouseYCurrentPosition
        deltaY := MouseYStartPosition - MouseYCurrentPosition

        if (Abs(deltaY) > ScrollSensitivity)
        {
            ScrollAmount := deltaY // ScrollSensitivity
            Loop, % Abs(ScrollAmount)
            {
                if (ScrollAmount > 0)
                    Send, {WheelUp}
                else
                    Send, {WheelDown}
            }
            MouseYStartPosition := MouseYCurrentPosition  ; Reset start position for smoother scrolling
        }
    }
return
