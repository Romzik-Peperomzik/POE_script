GetMouseColorPos() {                             ; Picking color and coords at mouse position.
    MouseGetPos, MouseX, MouseY
    PixelGetColor, color, %MouseX%, %MouseY%
    MsgBox The current cursor position is x=%MouseX%, y=%MouseY%, color is %color%.
    return
}


SmokeMine() {
    Send %detonate_button%
    Send %smoke_mine_button%
    sleep %mine_laying_time%
    Send %detonate_button%
    sleep 40
    Send %detonate_button%
    return
}


SequenceOfSkills() {
    Click, right
    sleep %seq_castspeed_time%
    Send %seq_second_skill%
    sleep 20
    return
}


HoldWalk() {                                                               ; Just holding LMB.
    if GetKeyState("d", "p")
	    Click left down
	    sleep 100
    return
}


SetOfFlasks(list) {             ; Iterating on string and send its substings which delim by -.
    Loop, parse, list, /
    {        
        Send %A_LoopField%
        Sleep 50
    }
    return
}


CtrlClickLoop() {                                                   ; Hold to loop ctrl click.
    Send, ^{LButton}
    Sleep 30
    return
}


CleanInventory(coord_list) {                     ; Cleaning inventory, only 1920x1080px works.
    clean_inventory_toggle := !clean_inventory_toggle
    if (clean_inventory_toggle) {
        SplashTextOn, 100, 1, Sorting...
        WinMove Sorting..., , 1297, 451

        Loop, parse, coord_list, /
        {
            if (!clean_inventory_toggle) {
                break
            }
            arr := StrSplit(A_LoopField, ",")
            inv_point_x := arr[1]
            inv_point_y := arr[2]
            PixelGetColor, inv_curr_point, inv_point_x, inv_point_y
            if (inv_curr_point = 0x000000) {
                continue            
            } else {
                Sleep 20
                Send {Control down}
                MouseMove inv_point_x, inv_point_y
                Click
                Send {Control up}
            }
        }
        if (clean_inventory_toggle) {
            clean_inventory_toggle := !clean_inventory_toggle
        }
        SplashTextOff, 100, 1, Sorting...
    }
    return
}


CardOpener() {                    ; Can stop processing only when current deck are decomposed.
    card_opener_toggle := !card_opener_toggle
    if (card_opener_toggle) {
        SplashTextOn, 100, 1, Opening decks
        WinMove Opening decks, , 1310, 494

        decks_count := 5
        while (decks_count != 0) {
            if (!card_opener_toggle) {
                break
            }
            cards_count := 10
            Send {ShiftDown} 
            while (cards_count != 0) {
                if (!card_opener_toggle) {
                    break
                }
                cards_count := cards_count - 1
                Sleep, 60
                Click
                Sleep, 60
                MouseMove 53, 0, 2, R
            }
            Send {ShiftUp}
            while (cards_count != 11) {
                if (!card_opener_toggle) {
                    break
                }
                cards_count := cards_count + 1
                Click, right
                Sleep, 80
                Click
                MouseMove -53, 0, 2, R
            }
            if (decks_count != 1) {
                MouseMove 53, 53, 2, R
                Click, left
            }
            decks_count := decks_count - 1
        }
        if (card_opener_toggle) {
            card_opener_toggle := !card_opener_toggle
        }
        SplashTextOff
    }
    return
}


FuseJewellerClickLoop() {                                    ; Hold h button to stop clicking.
    currency_click_toggle := !currency_click_toggle
    if currency_click_toggle {
        Send, {Shift down}
        while (currency_click_toggle) {
            if (GetKeyState("h")) {
                break
            }
            Send, {Click}
            Sleep, 250
        }
        Send, {Shift up}
        if (currency_click_toggle) {
            currency_click_toggle := !currency_click_toggle
        }
    }
    return
}


AltChaosRolling() {  ; Roll any item at currency stash tab with highlight border as a sentiel.
    auto_rolling_toggle := !auto_rolling_toggle
    if (auto_rolling_toggle) {
        SplashTextOn, 100, 1, Alts n Chaos
        WinMove Alts n Chaos, , 230, 797

        PixelGetColor border_pixel_color, 291, 395
        Send {ShiftDown} 
        while (border_pixel_color != highlighted_border) {  ; highlighted_border_color
            if (!auto_rolling_toggle) {
                break
            }
            PixelGetColor border_pixel_color, 291, 395
            if (border_pixel_color != highlighted_border) {
                Click
                Sleep, 300
            } else {
                break
            }
        }
        Send {ShiftUp}
        if (auto_rolling_toggle) {
            auto_rolling_toggle := !auto_rolling_toggle
        }
        SplashTextOff
    }
    return
}


AlchBindScourRolling() {
    alch_scour_rolling_toggle := !alch_scour_rolling_toggle
    if (alch_scour_rolling_toggle) {
        SplashTextOn, 100, 1, Alch n scour
        WinMove Alch n scour, , 230, 797

        PixelGetColor border_pixel_color, 291, 407
        while (border_pixel_color != highlighted_border) {
            if (!alch_scour_rolling_toggle) {
                break
            }
            if (alch) {
                MouseMove, 493, 267
                Sleep, 100
                Send {Click Right}
                Sleep, 100
                Send {Click 337 443}
                Sleep, 200
            }
            if (bind) {
                MouseMove, 164, 449
                Sleep, 100
                Send {Click Right}
                Sleep, 100
                Send {Click 337 443}
                Sleep, 200
            }

            PixelGetColor border_pixel_color, 291, 407
            if (border_pixel_color != highlighted_border) {
                MouseMove, 435, 504
                Sleep, 100
                Send {Click Right}
                Sleep, 100
                Send {Click 337 443}
                Sleep, 200
            }
            Sleep, 150
        }
        if (alch_scour_rolling_toggle) {
            alch_scour_rolling_toggle := !alch_scour_rolling_toggle
        }
        SplashTextOff
    }
    return
}


GwenRoller() {
    gwen_roll_toggle := !gwen_roll_toggle
    if (gwen_roll_toggle) {
        SplashTextOn, 100, 1, Gwen rolling.
        WinMove Gwen rolling., , 234, 894
        Sleep 1000

        while (gwen_roll_toggle) {
            if (!gwen_roll_toggle) {
                break
            }
            PixelSearch, itemBorderColorX, itemBorderColorY, 304, 256, 942, 839, highlighted_border, 0, Fast
            if (itemBorderColorX) {
                Px := itemBorderColorX + 30
                Py := itemBorderColorY + 12
                Sleep 20
                Send {Control down}
                Click %Px%, %Py%
                Send {Control up}
            } else {
                Click 943, 875  ; Click reroll items button
            }
            sleep 500
        }
        if (gwen_roll_toggle) {
            gwen_roll_toggle := !gwen_roll_toggle
        }
        SplashTextOff
    }
    return
}


DoorSearcher() {
    door_searcher_toggle := !door_searcher_toggle
    if (door_searcher_toggle) {
        SplashTextOn, 100, 1, Door Searcher.
        WinMove Door Searcher., , 234, 894

        while (door_searcher_toggle) {
            ; Expedition: 811, 417, 1139, 660, 0xFEB173
            ; Heist:      571, 140, 1219, 695, 0xDCC8C8
            PixelSearch, DoorVarX, DoorVarY, 571, 140, 1219, 695, 0xDCC8C8, 0, Fast
            if (DoorVarX) {
                Click
                Click left down  ; to keep moving after click on door lable.
            }
            Sleep 100
        }
        if (door_searcher_toggle) {
            door_searcher_toggle := !door_searcher_toggle
        }
        SplashTextOff
    }
    return
}


Activate_AutoLifeFlask() {
    auto_l_flask_toggle := !auto_l_flask_toggle
    if (auto_l_flask_toggle) {
        SplashTextOn, 100, 1, F activated.
        WinMove F, , 232, 892
        
        while (auto_l_flask_toggle) {
            PixelGetColor, life_color_for_flask, low_life_X, low_life_Y
            if (life_color_for_flask != life_color) {
                PixelGetColor, black_pixel, black_screen_X, black_screen_Y
                if (black_pixel = black_screen) {
                    sleep 3000
                } else {
                    SetOfFlasks(heal_keys_list)
                    Sleep 150
                }
            }
        }
        SplashTextOff
    }
    return
}


Activate_AutoLogout() {                                                  ; Auto Logout Toggle.
    auto_logout_toggle := !auto_logout_toggle
    if (auto_logout_toggle) {
        oosCommand()
        SplashTextOn, 100, 1, Lg activated.
        WinMove Lg activated, , 1536, 230

        while (auto_logout_toggle) {
            PixelGetColor, life_pixel, logout_X, logout_Y
            if (life_pixel != logout_life_color) {
                PixelGetColor, black_pixel, black_screen_X, black_screen_Y
                if (black_pixel = black_screen) {
                    sleep 3000
                } else {
                    SetOfFlasks(heal_keys_list)        ; Drink life potion before logout.
                    GameLogout()
                    Sleep 150
                    Activate_AutoLogout()
                }
            }
        }
        SplashTextOff
    }
    return
}


GameLogout() {                                            ; Closing port which POE use by cports.exe.
    if WinActive("Path of Exile"){                                        ; old: IfWinActive Path of Exile    
        Run ./cports/cports.exe /close * * * * PathofExile.exe            ; old: PathofExile_x64.exe
    }
    return
}


LootBigRegion() {
    PixelSearch, Px, Py, 100, 100, A_ScreenWidth-10, A_ScreenHeight-150, lootColor, 5, Fast
    if (ErrorLevel) {
        return False
    } else {
        Px := Px + 53
        Py := Py + 23
        Click %Px%, %Py%
        return True
    }
}


LootSmallRegion() {
    PixelSearch, Px, Py, 896, 277, 1104, 850, lootColor, 5, Fast
    if (ErrorLevel) {
        return False
    } else {
        Px := Px + 30
        Py := Py + 12
        Click %Px%, %Py%
        return True
    }
}


LootAll() {
    while (GetKeyState("LControl", "P") && GetKeyState("s", "P")) {
        if (!LootSmallRegion()) {
            break
        }
        Sleep loot_delay
    }

    while (GetKeyState("LControl", "P") && GetKeyState("s", "P")) {
        LootBigRegion()
        Sleep 1200
        while (GetKeyState("LControl", "P") && GetKeyState("s", "P")) {
            if (!LootSmallRegion()) {
                break
            }
            Sleep loot_delay
        }
    }
}


oosCommand() {                                           ; Cheking synchronization with server.
	BlockInput On
	SendInput, {enter}
	Sleep 2
	SendInput, {/}oos
	SendInput, {enter}
	BlockInput Off
	return
}


OpenPortal() {
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


Hideout() {                                                                 ; Hideout Command.
	BlockInput On
	SendInput, {Enter}
	Sleep 2
	SendInput, {/}hideout
	SendInput, {Enter}
	BlockInput Off
	return
}


PartyInvite() {                                                     ; Invite to party command.
	BlockInput On
	Send ^{Enter}{Home}{Delete}/invite {Enter}
	BlockInput Off
	return
}


PartyKick() {                                                                  ; Kick command.
	BlockInput On
	Send ^{Enter}{Home}{Delete}/kick {Enter}
	BlockInput Off
	return
}


CustomChatCommand() {                                                          ; Invite to party command.
	BlockInput, On
    Suspend, On
	Send ^{Enter}{Home}{Shift down}{End}{Shift up}{Delete}%chat_command%{Enter}
    Suspend, Off
	BlockInput Off
	return
}
