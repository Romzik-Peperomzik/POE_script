#Include functions.ahk
#Include SearchItem.ahk
#Include gui.ahk
#Include rw_settings.ahk

#IfWinActive, Path of Exile ahk_class POEWindowClass
#SingleInstance force  ; Replaces the old instance of script automatically
#NoEnv  ; Recommended for performance
#Persistent  ; Keeps a script permanently running
#MaxThreadsPerHotkey 2

SetDefaultMouseSpeed, 0            ; Sets the mouse speed, 0 - instantly

global quickFlasksHotkey0
global quickFlasksHotkey1

global keys_flask_list
global quick_flask_list_1

global quick_flask_active = True

global lootColor
global loot_dalay

global portalX
global portalY

global low_life_X
global low_life_Y
global life_color
global low_life_flask_list
global auto_flask_active = False

global mine_laying_time
global auto_detonate_active = False

;-----------------------------------------------------------------------------
; Read settings here?
; And run gui?
;-----------------------------------------------------------------------------

!z::GetMouseColorPos()             ; Alt+Z get pixel coords and color at mouse.

a::QuickFlask(keys_flask_list)     ; a flasks

r::SmokeMine()	                   ;Smoke mine



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
