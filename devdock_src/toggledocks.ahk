#NoTrayIcon
#SingleInstance force
SetTitleMatchMode 2

WinGet, TempWindowID, ID, A

If (WindowID != TempWindowID)
{
  WindowID:=TempWindowID
  WindowState:=0
}

Process, Exist, devdock.exe  ;Retrieves the PID for devdock!
TPID = %ErrorLevel%

If TPID != 0  ; devdock is running
{
Process, Close, devdock.exe
Process, Close, programming.exe

; Set your resolution
w = 1366
h = 768

SetTitleMatchMode, 2

WinGet Style, Style, A
 ; MsgBox, win style is %Style%
if(Style = 0x170B0000 || Style = 0x150B0000|| Style = 0x170F0000) {
;MsgBox, title bar NOT present
  WinGetPos, WinPosX, WinPosY, WindowWidth, WindowHeight, ahk_id %WindowID% 
 ; WinPosX = (%WinPosX%+15)
  

  
  WinSet, Style, ^0xC40000, ahk_id %WindowID%
;  WinMove, ahk_id %WindowID%, , WinPosX, WinPosY, WindowWidth, WindowHeight
  WinMove, ahk_id %WindowID%, , WinPosX, WinPosY, 
  WinMove, ahk_id %WindowID%, , , 0,w,h

} else {
;MsgBox, title bar already present
}

    ExitApp
}

else
{
;MsgBox, Yo I didn't find any devdock!
    Run devdock.exe, C:\Program Files (x86), max
} 