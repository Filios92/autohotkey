; --- Make backspace in explorer go up
#IfWinActive, ahk_class CabinetWClass
Backspace::
   ControlGet renamestatus,Visible,,Edit1,A
   ControlGetFocus focussed, A
   if(renamestatus!=1&&(focussed=”DirectUIHWND3”||focussed=SysTreeView321))
   {
    SendInput {Alt Down}{Up}{Alt Up}
  }else{
      Send {Backspace}
  }
#IfWinActive
