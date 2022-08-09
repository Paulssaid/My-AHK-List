#NoEnv  ; Recommended for performance and compatibility with future AutoHotkey releases.
; #Warn  ; Enable warnings to assist with detecting common errors.
SendMode Input  ; Recommended for new scripts due to its superior speed and reliability.
SetWorkingDir %A_ScriptDir%  ; Ensures a consistent starting directory.

Menu, Tray, Icon , C:\Users\paul1\OneDrive\Dokumente\All\Programme\programmfiles\Autohotkey\Tray Icons\white\Multiple.ico

#singleinstance force

;------------------------Changes Keys----------------------------

;f1::LButton

F22::+#Right

Pause::F15

ScrollLock::F24

#RButton::+F10
;------------------------Opens any kind of Website------------------

^!x::Run https://kalliope.webuntis.com/WebUntis/?school=Hak_Wien5#/basic/timetable

^!y::Run https://www.youtube.com/feed/subscriptions

^!g::Run https://www.google.com

^!t::Run https://translate.google.com/?hl=de&sl=auto&tl=de&op=translate

^!r::Run https://www.reddit.com

^!d::Run https://digi4school.at/ebooks

^!a::Run https://anilist.co/home

^!m::Run https://mail.google.com/mail/u/1/#inbox

^!p::Run https://photos.google.com/u/2/

+!ä::Run https://www.virustotal.com/gui/

+!l::Run https://lms.at/dotlrn/

+!a::Run https://www.trauner-digibox.com/#show-books

;------------------------Hotstrings or sends text----------------------

:*:p@::paul.1701.ps@gmail.com

:*:s@::paul.said@edu.schulenbfi.at

:*:v@::pavlopaul88@gmail.com

:c*:crw1::CRW\CRW2-1050S114

:c*:crw2::rCEQfd2JLPh7i6i

:c*:pwort::JTP7LLhj5KehtTc

:c*:vwort::Adelsaid1011

:c*:wlwort::JVM224WVgE

:R:ahksf::#singleinstance force

:*:e@::sketzo.1701@gmail.com

:c*:ewort::R%05hdP57e!n

;-----Scrcpy Pwort-p input-----

#IfWinActive ahk_exe scrcpy.exe

MButton::
click 980 946
Sleep 200
Send, 4275
return

PgDn::click 334 876

#IfWinActive

#IfWinActive WhatsApp
:*:nd::nicht
:*:vllt::vielleicht
#IfWinActive

;------------------------Launches Programs with different kind of Win...----------------------------------

;-----If Calculator is already running it activates it | if not it runs it and sets it on top-----
+!c::
WinActivate, Calculator
if not WinExist("Calculator")
Run calc.exe
WinWait, Calculator
Winset, Alwaysontop, , A
WinMove, 1339, 504
return

;-----Runs Word and Maximizes it-----
+!W::
Run, Winword.exe, ,Max
Sleep, 2000
WinMaximize, ahk_exe WINWORD.EXE
return

;-----Runs notepad, sets it on top and moves it to the bottom right corner of the screen-----
+!n::
Run notepad.exe
WinWait, Untitled - Notepad
Winset, Alwaysontop, , A
WinMove, Untitled - Notepad,, 1022, 12, 658, 378
return

;-----Runs Whats App and Maximizes it-----
+!q::
Run, "C:\Users\paul1\OneDrive\Dokumente\All\Programme\programmfiles\Autohotkey\For run\WhatsApp.lnk"
WinWait, WhatsApp
WinMaximize, WhatsApp
return

;-----Runs Vivaldi and Maximizes it-----
#b::
Run Vivaldi.exe
WinWait, Start Page - Vivaldi
WinMaximize, ahk_exe vivaldi.exe
return

;-----Runs Vivaldi in incognito and Maximizes it-----
^!n::
run vivaldi.exe -incognito
WinWait, Start Page - Vivaldi
WinMaximize, ahk_exe vivaldi.exe
return

;-----Runs Scrcpy-noconsole.vbs to mirror Phone-----
^#p::
run, C:\Users\paul1\OneDrive\Dokumente\All\Programme\programmfiles\Scrcpy\scrcpy-win64-v1.21\scrcpy.exe
winwait, C:\Users\paul1\OneDrive\Dokumente\All\Programme\programmfiles\Scrcpy\scrcpy-win64-v1.21\scrcpy.exe
Sleep 1000
winhide, C:\Users\paul1\OneDrive\Dokumente\All\Programme\programmfiles\Scrcpy\scrcpy-win64-v1.21\scrcpy.exe
return

;-----Runs Discord-----
+!d::
Run "C:\Users\paul1\OneDrive\Dokumente\All\Programme\programmfiles\Autohotkey\For run\Discord.lnk"
WinWait, Discord
WinMaximize
return

;-----If Fast-Clicker is already running it activates it | if not it runs it and sets it on top-----
^!f::
WinActivate, OP Auto Clicker 3.0
if not WinExist("OP Auto Clicker 3.0")
Run "C:\Users\paul1\OneDrive\Dokumente\All\Programme\programmfiles\FastClicker\AutoClicker.exe"
WinWait, OP Auto Clicker 3.0
WinMove, -851, -8,
return


;-----Runs Clock-----
^#c::
run "C:\Users\paul1\OneDrive\Dokumente\All\Programme\programmfiles\Autohotkey\For run\Clock.lnk"
return

;-----Runs Whiteboard-----
#IfWinNotActive ahk_exe GenshinImpact.exe
#w::
run "C:\Users\paul1\OneDrive\Dokumente\All\Programme\programmfiles\Autohotkey\For run\Microsoft Whiteboard.lnk"
return

#IfWinActive

;-----Runs DrawOnScreen-----
#y::
run "C:\Users\paul1\OneDrive\Dokumente\All\Programme\programmfiles\Autohotkey\Scripts\Draw on sccreen.ahk"
return

;-----Runs Clipping-----
#-::
run "C:\Users\paul1\OneDrive\Dokumente\All\Programme\programmfiles\Autohotkey\Scripts\Clipping\Clipping.ahk"
return

;------------------------Opens any kind of Websites and searches the copied term-------------------------------------

;-----Searches Google-----
^+b::
{
 Send, ^c
 Sleep 50
 Run, http://www.google.com/search?q=%clipboard%
 Return
}

;-----Searches anilist-----
^+a::
{
 Send, ^c
 Sleep 50
 Run, https://anilist.co/search/anime?search=%clipboard%
 Return
}

;-----Searches youtube-----
^+y::
{
 Send, ^c
 Sleep 50
 Run, https://www.youtube.com/results?search_query=%clipboard%
 Return
}

;-----Inputs Text in to Google Translate | Detect Language to german-----
^!l::
{
 Send, ^c
 Sleep 100
 Run, https://translate.google.com/?hl=de&sl=auto&tl=de&text=%clipboard%&op=translate
 Return
}

;-----Inputs Text in to Google Translate | Detect Language to English-----
^!k::
{
 Send, ^c
 Sleep 50
 Run, https://translate.google.com/?hl=de&sl=auto&tl=en&text=%clipboard%&op=translate
 Return
}

;-----Opens the copied Link-----
^!ö::
{
 Send, ^c
 Sleep 50
 Run, %clipboard%
 Return
}

;-----Searches Chiaki-----
^!c::
{
Send, ^c
Run, https://chiaki.site/?/tools/watch_order
Sleep 2000
Send %A_Tab%
Send, ^v
return
}

;-----Conjugation of the verb Italian-----
^!,::
{
Send, ^c
Run, https://www.reverso.net/text_translation.aspx?lang=DE
Sleep 2000
Send, ^v
return
}

;-----Reverso Translate German to Italian-----
^!.::
 Send, ^c
 Sleep 50
 Run, https://konjugator.reverso.net/konjugation-italienisch-verb-%clipboard%.html
 Return

;-----Google search inputbox-----

+!s::
InputBox, OutputVar, Google Search, What do you want to find,
if (OutputVar = "")
return
	else
	if (OutputVar = " ")
	return
		else
		Run, https://www.google.com/search?q=%OutputVar%
		return

;-----Copies the url of Current Website-----
^#b::
Sleep 100
Send ^l       ;gives focus to the URL
Sleep 100
Send ^c
return

;-----Selects and copies everything-----
#c::
send, ^a
sleep, 50
send, ^c
return

;------------------------Changes Windows, Desktop, Taskbar ...------------------------------------

;-----Sets Current Window Alwaysontop-----
^#x::  Winset, Alwaysontop, , A
return

;-----Hides Desktop Icons-----
#^h::
ControlGet, HWND, Hwnd,, SysListView321, ahk_class Progman
 If HWND =
 ControlGet, HWND, Hwnd,, SysListView321, ahk_class WorkerW
 If DllCall("IsWindowVisible", UInt, HWND)
 WinHide, ahk_id %HWND%
 Else
 WinShow, ahk_id %HWND%
return

;-----Sets Taskbar to auto hide-----
#!y:: HideShowTaskbar(hide := !hide)
   
HideShowTaskbar(action) {
   static ABM_SETSTATE := 0xA, ABS_AUTOHIDE := 0x1, ABS_ALWAYSONTOP := 0x2
   VarSetCapacity(APPBARDATA, size := 2*A_PtrSize + 2*4 + 16 + A_PtrSize, 0)
   NumPut(size, APPBARDATA), NumPut(WinExist("ahk_class Shell_TrayWnd"), APPBARDATA, A_PtrSize)
   NumPut(action ? ABS_AUTOHIDE : ABS_ALWAYSONTOP, APPBARDATA, size - A_PtrSize)
   DllCall("Shell32\SHAppBarMessage", UInt, ABM_SETSTATE, Ptr, &APPBARDATA)
}

return

;-----Changes Window Transparency-----
    #T::
    DetectHiddenWindows, on
    WinGet, curtrans, Transparent, A
    if ! curtrans
        curtrans = 255
    newtrans := curtrans - 64
    if newtrans > 0
    {
        WinSet, Transparent, %newtrans%, A

    }
    else
    {
        WinSet, Transparent, 255, A
        WinSet, Transparent, OFF, A
    }
    return

    #o::
    WinSet, Transparent, 255, A
    WinSet, Transparent, OFF, A
    return
;------------------------Inputs time, date ...------------------------------------------

;-----Inputs exact Date and Time-----
+!r::
{
FormatTime, xx,, dd.MM.yyyy | HH:mm:ss CET
SendInput, %xx%
}
Return

;-----Inputs Date-----
+!t::
{
FormatTime, xx,, dd.MM.yyyy 
SendInput, %xx%
}
Return

;------------------------Changes Resolution of the Main Screen-------------------------------

+#E::
ChangeResolution(32,1680,1050,60)
return

+#R::
ChangeResolution(32,2560, 1600,60)
return

ChangeResolution( cD, sW, sH, rR ) { 
VarSetCapacity(dM,156,0), NumPut(156,2,&dM,36) 
DllCall( "EnumDisplaySettingsA", UInt,0, UInt,-1, UInt,&dM ), 
NumPut(0x5c0000,dM,40) NumPut(cD,dM,104), NumPut(sW,dM,108), 
NumPut(sH,dM,112), NumPut(rR,dM,120) 
Return DllCall( "ChangeDisplaySettingsA", UInt,&dM, UInt,0 ) 
}

;------------------------Displays Message after a action and certain time--------------------------------

;-----if alt+t is pressed it waits 60 secs and displays a message and play a sound-----
!t::
soundplay, C:\Users\paul1\OneDrive\Dokumente\All\Programme\programmfiles\Autohotkey\Sounds\Ticking sound.wav
Sleep, 60000
SplashTextOn,,60,  ,1 minute over
WinMove,  ,, -6, 934,
Soundplay, C:\Windows\Media\Windows Print complete.wav
Sleep 2000
SplashTextOff
return

;------------------------Press ALTGr then move the mouse to any pos ---------------

~^!-::
MouseGetPos, xpos, ypos
KeyWait, LButton, D
BlockInput, MouseMove  
Sleep, 500
MouseGetPos, xxpos, yypos
MouseMove, %xpos%, %ypos%, 0
Sleep, 50
Click, Down
MouseMove, %xxpos%, %yypos%, 2
Click, Up
BlockInput, MouseMoveOff
return

;------------------------AHK stuff -------------------------

;-----Runs Reload.ahk to restart all default ahk scripst-----
^#r::
Soundplay, C:\Windows\Media\Windows Pop-up Blocked.wav
run, "C:\Users\paul1\OneDrive\Dokumente\All\Programme\programmfiles\Autohotkey\For run\Reload.ahk"
return

;-----Gets the current window postion-----
^!ü::
WinGetPos, X, Y, W, H, A
Msgbox, %X%, %Y%, %W%, %H%
return

;-----Gets the current mosue postion-----

+#m::
MouseGetPos, xpos, ypos 
MsgBox,%xpos% %ypos%
Return


;-----Copies Script to AHK file-----

#f::run, "C:\Users\paul1\OneDrive\Dokumente\All\Programme\programmfiles\Autohotkey\Original Scripts\Utility\QuickSaveThisScript.ahk"
return

;------------------------Media Related Stuff-------------------------------------------------------


;Change Volume

~XButton2 & WheelUp::
LWin & WheelUp::Volume_Up
~XButton2 & WheelDown::
LWin & WheelDown::Volume_Down

;Media Pause Play

!XButton2::Media_Play_Pause
XButton2 & MButton::Media_Play_Pause

;------------------------Open Image in Adobe PS--------------

SetTitleMatchMode, 2
SetKeyDelay, 100
SetMouseDelay, 200
; hotkey :ctrl+alt+p
+!p::
ClipOld:=ClipboardAll
clipboard:="" ; Empty Clipboard
Send ^c
Clipwait,2
IfWinExist, ahk_class Photoshop
{
WinActivate, ahk_class Photoshop
; open a new file
Send ^o
; paste the file name
SendInput,{raw}%clipboard%
; open it
Send {Enter}
}
else
{
Run, "C:\Program Files\Adobe\Adobe Photoshop 2021\Photoshop.exe" %clipboard%
}
Clipboard:=ClipOld
return


;------------------------Games--------------

