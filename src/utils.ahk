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


ResetAllToggles() {
    door_searcher_toggle := 0
    gwen_roll_toggle := 0
    currency_click_toggle := 0
    alch_scour_rolling_toggle := 0
    auto_logout_toggle := 0
    auto_rolling_toggle := 0
    card_opener_toggle := 0
    clean_inventory_toggle := 0
}


GameLogout() {
    ; Closing port which POE use by cports.exe.    
    if WinActive("Path of Exile"){
        Run ./cports/cports.exe /close * * * * PathofExile.exe
    }
}


UpdateHealTreshold() {
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
    */
    if (display) {
        Gui, %GuiName%:New, AlwaysOnTop -SysMenu +Disabled,
        Gui, %GuiName%:Show, NoActivate x%x% y%y% h%h% w%w%, %label%
    } else {
        Gui, %GuiName%:Destroy
    }
}
