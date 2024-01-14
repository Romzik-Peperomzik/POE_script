SmokeMine() {
    ; Sequentially press mine throwing key and mine detonate key.
    Send %detonate_button%
    Send %smoke_mine_button%
    Sleep %mine_laying_time%
    Send %detonate_button%
    Sleep 40
    Send %detonate_button%
}


SequenceOfSkills() {
    ; Sequentially press 1st skill key then awaits delay (cast time) and press 2nd skill key.
    ; TODO: Выяснить почему захардкожен Click, Right, 1st key не задаётся в GUI?
    Click, Right
    Sleep %seq_castspeed_time%
    Send %seq_second_skill%
    Sleep 20
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


CleanInventory(x_coords, y_coords, exclude_coords) {
    /*  Takes %x_coords%, %y_coords%, %exclude_coords% depends of
        screen mode and runs over inventory cells and ctrl + LMB on founded items.

    Required: opened stash window.
    Known issues: skip every blueprint and contract from Heist.
        Sometimes skip skill gems in both default and wide screen_mode.
    TODO: Попробовать привести код в более читабельное состояние.
    */
    Loop, parse, x_coords, `, 
    {
        if (!clean_inventory_toggle) {
            break
        }
        inv_point_x := A_LoopField

        Loop, parse, y_coords, `,
        {
            if (!clean_inventory_toggle) {
                break
            }
            inv_point_y := A_LoopField
            Needle = %inv_point_x%-%inv_point_y%
            if (InStr(exclude_coords, Needle)) {
                break
            }
            PixelGetColor, color, inv_point_x, inv_point_y
            reg_result := RegExMatch(color, "^0x0[0-6]0")
            if (reg_result = 1) {
                continue
            } else {
                Sleep, 25
                Send {Control down}
                MouseMove inv_point_x, inv_point_y
                Click
                Send {Control up}
                Sleep, 125
            }
        }
    }
    if (clean_inventory_toggle) {
        clean_inventory_toggle := !clean_inventory_toggle
    }
}


CardOpener() {
    /*  Open card decks sequentially.
        Place 5 full stacked(10) decks in column
        in inventory from first cell.

    TODO: add support for wide mode.
        Убрать этот if (!card_opener_toggle) в while (decks_count != 0 OR !card_opener_toggle)
        В целом привести код в более читабельное состояние.
    */
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
            Click, Right
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
}


DoorSearcher() {
    /*  Search for "Door" labels ingame and click on
        mouse position when found. For needle picks font
        color of "Door" label.
        TODO: проверить как это работает и работает ли вообще.
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

    TODO: Улучшить код? чекать цвет пикселя элемента интерфейса на экране, а не чёрный пиксель.
    TODO: Проверить переменные.
    */
    PixelGetColor, color, health_X, health_Y
    if (color != low_health_color) {
        PixelGetColor, black_pixel, black_screen_X, black_screen_Y
        if (black_pixel = black_screen) {
            ; Awaits loading screen
            while (black_pixel = black_screen) {
                PixelGetColor, black_pixel, black_screen_X, black_screen_Y
                Sleep 500
            }
        } else {
            Send, {%heal_key_1%}
            if (heal_key_duo_active) { ;TODO Добавить чекбокс в GUI
                PixelGetColor, color, %health_X%, %health_Y% ;TODO 2ой color в fn области, сработает?
                if (color != low_health_color) {
                    if (es_based) {
                        Send, {%heal_key_2%}
                    }
                    if (life_based AND heal_key_1_are_flask) {
                        PixelGetColor, color, %life_flask_bar_X%, %life_flask_bar_Y% ;TODO Задать координаты для life_flask_bar_X/Y
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
        (pixel color are changed) then calls Send, {%heal_key_1%} to heal
        before logout, checks if %active_heal_key_duo% and then GameLogout().

    TODO: Улучшить код? чекать цвет пикселя элемента интерфейса на экране, а не чёрный пиксель
    */
    PixelGetColor, color, logout_X, logout_Y
    if (color != logout_health_color) {
        PixelGetColor, black_pixel, black_screen_X, black_screen_Y
        if (black_pixel = black_screen) {
            ; Awaits loading screen
            while (black_pixel = black_screen) {
                PixelGetColor, black_pixel, black_screen_X, black_screen_Y
                Sleep 500
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
        TODO: Убрать координаты площади прямоугольника в переменные.

    Required: prepared item filter, see itemfilter/ folder.
    */
    PixelSearch, Px, Py, 100, 100, A_ScreenWidth-10, A_ScreenHeight-150, loot_color, 5, Fast
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
        TODO: Убрать координаты площади прямоугольника в переменные.

    Required: prepared item filter, see itemfilter/ folder.
    */
    PixelSearch, Px, Py, 855, 341, 1050, 600, loot_color, 5, Fast
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
