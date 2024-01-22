SequenceOfSkills() {
    /*  Sequentially press %seq_first_skill% skill key then awaits
        delay (cast time of 1st skill) and press %seq_second_skill%.
    */
    Send, {%seq_first_skill%}
    Sleep, %seq_castspeed_time%
    Send, {%seq_second_skill%}
    Sleep, 20
}


HoldWalk() {
    ; Press LMB and didn't release it.
    Click left down
}


SetOfFlasks() {
    ; Sequentially press key list. 
    Loop, parse, flask_key_set, /
    {        
        Send %A_LoopField%
        Sleep 50
    }
}


CleanInventory() {
    /*  Takes %inv_coords% with %x%, %y% and %color% of each cell in inventory
        and runs over them. If color != %color% then pressing ctrl + LMB on cell
        (its color was changed because of cell are not empty).

        Required: Before use, create inventory mask with MakeInvColorMap(). 
        Open stash window ingame.
    */
    Loop, parse, inv_coords, `,
    {
        if (!clean_inv_toggle) {
            break
        }
        arr := StrSplit(A_LoopField , "-")
        
        PixelGetColor, color, arr[1], arr[2]
        if (color = arr[3]) {
            continue
        } else {
            Sleep, 25
            Send {Control down}
            MouseMove arr[1], arr[2]
            Click
            Send {Control up}
            Sleep, 125
        }
    }
}


CardOpener() {
    /*  Open card decks sequentially. Place 5 full stacked(10) decks in column
        in inventory starts with first cell. Hover mouse on first deck in
        first cell and press trigger key.
    */
    decks_count := 5
    while (decks_count != 0 && card_opener_toggle) {
        cards_count := 10
        while (cards_count != 0 && card_opener_toggle) {
            Send, {ShiftDown}
            cards_count -= 1
            Sleep, 60
            Click
            Sleep, 60
            MouseMove %cell_width%, 0, 2, R
            Send, {ShiftUp}
        }
        while (cards_count != 10 && card_opener_toggle) {
            cards_count += 1
            Click, Right
            Sleep, 80
            Click
            MouseMove -%cell_width%, 0, 2, R
        }
        Click, Right
        Sleep, 80
        Click
        if (decks_count != 1 && card_opener_toggle) {
            MouseMove 0, %cell_height%, 2, R
            Click
        }
        decks_count -= 1
    }
    Send, {ShiftUp}
}


DoorSearcher() {
    /*  Search for "Door" labels ingame and click on
        mouse position when found. For needle picks font
        color of "Door" label.
        TODO: проверить как это работает и работает ли вообще.
        Not working. (Haven't need to brush code)
    */
    ; Expedition: 811, 417, 1139, 660, 0xFEB173
    ; Heist:      571, 140, 1219, 695, 0xDCC8C8
    PixelSearch, DoorVarX, DoorVarY, 571, 140, 1219, 695, 0xDCC8C8, 0, Fast
    if (DoorVarX) {
        Click
        Click left down  ; to keep moving after click on door lable.
    }
}


AutoHeal() {
    /*  Checks %health_X%, %health_Y% pixel color if it below a %low_health_color%
        (pixel color are changed) then press %heal_key_1%. If in UI
        second health key are active, then checks %health_X%, %health_Y%
        again and if this below a %low_health_color% too, press %heal_key_2%.
        %heal_key_1_are_flask% are used to check if 1st life flask are
        non-instant in acts it could be usefull for example.
        For %life_based% 1st flask, 2nd flask/enduring cry
        For %es_based% 1st vaal discipline 2nd enduring cry
        To prevent accidentally clicks till loading to new location, checks
        on %gui_static_X%, %gui_static_Y% pixel color and if it != %gui_static_color%
        sleeps 500ms.
    */
    PixelGetColor, color, %health_X%, %health_Y%
    if (color != low_health_color) {
        PixelGetColor, gui_pixel, gui_static_X, gui_static_Y
        if (gui_pixel != gui_static_color) {
            ; Awaits loading screen
            while (gui_pixel = gui_static_color) {
                PixelGetColor, gui_pixel, gui_static_X, gui_static_Y
                Sleep, 500
            }
        } else {
            Send, {%heal_key_1%}
            Sleep, 80
            if (heal_key_duo_active) {
                PixelGetColor, color, %health_X%, %health_Y%
                if (color != low_health_color) {
                    if (es_based) {
                        Send, {%heal_key_2%}
                    }
                    if (life_based AND heal_key_1_are_flask) {
                        PixelGetColor, color, %life_flask_bar_X%, %life_flask_bar_Y%
                        if (color != flask_bar_color) {
                            Send, {%heal_key_2%}
                        }
                    }
                }
            }
        }
    }
}


AutoLogout() {
    /*  Checks %logout_X%, %logout_Y% pixel color if it below a %logout_health_color%
        (pixel color are changed) then press %heal_key_1% to heal before logout,
        checks if %heal_key_duo_active% and then GameLogout().
        To prevent accidentally clicks till loading to new location, checks
        on %gui_static_X%, %gui_static_Y% pixel color and if it != %gui_static_color%
        sleeps 500ms.
    */
    PixelGetColor, color, logout_X, logout_Y
    if (color != logout_health_color) {
        PixelGetColor, gui_pixel, gui_static_X, gui_static_Y
        if (gui_pixel != gui_static_color) {
            ; Awaits loading screen
            while (gui_pixel = gui_static_color) {
                PixelGetColor, gui_pixel, gui_static_X, gui_static_Y
                Sleep, 500
            }
        } else {
            Send, {%heal_key_1%}
            if (heal_key_duo_active) {
                Send, {%heal_key_2%}
            }
            GameLogout()
        }
    }
}


LootBigRegion() {
    /*  Searching for %loot_color% pixel in big rectangle area and click
        on it if found. Can work slowly then %LootSmallRegion()% bcs square
        of rectangle area are bigger.

        Required: prepared item filter, see itemfilter/ folder.
    */
    PixelSearch, Px, Py, loot_big_X1, loot_big_Y1, loot_big_X2, loot_big_Y2, loot_color, 5, Fast
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
    /*  Searching for %loot_color% pixel in small rectangle area and click
        on it if found.

        Required: prepared item filter, see itemfilter/ folder.
    */
    PixelSearch, Px, Py, loot_small_X1 ,loot_small_Y1 ,loot_small_X2 ,loot_small_Y2, loot_color, 5, Fast
    if (ErrorLevel) {
        return False
    } else {
        Px := Px + 30
        Py := Py + 12
        MouseMove, %Px%, %Py%
        Click
        return True
    }
}


OpenPortal() {
    /*  Opens inventory and RMB to %portalX%, %portalY% to open
        portal, move mouse back at their position before fn call.
    */
    BlockInput On
    MouseGetPos x, y 
    Send {tab}
    Sleep 200
    Click, %portalX%, %portalY%, Right
    Sleep 100
    Send {tab}
    MouseMove, x, y
    BlockInput Off
}


Hideout() {
    ; Types /hideout command ingame
	BlockInput On
	SendInput, {Enter}
	Sleep 2
	SendInput, {/}hideout
	SendInput, {Enter}
	BlockInput Off
}


PartyInvite() {
    ; Types /invite command ingame to the last PMed person.
	BlockInput On
	Send ^{Enter}{Home}{Delete}/invite {Enter}
	BlockInput Off
}


PartyKick() {
    ; Types /kick command ingame to the last PMed person.
	BlockInput On
	Send ^{Enter}{Home}{Delete}/kick {Enter}
	BlockInput Off
}


CustomChatCommand() {
    ; Types custom chat command ingame. Can be setted in GUI.
	BlockInput, On
    Suspend, On
	Send ^{Enter}{Home}{Shift down}{End}{Shift up}{Delete}%chat_command%{Enter}
    Suspend, Off
	BlockInput Off
}


AutoFlask1() {
    ; Press flask key 1.
    Send, {%flask_key_1%}
}


AutoFlask2() {
    ; Press flask key 2.
    Send, {%flask_key_2%}
}


AutoFlask3() {
    ; Press flask key 3.
    Send, {%flask_key_3%}
}


AutoFlask4() {
    ; Press flask key 4.
    Send, {%flask_key_4%}
}


AutoFlask5() {
    ; Press flask key 5.
    Send, {%flask_key_5%}
}
