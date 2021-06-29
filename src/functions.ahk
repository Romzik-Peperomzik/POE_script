GetMouseColorPos(){  ; Picking color and coords at mouse position.
    MouseGetPos, MouseX, MouseY
    PixelGetColor, color, %MouseX%, %MouseY%
    MsgBox The current cursor position is %MouseX%, %MouseY%, color is %color%.
    return
}

QuickFlask(list){  ; Iterating on string and send its substings which delim by -.
    Loop, parse, list, -
    {
        Send {%A_LoopField%}
        Sleep 50
    }
    return
}

SmokeMine(){
    Send d
    Send r
    sleep 150
    Send d
    sleep 40
    Send d
    return
}

CremationDesecrate(){
    Click, right
    sleep 340
    Send q
    sleep 20
    return
}

BFBB(){
    Click, right
    sleep 310
    Send q
    sleep 20
    return
}

HoldWalk(){
    if GetKeyState("d", "p")
	Click left down
	sleep 100
    return
}

PixelExist(Color, x1, y1, x2, y2){  ; Pixel search function.
    PixelSearch, Px, Py, x1, y1, x2, y2, color, 0, Fast
    if ErrorLevel
        return 0
    else
        return 1
}

;//HP FullScreen res:1920x1080		
;//Statue yellow save point: 39 979 0x8DACD0	black pixel at this coords now are constant.	
;//Delve values: #75% 0x201698 151, 924
;//Life flask values: #95% 0x271F65 112, 885
;//#80% 0x282073 73, 911	#70% 0x1B1A5F 67, 932	#58% 0x1D1B71 72, 957	#45% 0x1E0EA8 91, 972  #test 168, 927 0x1B1291
EventLogoutLoop(){  ; Main logout function.
    LoopNoticeCmd()
    oosCommand()
    Loop
    {
        if(PixelExist("0x000000", 39, 979, 39, 979)=1)
        {
            Send {F2}
            Send {Pause}
            sleep 3000
            Send {F2}
            Send {Pause}
        }
        if(PixelExist("0x1B1291", 168, 927, 168, 927)=0) and (PixelExist("0x000000", 39, 979, 39, 979)=0)
        {
            GameLogout()
            sleep 200
        }
    }
}

GameLogout(){  ; Closing port which POE use by cports.exe.
    IfWinActive Path of Exile
    {
    Run ./cports/cports.exe /close * * * * PathofExile_x64.exe
    }
    return
}

oosCommand(){  ; Clearing ign stack?
	BlockInput On
	SendInput, {enter}
	Sleep 2
	SendInput, {/}oos
	SendInput, {enter}
	BlockInput Off
	return
}

LoopNoticeCmd(){  ; Loop notification on screen(only windowed).
    SplashTextOn, 100, 1, Loop activated.
    WinMove Loop, , 1536, 230
}

LootBigRegion(){
    PixelSearch, Px, Py, 100, 100, A_ScreenWidth-10, A_ScreenHeight-150, lootColor, 5, Fast
    if ErrorLevel{
        return False
    }
    else{
        Px := Px + 50
        Py := Py + 20
        Click %Px%, %Py%
        return True
    }
}

LootSmallRegion(){
    PixelSearch, Px, Py, 650, 300, 950, 500, lootColor, 5, Fast
    if ErrorLevel{
        return False
    }
    else{
        Px := Px + 50
        Py := Py + 20
        Click %Px%, %Py%
        return True
    }
}

LootAll(){
    while (GetKeyState("LControl", "P") && GetKeyState("a", "P")){
        if !LootSmallRegion(){
            break
        }
        Sleep loot_dalay
    }

    while (GetKeyState("LControl", "P") && GetKeyState("a", "P")){
        LootBigRegion()
        Sleep 1200
        while (GetKeyState("LControl", "P") && GetKeyState("a", "P")){
            if !LootSmallRegion(){
                break
            }
            Sleep loot_dalay
        }
    }
}

Hideout(){  ; Hideout Command.
	BlockInput On
	SendInput, {Enter}
	Sleep 2
	SendInput, {/}hideout
	SendInput, {Enter}
	BlockInput Off
	return
}

PartyInvite(){  ; Invite to party command.
	BlockInput On
	Send ^{Enter}{Home}{Delete}/invite {Enter}
	BlockInput Off
	return
}

PartyKick(){  ; Kick command.
	BlockInput On
	Send ^{Enter}{Home}{Delete}/kick {Enter}
	BlockInput Off
	return
}

