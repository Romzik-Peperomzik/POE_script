FuseJewellerClickLoop() {
    ; TODO: rename in whole proj
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
}


AltChaosRolling() {
    ; TODO: rename roller
    auto_rolling_toggle := !auto_rolling_toggle
    if (auto_rolling_toggle) {
        SplashTextOn, 100, 1, Alts n Chaos
        WinMove Alts n Chaos, , 230, 797

        PixelGetColor border_pixel_color, 291, 395
        Send {ShiftDown} 
        while (border_pixel_color != highlighted_border) {
            if (auto_rolling_toggle != 1) {
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
                Click Right
                Sleep, 100
                Click 337 443
                Sleep, 200
            }
            if (bind) {
                MouseMove, 164, 449
                Sleep, 100
                Click Right
                Sleep, 100
                Click 337 443
                Sleep, 200
            }

            PixelGetColor border_pixel_color, 291, 407
            if (border_pixel_color != highlighted_border) {
                MouseMove, 435, 504
                Sleep, 100
                Click Right
                Sleep, 100
                Click 337 443
                Sleep, 200
            }
            Sleep, 150
        }
        if (alch_scour_rolling_toggle) {
            alch_scour_rolling_toggle := !alch_scour_rolling_toggle
        }
        SplashTextOff
    }
}


AlchBindScourOnce() {
    if (alch) {
        MouseMove, 431, 503
        Sleep, 100
        Click Right
        Click 337 443

        MouseMove, 493, 267
        Sleep, 100
        Click Right
        Sleep, 100
        Click 337 443
        Sleep, 200
    }
    if (bind) {
        MouseMove, 431, 503
        Sleep, 100
        Click Right
        Click 337 443

        MouseMove, 164, 449
        Sleep, 100
        Click Right
        Sleep, 100
        Click 337 443
        Sleep, 200
    }
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
            Sleep 500
        }
        if (gwen_roll_toggle) {
            gwen_roll_toggle := !gwen_roll_toggle
        }
        SplashTextOff
    }
}
