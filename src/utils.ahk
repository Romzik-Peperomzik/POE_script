GetMouseColorPos() {
    MouseGetPos, MouseX, MouseY
    PixelGetColor, color, %MouseX%, %MouseY%
    MsgBox The current cursor position is x=%MouseX%, y=%MouseY%, color is %color%.
}


CtrlClickLoop() {
    Send, ^{LButton}
    Sleep 30
}


oosCommand() {
    ; Check synchronization with server.
	BlockInput On
	SendInput, {enter}
	Sleep 2
	SendInput, {/}oos
	SendInput, {enter}
	BlockInput Off
}


GameLogout() {
    ; Closing port which POE use by cports.exe.    
    if WinActive("Path of Exile"){
        Run ./cports/cports.exe /close * * * * PathofExile.exe
    }
}


UpdateHealTreshold() {
    /*  Get value of x, y and color of pixel on mouse current position ingame
        and setted %low_health_color%, %health_X%, %health_Y% vars.
    */
    MouseGetPos, new_health_X, new_health_Y
    PixelGetColor, color, %MouseX%, %MouseY%
    low_health_color := color
    health_X := new_health_X
    health_Y := new_health_Y
    IniWrite, %low_health_color%, settings.ini, settings, low_health_color
    IniWrite, %health_X%, settings.ini, settings, health_X
    IniWrite, %health_Y%, settings.ini, settings, health_Y
    MsgBox, New heal treshold setted.
    Reload
}


DisplayNotice(display := 0, GuiName := "none", label := "blank", x := 0, y := 0, h := 0, w := 0) {
    /*  Displays window on %x%, %y% with %label%. If called without
        args, then closing exact %GuiName% window.

        Required: %label% value should be without spaces.
    */
    if (display) {
        Gui, %GuiName%:New, AlwaysOnTop -SysMenu +Disabled,
        Gui, %GuiName%:Show, NoActivate x%x% y%y% h%h% w%w%, %label%
    } else {
        Gui, %GuiName%:Destroy
    }
}


TurnOffAllHotkey() {
    TurnOffHotkey(autoLootingHotkey)
    TurnOffHotkey(lootOneItemHotkey)
    TurnOffHotkey(setOfFlasksHotkey)
    TurnOffHotkey(autoHealHotkey)
    TurnOffHotkey(holdWalkHotkey)
    TurnOffHotkey(openPortalHotkey)
    TurnOffHotkey(hideoutHotkey)
    TurnOffHotkey(partyInviteHotkey)
    TurnOffHotkey(partyKickHotkey)
    TurnOffHotkey(triggerSeqHotkey)
    TurnOffHotkey(gameLogoutHotkey)
    TurnOffHotkey(autoLogoutHotkey)
    TurnOffHotkey(customChatCommandHotkey)
    TurnOffHotkey(flaskTimersHotkey)
    TurnOffHotkey(updateHealTresholdHotkey)
    TurnOffHotkey(cleanInvHotkey)
    TurnOffHotkey(deckOpenerHotkey)
    TurnOffHotkey(clickRollerHotkey)
    TurnOffHotkey(scourRollerHotkey)
    TurnOffHotkey(gwenRollerHotkey)
    TurnOffHotkey(makeInvColorMapHotkey)

    return
}


TurnOnAllHotkey() {
    if (auto_looting_active) {
        TurnOnHotkey(autoLootingHotkey, "LootAllLabel")
    }
    if (loot_one_item_active) {
        TurnOnHotkey(lootOneItemHotkey, "LootOneItem")
    }
    if (set_of_flasks_active) {
        TurnOnHotkey(setOfFlasksHotkey, "SetOfFlasksLabel")
    }
    if (auto_heal_active) {
        TurnOnHotkey(autoHealHotkey, "AutoHealLabel")
    }
    if (hold_walk_active) {
        TurnOnHotkey(holdWalkHotkey, "HoldWalkLabel")
    }
    if (open_portal_active) {
        TurnOnHotkey(openPortalHotkey, "OpenPortalLabel")
    }
    if (hideout_active) {
        TurnOnHotkey(hideoutHotkey, "HideoutLabel")
    }
    if (party_invite_active) {
        TurnOnHotkey(partyInviteHotkey, "PartyInviteLabel")
    }
    if (party_kick_active) {
        TurnOnHotkey(partyKickHotkey, "PartyKickLabel")
    }
    if (seq_skills_active) {
        TurnOnHotkey(triggerSeqHotkey, "SequenceOfSkillsLabel")
    }
    if (game_logout_active) {
        TurnOnHotkey(gameLogoutHotkey, "GameLogoutLabel")
    }
    if (auto_logout_active) {
        TurnOnHotkey(autoLogoutHotkey, "AutoLogoutLabel")
    }
    if (custom_chat_command_active) {
        TurnOnHotkey(customChatCommandHotkey, "CustomChatCommandLabel")
    }
    if (flask_timers_key_active) {
        TurnOnHotkey(flaskTimersHotkey, "FlaskTimersLabel")
    }
    if (update_heal_treshold_active) {
        TurnOnHotkey(updateHealTresholdHotkey, "UpdateHealTresholdLabel")
    }
    if (clean_inv_key_active) {
        TurnOnHotkey(cleanInvHotkey, "CleanInventoryLabel")
    }
    if (deck_opener_key_active) {
        TurnOnHotkey(deckOpenerHotkey, "DeckOpenerLabel")
    }
    if (click_roller_key_active) {
        TurnOnHotkey(clickRollerHotkey, "ClickRollerLabel")
    }
    if (scour_roller_key_active) {
        TurnOnHotkey(scourRollerHotkey, "ScourRollerLabel")
    }
    if (gwen_roller_key_active) {
        TurnOnHotkey(gwenRollerHotkey, "GwenRollerLabel")
    }
    if (make_inv_color_map_key_active) {
        TurnOnHotkey(makeInvColorMapHotkey, "MakeInvColorMapLabel")
    }
    
    return
}


TurnOffHotkey(key) {
    if (key) {
        Hotkey, %key%, Off
    }
    return
}


TurnOnHotkey(key, label){
    if (key) {
        Hotkey, %key%, %label%, On
    } else {
        ;Msgbox, %key%
    }
    return
}


MakeInvColorMap() {
    /*  Makes coords and colors map for each cell in inventory.
        Choose top left corner and bottom right corner points of inventory
        pick their values with Alt + Z and input them in GUI fields.
        Then press hotkey ingame and its automatically collects x, y and color.

        Required: Opened player inventory ingame.
    */
    inv_coords := ""

    inv_width := inv_X2 - inv_X1
    inv_height := inv_Y2 - inv_Y1
    cell_width := inv_width // 12
    cell_height := inv_height // 6
    first_cell_X := cell_width // 2 + inv_X1
    first_cell_Y := cell_height // 2 + inv_Y1
    x := first_cell_X
    y := first_cell_Y

    while (x < inv_X2) {
        while (y < inv_Y2) {
            PixelGetColor, color, x, y, fast
            inv_coords .= x . "-" . y . "-" . color . ","
            y += cell_height
        }
        x += cell_width
        y := first_cell_Y
    }
    IniWrite, %inv_coords%, settings.ini, settings, inv_coords
    IniWrite, %cell_width%, settings.ini, settings, cell_width
    IniWrite, %cell_height%, settings.ini, settings, cell_height
    MsgBox, Inventory map are setted.
    Reload
}
