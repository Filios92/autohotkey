;-----------------------------------------------------------------------------------
; Shortcut keys to Minimize, Maximize/Restore the current Window {{{1
; Meant to operate as the 3 right buttons on the window
;
;                                         Alt-F2         = AutoHotkey
;                                            Alt-F3      = AutoHotkey
;                                                 Alt-F4 = Default Windows
; +----------------------------------------------------+
; |                                        [_] [ ] [X] |
; +----------------------------------------------------+
; |                                                    |
; |                                                    |
;-----------------------------------------------------------------------------------
;!F2:: WinMinimize, A
;!F3::
;WinGet MX, MinMax, A
;If MX
;WinRestore A
;Else WinMaximize A
;return

^+F2:: WinMinimize, A
^+F3::
WinGet MX, MinMax, A
If MX
WinRestore A
Else WinMaximize A
return
^+F4:: WinClose, A