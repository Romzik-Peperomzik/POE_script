DeliriumFlasks() {                                         ; Set of flasks of Delirium script.
    Loop, parse, flask_key_set, -
    {        
        Send %A_LoopField%
        Sleep 50
    }
    return
}


AutoGuardSkill() {
    Send, {LButton}
    return
}


AutoFrostShield() {
    BlockInput on
    Send, {e}
    BlockInput Off
    return
}


QuickDiscipline() {
    Send, {t}
    return
}


AutoDiscipline() {
    PixelGetColor, shield_color, 144, 914
    if (shield_color != 0xFFD8AE) {
        Send, {t}
    }
    PixelGetColor, bot_shield_color, 210, 252
    if (bot_shield_color != 0x6F72C3) {
        Send, {t}
    }
    return
}


DoDelirious() {                                               ; Main Delirium script function.
    do_delirious_toggle := !do_delirious_toggle
    if (do_delirious_toggle) {
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


DeliriumSubroutinesToggle() {                          ; Subroutines for DoDelirious function.
    deli_sub_toggle := !deli_sub_toggle
    if (deli_sub_toggle) {
        SetTimer, DeliriumFlasks, 8000
        SetTimer, QuickDiscipline, 1500
        SetTimer, AutoGuardSkill, 5000                                         ; Immortal call
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

