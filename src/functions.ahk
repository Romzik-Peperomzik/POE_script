GetMouseColorPos(){                                      ; Picking color and coords at mouse position.
    MouseGetPos, MouseX, MouseY
    PixelGetColor, color, %MouseX%, %MouseY%
    MsgBox The current cursor position is x=%MouseX%, y=%MouseY%, color is %color%.
    return
}


SmokeMine(){
    Send %detonate_button%
    Send %smoke_mine_button%
    sleep %mine_laying_time%
    Send %detonate_button%
    sleep 40
    Send %detonate_button%
    return
}


SequenceOfSkills(){
    Click, right
    sleep %seq_castspeed_time%
    Send %seq_second_skill%
    sleep 20
    return
}


HoldWalk(){                                              ; Just holding LMB.
    if GetKeyState("d", "p")
	    Click left down
	    sleep 100
    return
}


SetOfFlasks(list){                                 ; Iterating on string and send its substings which delim by -.
    Loop, parse, list, -
    {        
        Send %A_LoopField%
        Sleep 50
    }
    return
}


DeliriumFlasks(){                                        ; Set of flasks of Delirium script.
    Loop, parse, flask_key_set, -
    {        
        Send %A_LoopField%
        Sleep 50
    }
    return
}


AutoGuardSkill(){
    Send, {LButton}
    return
}


AutoFrostShield(){
    BlockInput on
    Send, {e}
    BlockInput Off
    return
}


QuickDiscipline(){
    Send, {t}
    return
}


AutoDiscipline(){
    PixelGetColor, shield_color, 144, 914
    if shield_color != 0xFFD8AE
    {
        Send, {t}
    }
    PixelGetColor, bot_shield_color, 210, 252
    if bot_shield_color != 0x6F72C3
    {
        Send, {t}
    }
    return
}


DeliriumSubroutinesToggle(){                             ; Subroutines for DoDelirious function.
    deli_sub_toggle := !deli_sub_toggle
    if deli_sub_toggle{
        SetTimer, DeliriumFlasks, 8000
        SetTimer, QuickDiscipline, 1500
        SetTimer, AutoGuardSkill, 5000                   ; Immortal call
        SetTimer, AutoFrostShield, 2000
        ; SetTimer, AutoDiscipline, 500
    } else {
        SetTimer, DeliriumFlasks, Off
        SetTimer, QuickDiscipline, Off
        SetTimer, AutoGuardSkill, Off
        SetTimer, AutoFrostShield, Off
        ; SetTimer, AutoDiscipline, Off
    }
}


DoDelirious(){                                           ; Main Delirium script function.
    do_delirious_toggle := !do_delirious_toggle
    if do_delirious_toggle{
        SplashTextOn, 100, 1, Do Delirious...
        WinMove Do Delirious..., , 1522, 312
        DeliriumSubroutinesToggle()                      ; Turn On Delirium subroutines.
        Send, {RButton down}                             ; Hold Spark key.
    } else {
        if deli_sub_toggle{                              ; Turn Off Delirium subroutines.
            DeliriumSubroutinesToggle()
        }
        Send, {RButton up}                               ; Release Spark key.
        SplashTextOff, 100, 1, Do Delirious...
    }
    return
}


AutoRolling(){                        ; Roll any item at currency stash tab with highlight border as a sentiel.
    PixelGetColor cheking_border_pixel, 290, 370
    Send {ShiftDown} 
    While cheking_border_pixel != 0x77B4E7
    {
        PixelGetColor cheking_border_pixel, 290, 370
        if cheking_border_pixel != 0x77B4E7
        {
            Click
        }
        else
        {
            Send {ShiftUp}
        }
        Sleep 300
    }
    Send {ShiftUp}
    return
}


CardOpener(){
    card_count := 10
    Send {ShiftDown} 
    While card_count != 0
    {
        card_count := card_count - 1
        Sleep 60
        Click
        Sleep 60
        MouseMove 53, 0, 2, R
    }
    Send {ShiftUp}
    While card_count != 11
    {
        card_count := card_count + 1
        Click, right
        Sleep 80
        Click
        MouseMove -53, 0, 2, R
    }
    return
}


ClickLoop(){                                             ; Quick left clicking loop.
    {
        Send, ^{LButton}
        Sleep 30
    }
    return
}


CleanInventory(coord_list){                              ; Cleaning inventory, only 1920x1080px works.
    SplashTextOn, 100, 1, Sorting...
    WinMove Sorting..., , 1297, 451
    Loop, parse, coord_list, -
    {
        arr := StrSplit(A_LoopField, ",")
        inv_point_x := arr[1]
        inv_point_y := arr[2]
        PixelGetColor, inv_curr_point, inv_point_x, inv_point_y
        if inv_curr_point = 0x000000
        {
            continue            
        }
        else
        {
            Sleep 20
            Send {Control down}
            MouseMove inv_point_x, inv_point_y
            Click
            Send {Control up}
        }
    }
    SplashTextOff, 100, 1, Sorting...
    return
}


Activate_AutoLifeFlask(){                                ; Auto Logout Toggle.
    auto_l_flask_toggle := !auto_l_flask_toggle
    if auto_l_flask_toggle{
        AutoLifeFlaskNotice()
        AutoLifeFlask()
    }
    else{
        SplashTextOff
    }
    return
}


AutoLifeFlask(){                                         ; Main Auto Life Flask function.
    while auto_l_flask_toggle
    {
        if WinActive("Path of Exile")
        {
            PixelGetColor, life_color_for_flask, low_life_X, low_life_Y
            if life_color_for_flask != %life_color%
            {
                PixelGetColor, black_pixel, black_screen_X, black_screen_Y
                if black_pixel = %black_screen%  ; If it's tp's screen - suspend and sleep 3s.
                {
                    Send {F2}
                    send {Pause}
                    sleep 3000
                    send {Pause}
                    Send {F2}
                }
                else{
                    SetOfFlasks(low_life_flask_list)
                    Sleep 150
                }
            }
        }
    }    
    return
}


Activate_AutoLogout(){                                   ; Auto Logout Toggle.
    auto_logout_toggle := !auto_logout_toggle
    if auto_logout_toggle{        
        oosCommand()
        AutoLogoutNotice()
        EventLogoutLoop()
    }
    else{
        SplashTextOff
    }
    return
}


EventLogoutLoop(){                                       ; Main Auto logout function.
    while auto_logout_toggle
    {
        if WinActive("Path of Exile")
        {
            PixelGetColor, life_pixel, logout_X, logout_Y            
            if life_pixel != %logout_life_color%         ; If life pixel not found.
            {                
                PixelGetColor, black_pixel, black_screen_X, black_screen_Y
                if black_pixel = %black_screen%          ; If it's tp's screen - suspend and sleep 3s.
                {
                    Send {F2}
                    send {Pause}
                    sleep 3000
                    send {Pause}
                    Send {F2}
                }
                else{
                    SetOfFlasks(low_life_flask_list)     ; Drink life potion before logout.
                    GameLogout()
                    Sleep 150
                    Activate_AutoLogout()
                    ; MsgBox %black_pixel%, %life_pixel%
                }
            }

        }
    }    
    return
}


GameLogout(){                                            ; Closing port which POE use by cports.exe.
    if WinActive("Path of Exile"){                                        ; old: IfWinActive Path of Exile    
        Run ./cports/cports.exe /close * * * * PathofExile.exe            ; old: PathofExile_x64.exe
    }
    return
}


oosCommand(){                                            ; Cheking synchronization with server.
	BlockInput On
	SendInput, {enter}
	Sleep 2
	SendInput, {/}oos
	SendInput, {enter}
	BlockInput Off
	return
}


AutoLogoutNotice(){                                      ; AutoLogout notification on screen(only windowed).
    SplashTextOn, 100, 1, Lg activated.
    WinMove Lg activated, , 1536, 230
}


AutoLifeFlaskNotice(){                                   ; AutoLifeFlask notification on screen(only windowed).
    SplashTextOn, 100, 1, F activated.
    WinMove F, , 232, 892
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
    PixelSearch, Px, Py, 896, 277, 1104, 850, lootColor, 5, Fast
    if ErrorLevel{
        return False
    }
    else{
        Px := Px
        Py := Py + 11
        Click %Px%, %Py%
        return True
    }
}


LootAll(){
    while (GetKeyState("LControl", "P") && GetKeyState("s", "P")){
        if !LootSmallRegion(){
            break
        }
        Sleep loot_delay
    }

    while (GetKeyState("LControl", "P") && GetKeyState("s", "P")){
        LootBigRegion()
        Sleep 1200
        while (GetKeyState("LControl", "P") && GetKeyState("s", "P")){
            if !LootSmallRegion(){
                break
            }
            Sleep loot_delay
        }
    }
}


OpenPortal(){
    BlockInput On
    MouseGetPos x, y 
    Send {tab}
    Sleep 200
    Click, %portalX%, %portalY%, right
    Sleep 100
    Send {tab}
    MouseMove, x, y
    BlockInput Off
    return
}


Hideout(){                                               ; Hideout Command.
	BlockInput On
	SendInput, {Enter}
	Sleep 2
	SendInput, {/}hideout
	SendInput, {Enter}
	BlockInput Off
	return
}


PartyInvite(){                                           ; Invite to party command.
	BlockInput On
	Send ^{Enter}{Home}{Delete}/invite {Enter}
	BlockInput Off
	return
}


PartyKick(){                                             ; Kick command.
	BlockInput On
	Send ^{Enter}{Home}{Delete}/kick {Enter}
	BlockInput Off
	return
}
