; -------------------------------------------------------------------------- ;
; -------------------------------------------------------------------------- ;
;
;                             Windows Key Remapper
;                         Copyright Jackson Fair (2022)
;
; -------------------------------------------------------------------------- ;
; -------------------------------------------------------------------------- ;

; Preprocessor Directives
#NoEnv                       ; For performance and compatibility with future AutoHotkey releases.
#Warn                        ; Enable warnings to assist with detecting common errors.
#SingleInstance Force        ; Automatically exits past script version when new version is run
#KeyHistory 0                ; Does not keep track of any keylogs (for security purposes. Disable for debug.)
#MenuMaskKey, vkE8           ;remaps mask key to an unassigned keycode to avoid accidental presses   

; Hotstring Configuration
SendMode Input               ; Recommended for new scripts due to its superior speed and reliability.
SetWorkingDir %A_ScriptDir%  ; Ensures a consistent starting directory.

; remaps win key shortcuts to use F9 instead of LWin
F9::LWin
F9 & L::DllCall("LockWorkStation")
F9 & E::Run, explorer

; clipping shortcut (works for some reason but should activate search bar, not clipping app)
F9 & S::
SendInput, {LWinDown}{S}{LWinUp}
return

; correctly tabs, but in opposite direction of normal
F9 & T::
SendInput, {LWinDown}{T}{LWinUp}
return



!1:: MsgBox, Let this script stand as evidence that I, Jackson Fair, am an expert coder who was able to find the solution to the problem that my boss, Zach Lepird, was profusely, entirely counfounded by.