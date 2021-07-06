GetMouseColorPos(){  ; Picking color and coords at mouse position.
    MouseGetPos, MouseX, MouseY
    PixelGetColor, color, %MouseX%, %MouseY%
    MsgBox The current cursor position is x=%MouseX%, y=%MouseY%, color is %color%.
    return
}

SetOfFlasks(list){  ; Iterating on string and send its substings which delim by -.
    Loop, parse, list, -
    {        
        Send %A_LoopField%
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

Activate_AutoLifeFlask(){
    auto_life_flask_active := !auto_life_flask_active
    if auto_life_flask_active{
        AutoLifeFlaskNotice()
        ; MsgBox , 0, , Auto flask : On, 0.5
        AutoLifeFlask()
    }
    else{
        SplashTextOff
        ; MsgBox , 0, , Auto flask : Off, 0.5
    }
    return
}

AutoLifeFlask(){    
    while auto_life_flask_active
    {
        if WinActive("Path of Exile")
        {
            PixelGetColor, color, low_life_X, low_life_Y
            if color != %life_color%
            {
                SetOfFlasks(low_life_flask_list)
                Sleep 150
            }
        }
    }    
    return
}

;HP FullScreen res:1920x1080		
;Statue yellow save point: 39 979 0x8DACD0	black pixel at this coords now are constant.	
;Delve values: #75% 0x201698 151, 924
;Life flask values: #95% 0x271F65 112, 885
;#80% 0x282073 73, 911	#70% 0x1B1A5F 67, 932	#58% 0x1D1B71 72, 957	#45% 0x1E0EA8 91, 972  #test 168, 927 0x1B1291

Activate_AutoLogout(){  
    auto_logout_active := !auto_logout_active
    if auto_logout_active{        
        oosCommand()
        AutoLogoutNotice()
        EventLogoutLoop() 
    }
    else{
        SplashTextOff
    }
    return
}

EventLogoutLoop(){  ; Main logout function.
    while auto_logout_active
    {
        if WinActive("Path of Exile")
        {
            PixelGetColor, color, logout_X, logout_Y            
            if color = %black_screen%  ; If it's tp's screen - suspend and sleep 3s.
            {
                Send {F2}
                Send {Pause}
                sleep 3000
                Send {F2}
                Send {Pause}
            }
            if color != %logout_life_color%  ; If life pixel not found.
            {
                if color != %black_screen%  ; And it's not a loading screen.
                {
                    SetOfFlasks(low_life_flask_list)  ; Drink life potion before logout.
                    GameLogout()
                    Sleep 150
                    Activate_AutoLogout()
                }
            }
        }
    }    
    return
}

GameLogout(){  ; Closing port which POE use by cports.exe.
    IfWinActive Path of Exile
    {
    Run ./cports/cports.exe /close * * * * PathofExile_x64.exe
    }
    return
}

oosCommand(){  ; Cheking synchronization with server.
	BlockInput On
	SendInput, {enter}
	Sleep 2
	SendInput, {/}oos
	SendInput, {enter}
	BlockInput Off
	return
}

AutoLogoutNotice(){  ; AutoLogout notification on screen(only windowed).
    SplashTextOn, 100, 1, Lg activated.
    WinMove Lg activated, , 1536, 230
}

AutoLifeFlaskNotice(){  ; AutoLifeFlask notification on screen(only windowed).
    SplashTextOn, 100, 1, F activated.
    WinMove F, , 1536, 230
}

LootBigRegion(){
    PixelSearch, Px, Py, 100, 100, A_ScreenWidth-10, A_ScreenHeight-150, lootColor, 5, Fast
    if ErrorLevel{
        return False
    }
    else{
        Px := Px + 53
        Py := Py + 23
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
        Px := Px + 52
        Py := Py + 22
        Click %Px%, %Py%
        return True
    }
}

LootAll(){
    while (GetKeyState("LControl", "P") && GetKeyState("s", "P")){
        if !LootSmallRegion(){
            break
        }
        Sleep loot_dalay
    }

    while (GetKeyState("LControl", "P") && GetKeyState("s", "P")){
        LootBigRegion()
        Sleep 1200
        while (GetKeyState("LControl", "P") && GetKeyState("s", "P")){
            if !LootSmallRegion(){
                break
            }
            Sleep loot_dalay
        }
    }
}

OpenPortal(){
    BlockInput On
    MouseGetPos x, y 
    Send {tab}
    Click, %portalX%, %portalY%, right
    Send {tab}
    MouseMove, x, y
    BlockInput Off
    return
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

