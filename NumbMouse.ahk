#Persistent
#SingleInstance force
#MaxHotkeysPerInterval 9900
#HotkeyInterval 9900
#KeyHistory 0
ListLines Off
SetBatchLines, -1
SetKeyDelay, -1, -1
SetDefaultMouseSpeed, 0
SetWinDelay, -1
SetControlDelay, -1
setkeydelay, -1
#NoEnv  ; Recommended for performance and compatibility with future AutoHotkey releases.
SendMode Input  ; Recommended for new scripts due to its superior speed and reliability.
SetWorkingDir %A_ScriptDir%  ; Ensures a consistent starting directory.

End::  ; Control+Alt+S hotkey.
Suspend  ; Toggle suspension on/off.
return

;#IfWinActive ahk_class ConsoleWindowClass  ; Don't interfere with console windows (e.g., cmd.exe). Remove the first ";" of this line if you want this active.
NumpadEnter::return  ; Disable the Enter hotkey in these windows.
#IfWinActive

; The following hotkeys work in any window (as long as the script is running).
Numpad5::Click  ; Make the Numpad5 key behave as the left mouse button.
NumpadAdd::Click right  ; Make Numpad + behave as the right mouse button.
Esc::ExitApp  ; Make the Esc key close the script.

; The following hotkeys work in any window (as long as the script is running).
Numpad8::MouseMove, 0, -5, 0, R  ; Move the mouse upward.
Numpad2::MouseMove, 0, 5, 0, R  ; Move the mouse downward.
Numpad4::MouseMove, -5, 0, 0, R  ; Move the mouse to the left.
Numpad6::MouseMove, 5, 0, 0, R  ; Move the mouse to the right.
