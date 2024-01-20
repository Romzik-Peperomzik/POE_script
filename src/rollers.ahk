ClickRoller() {
    ; PixelGetColor border_pixel_color, 291, 395
    ; Выбор координат валюты
    ; fuse jeweller chaos chrom alter
    state_n_names := [[fuse, "fuse"], [jeweller, "jeweller"], [chaos, "chaos"], [chrom, "chrom"], [alter, "alter"]]
    names_n_coords := {fuse: [fuse_X, fuse_Y], jeweller: [jeweller_X, jeweller_Y], chaos: [chaos_X, chaos_Y], chrom: [chrom_X, chrom_Y], alter: [alter_X, alter_Y]}
    tmp := "empty"
    len := state_n_names.Length()

    Loop, %len% {
        if (state_n_names[A_Index][1] = 1) {
        tmp := state_n_names[A_Index][2]
        }
    }

    curr_x := names_n_coords[tmp][1]
    curr_y := names_n_coords[tmp][2]

    Sleep, 500
    Click, %curr_x%, %curr_y%, Right
    Send, {Shift down}

    while (click_roller_toggle) {
        PixelSearch, x, y, highlighted_border_X1, highlighted_border_Y1, highlighted_border_X2, highlighted_border_Y2, highlighted_border, 0, Fast
        if (!x) {
            Click, %rolling_item_X%, %rolling_item_Y%
            Sleep, %rolling_item_delay%
        } else {
            break
        }
    }
    Send, {Shift up}
}


ScourRoller() {
    state_n_names := [[alch, "alch"], [bind, "bind"], [chance, "chance"]]
    names_n_coords := {alch: [alch_X, alch_Y], bind: [bind_X, bind_Y], chance: [chance_X, chance_Y]}
    tmp := "empty"
    len := state_n_names.Length()

    Loop, %len% {
        if (state_n_names[A_Index][1] = 1) {
        tmp := state_n_names[A_Index][2]
        }
    }

    curr_x := names_n_coords[tmp][1]
    curr_y := names_n_coords[tmp][2]
    
    Sleep, 500

    while (scour_roller_toggle) {
        PixelSearch, x, y, highlighted_border_X1, highlighted_border_Y1, highlighted_border_X2, highlighted_border_Y2, highlighted_border, 0, Fast
        if (!x) {
            Click, %scour_X%, %scour_Y%, Right
            Click, %rolling_item_X%, %rolling_item_Y%
            Sleep, %rolling_item_delay%
            Click, %curr_x%, %curr_y%, Right
            Click, %rolling_item_X%, %rolling_item_Y%
            Sleep, %rolling_item_delay%
        } else {
            break
        }
    }
}


GwenRoller() {
    Sleep 500
    while (gwen_roller_toggle) {
        PixelSearch, x, y, gwen_window_X1, gwen_window_Y1, gwen_window_X2, gwen_window_Y2, highlighted_border, 0, Fast
        if (x) {
            Px := x + 30
            Py := y + 12
            Send {Control down}
            Click %Px%, %Py%
            Send {Control up}
            Sleep, 100
        } else {
            Click %gwen_roll_key_X%, %gwen_roll_key_Y%
        }
        Sleep, %gwen_roller_delay%
    }
}
