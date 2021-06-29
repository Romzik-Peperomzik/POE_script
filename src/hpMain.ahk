#IfWinActive, Path of Exile ahk_class POEWindowClass
#SingleInstance force  ; Replaces the old instance of script automatically
#NoEnv  ; Recommended for performance
#Persistent  ; Keeps a script permanently running
#MaxThreadsPerHotkey 2

SetDefaultMouseSpeed, 0  ; Sets the mouse speed, 0 - instantly


;//определение позиции ху для пикселя Alt+X hotkey.
!x::  
MouseGetPos, MouseX, MouseY
MsgBox The current cursor position is %MouseX%, %MouseY%.
return

;//определение цвета пикселя на позиции ху Alt+Z hotkey.
!z::  
MouseGetPos, MouseX, MouseY
PixelGetColor, color, %MouseX%, %MouseY%
MsgBox The color at the current cursor position is %color%.
return

;//Flasks
a::
Send 2345
sleep 50
;Send q
return

;//Smoke mine
r::		
Send d
sleep 40
Send r
sleep 150
Send d
sleep 40
Send d
return


/*
;//Cremation + desecrate
~RButton::
Click, right
sleep 340
Send q
sleep 20
return

;//BF + BB
~RButton::
Click, right
sleep 310
Send q
sleep 20
return

;//Autorun
$^D:: 
	if GetKeyState("d", "p")
		Click left down
		sleep 100
return
*/

;//Pixel search function
pixelExist(Color, x1, y1, x2, y2)
{
		PixelSearch, Px, Py, x1, y1, x2, y2, color, 0, Fast		
		if ErrorLevel			
			return 0
		else
			return 1	
}

;//Main logout function 
;//HP FullScreen res:1920x1080		
;//Statue yellow save point: 39 979 0x8DACD0	black pixel at this coords now are constant.	
;//Delve values: #75% 0x201698 151, 924
;//Life flask values: #95% 0x271F65 112, 885
;//#80% 0x282073 73, 911	#70% 0x1B1A5F 67, 932	#58% 0x1D1B71 72, 957	#45% 0x1E0EA8 91, 972
$F3::
LoopNoticeCmd()
oosCommand()
Loop
{		
	if(pixelExist("0x000000", 39, 979, 39, 979)=1)
    {
        Send {F2} 
        Send {Pause}
        sleep 3000
        Send {F2}   
        Send {Pause}    
    }
	if(pixelExist("0x1E0EA8", 91, 972, 91, 972)=0) and (pixelExist("0x000000", 39, 979, 39, 979)=0)
	{
		logout()
		sleep 200
	}
}


;//'`' = SC029
SC029::logout() 
logout(){
        IfWinActive Path of Exile
        {
        Run cports.exe /close * * * * PathofExile_x64.exe
        }
        return
}

oosCommand(){
oosCommand:
	BlockInput On
	SendInput, {enter}
	Sleep 2
	SendInput, {/}oos
	SendInput, {enter}
	BlockInput Off
	return
}

;//Loop notification on screen(only windowed)
LoopNoticeCmd(){
LoopNoticeCmd:
SplashTextOn, 100, 1, Loop activated.
WinMove Loop, , 1536, 230
}

;//Hideout 
$F5::hideout()
hideout(){
hideoutCommand:
	BlockInput On
	SendInput, {Enter}
	Sleep 2
	SendInput, {/}hideout
	SendInput, {Enter}
	BlockInput Off
	return
}

;//Party invite
$F6::invite()
invite(){
inviteCommand:
	BlockInput On
	Send ^{Enter}{Home}{Delete}/invite {Enter}
	BlockInput Off
	return
}

;//Party kick last member
$F7::kick()
kick(){
kickCommand:
	BlockInput On
	Send ^{Enter}{Home}{Delete}/kick {Enter}
	BlockInput Off
	return
}

;//Utilities
RCtrl::reload
Pause:: pause
$F2:: suspend
