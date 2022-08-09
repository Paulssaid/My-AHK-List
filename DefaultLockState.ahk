#NoEnv  ; Recommended for performance and compatibility with future AutoHotkey releases.
; #Warn  ; Enable warnings to assist with detecting common errors.
SendMode Input  ; Recommended for new scripts due to its superior speed and reliability.
SetWorkingDir %A_ScriptDir%  ; Ensures a consistent starting directory.

Menu, Tray, Icon , C:\Users\paul1\OneDrive\Dokumente\All\Programme\programmfiles\Autohotkey\Tray Icons\white\Keyboard.ico

#singleinstance force

SetNumlockState, AlwaysOn
SetCapslockState, AlwaysOff

;-------------------------------------------------------Picture in Picture-------------------------------------------------------

#IfWinActive ahk_exe vivaldi.exe
Capslock & 1::
WinMove, Picture in picture,, 1002, 626, 669, 376
if not WinExist("Picture in picture")
Send, !p
WinWait, Picture in picture
WinMove, Picture in picture,, 1002, 626, 669, 376
return

#IfWinActive ahk_exe vivaldi.exe
Capslock & 4::
WinMove, Picture in picture,, -1827, 44, 1348, 758
if not WinExist("Picture in picture") 
Send, !p
WinWait, Picture in picture
WinMove, Picture in picture,, -1827, 44, 1348, 758
return

#IfWinExist Picture in picture
Capslock & x::WinClose, Picture in picture

#IfWinExist Picture in picture
~#d::WinMinimize, Picture in picture

#IfWinActive ahk_exe vivaldi.exe
Capslock & 3::
WinMove, Picture in picture,, -1147, 392, 756, 426
if not WinExist("Picture in picture") 
Send, !p
WinWait, Picture in picture
WinMove, Picture in picture,, -1147, 392, 756, 426
Sleep, 50
WinMove, Picture in picture,, -1147, 392, 756, 426
return

#IfWinActive ahk_exe vivaldi.exe
Capslock & 2::
WinMove, Picture in picture,, 83, 83, 1527, 859
if not WinExist("Picture in picture")
Send, !p
WinWait, Picture in picture
WinMove, Picture in picture,, 83, 83, 1527, 859
return															

+!f::
Send ^{F12}
Sleep 1000
Send pass
Sleep 1000
Click 314 198
Sleep 200
Click 314 198
Return

^#w::
Send ^t
Sleep 150
Send ^1
Sleep 150
Send ^w
Return

#IfWinActive 


;-------------------------open EZBlocker and spotify-----------------------------

#IfWinActive
+#s::
run, "C:\Users\paul1\OneDrive\Dokumente\All\Programme\programmfiles\Musik\Ez 2\EZBlocker2.exe"
winwait, EZBlocker 2
WinMinimize
return

Capslock & s::
if WinExist("ahk_exe spotify.exe")
WinClose
if WinExist("ahk_exe EZBlocker2.exe")
WinClose
Return

Capslock & h::
winhide ahk_exe spotify.exe

;-------------------------Discord-------------------------------------------------------

Capslock & c::
if WinExist("ahk_exe Discord.exe")
WinClose
Return

;-------------------------Roblox-------------------------------------------------------

#IfWinActive Roblox
;Shift::q
Alt::Shift

RButton::q
XButton2::y
XButton1::x
q::v
capslock::c

^y::
Sleep 200
Send, j
Sleep 200
Send, {Ctrl}
Sleep 200
Send, {Ctrl}
Sleep 200
Send, 5
Sleep 70
Click 800 800
Sleep 50
Send, 2
Return

toggle = 0
#MaxThreadsPerHotkey 2

F1::
    Toggle := !Toggle
     While Toggle{
        click
        sleep 100
    }
return

toggle = 0
#MaxThreadsPerHotkey 2

F2::
    Toggle := !Toggle
     While Toggle{
        Send q 
        sleep 100
    }
return

toggle = 0
#MaxThreadsPerHotkey 2

F3::
    Toggle := !Toggle
     While Toggle{
        click
        sleep 1000
    }
return

#IfWinActive 

;------------------------------Genshin Impact-----------------------------------------

#IfWinActive ahk_exe GenshinImpact.exe
XButton2::z
XButton1::1

RButton::
Send {LButton down} 
Sleep 500
Send {LButton up}
Return

Capslock::RButton

^b::
if WinActive("Genshin Impact")
Click, 1482 996
Sleep, 500
Click, 1031 598
Sleep, 50
Click, 1035 718
Sleep, 50
Click, 850 864 0
Sleep, 500
Click
return


;Switches selected Artifact

^s::
if WinActive("Genshin Impact")
Click, 1348 984
Sleep, 500
Click, 1026 714
return

;Gadgeds

^g::
if WinActive("Genshin Impact")
Send, B
Sleep 1100
Click, 921 42
return

;Food

^f::
if WinActive("Genshin Impact")
Send, B
Sleep 1100
Click, 752 41
return

;Serentia Pot map

^m::
if WinActive("Genshin Impact")
Send, m
Sleep 1500
Click, 1611 994
Sleep 700
Click, 1304 213
return

;Places furniture

^y::
if WinActive("Genshin Impact")
Click, 110 969
Sleep 500
Click, 1611 550
return

^k::
if WinActive("Genshin Impact")
Loop, 4
{
    Click, 1284 690
    Sleep, 500
    Click, 1445 991
    Sleep, 500
}
return

^1::
if WinActive("Genshin Impact")
Send paul.1701.ps@gmail.com
Sleep 100
Send %A_Tab%
Sleep 100
Send JTP7LLhj5KehtTc
Return

^2::
if WinActive("Genshin Impact")
Send pavlopaul88@gmail.com
Sleep 100
Send %A_Tab%
Sleep 100
Send Adelsaid1011
Return

$right::
    While, GetKeyState("right", "P")
    {
        Click, 1135, 804, Left
		Sleep 200		
    }
Return

$up::
    While, GetKeyState("up", "P")
    {
        Click, 1154, 730, Left
		Sleep 200		
    }
Return

left::Click, 84, 43, Left

;------------------------Minecraft---------------------------

#IfWinActive Minecraft

F5::Send {LButton down}
F6::Send {RButton down}

#MaxThreadsPerHotkey 3

F7::
Toggle := !Toggle
Loop
{
	If (!Toggle)
		Break
	Click
	Sleep 1050 ; Make this number higher for slower clicks, lower for faster.
}
Return

;-------------------------------------------------------Stick fight-------------------------------------------------------

#IfWinActive Stick Fight: The Game

space::w

;-------------------------------------------------------PDF-------------------------------------------------------

#IfWinActive ahk_exe Acrobat.exe

^left::
Click, 1449, 581
Sleep, 100
Click, 1666, 1009
Return

;-------------------------------------------------------PDF-------------------------------------------------------

#IfWinActive Rule 34

mbutton::+o