CleanInventoryToggle() {
    clean_inv_toggle := !clean_inv_toggle
    if (clean_inv_toggle) {
        DisplayNotice(1, "Sorting", "Sorting", 1297, 451, 0, 50)
        CleanInventory()
        DisplayNotice(0, "Sorting", "Sorting", 1297, 451, 0, 50)
        clean_inv_toggle := 0
    } else {
        DisplayNotice(0, "Sorting", "Sorting", 1297, 451, 0, 50)
    }
}


AutoHealToggle() {
    ; TODO: Проверить переменные. Расскоментировать от тестов
    auto_heal_toggle := !auto_heal_toggle
    if (auto_heal_toggle) {
        DisplayNotice(1, "Heal", "Heal", 234, 894, 0, 50)
        SetTimer, AutoHeal, %auto_heal_delay%
    } else {
        DisplayNotice(0, "Heal", "Heal", 234, 894, 0, 50)
        SetTimer, AutoHeal, Delete
    }
}


AutoLogoutToggle() {
    ; TODO: Проверить переменные. Расскоментировать от тестов
    auto_logout_toggle := !auto_logout_toggle
    if (auto_logout_toggle) {
        oosCommand()
        DisplayNotice(1, "Logout", "Logout", 1536, 230, 0, 50)
        SetTimer, AutoLogout, %auto_logout_delay%
    } else {
        DisplayNotice(0, "Logout", "Logout", 1536, 230, 0, 50)
        SetTimer, AutoLogout, Delete
    }
}


CardOpenerToggle() {
    card_opener_toggle := !card_opener_toggle
    if (card_opener_toggle) {
        DisplayNotice(1, "OpeningDecks", "OpeningDecks", 1310, 494, 0, 90)
        CardOpener()
        DisplayNotice(0, "OpeningDecks", "OpeningDecks", 1310, 494, 0, 90)
        card_opener_toggle := 0
    } else {
        DisplayNotice(0, "OpeningDecks", "OpeningDecks", 1310, 494, 0, 90)
    }
}


DoorSearcherToggle() {
    ; TODO: Проверить переменные.
    door_searcher_toggle := !door_searcher_toggle
    if (door_searcher_toggle) {
        DisplayNotice(1, "DoorSearcher", "DoorSearcher", 234, 894, 0, 90)
        SetTimer, DoorSearcher, %door_searcher_delay%
    } else {
        DisplayNotice(0, "DoorSearcher", "DoorSearcher", 234, 894, 0, 90)
        SetTimer, DoorSearcher, Delete
    }
}

LootToggle() {
    /*  While holding lctrl + s sequentially calls %LootSmallRegion()%
        and %LootBigRegion()%.
        TODO: Проверить как вообще работает, т.к. кажется есть лишний код.
    */
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


FlaskTimersToggle() {
    ; TODO: Координаты
    flask_timers_toggle := !flask_timers_toggle
    if (flask_timers_toggle) {
        DisplayNotice(1, "FlaskTimers", "FlaskTimers", 234, 894, 0, 70)
        if (flask_key_1_active) {
            if (flask_timers_start_press_active) {
                Send, {%flask_key_1%}
            }
            SetTimer, AutoFlask1, %flask_key_1_delay%
        }
        if (flask_key_2_active) {
            if (flask_timers_start_press_active) {
                Send, {%flask_key_2%}
            }
            SetTimer, AutoFlask2, %flask_key_2_delay%
        }
        if (flask_key_3_active) {
            if (flask_timers_start_press_active) {
                Send, {%flask_key_3%}
            }
            SetTimer, AutoFlask3, %flask_key_3_delay%
        }
        if (flask_key_4_active) {
            if (flask_timers_start_press_active) {
                Send, {%flask_key_4%}
            }
            SetTimer, AutoFlask4, %flask_key_4_delay%
        }
        if (flask_key_5_active) {
            if (flask_timers_start_press_active) {
                Send, {%flask_key_5%}
            }
            SetTimer, AutoFlask5, %flask_key_5_delay%
        }
    } else {
        DisplayNotice(0, "FlaskTimers", "FlaskTimers", 234, 894, 0, 50)
        if (flask_key_1_active) {
            SetTimer, AutoFlask1, Delete
        }
        if (flask_key_2_active) {
            SetTimer, AutoFlask2, Delete
        }
        if (flask_key_3_active) {
            SetTimer, AutoFlask3, Delete
        }
        if (flask_key_4_active) {
            SetTimer, AutoFlask4, Delete
        }
        if (flask_key_5_active) {
            SetTimer, AutoFlask5, Delete
        }
    }
}


ClickRollerToggle() {
    click_roller_toggle := !click_roller_toggle
    if (click_roller_toggle) {
        DisplayNotice(1, "ClickRoller", "ClickRoller", 230, 797, 0, 80)
        ClickRoller()
        DisplayNotice(0, "ClickRoller", "ClickRoller", 230, 797, 0, 80)
        click_roller_toggle := 0
    } else {
        DisplayNotice(0, "ClickRoller", "ClickRoller", 230, 797, 0, 80)
    }
}


ScourRollerToggle() {
    scour_roller_toggle := !scour_roller_toggle
    if (scour_roller_toggle) {
        DisplayNotice(1, "ScourRoller", "ScourRoller", 230, 797, 0, 80)
        ScourRoller()
        DisplayNotice(0, "ScourRoller", "ScourRoller", 230, 797, 0, 80)
        scour_roller_toggle := 0
    } else {
        DisplayNotice(0, "ScourRoller", "ScourRoller", 230, 797, 0, 80)
    }
}


GwenRollerToggle() {
    gwen_roller_toggle := !gwen_roller_toggle
    if (gwen_roller_toggle) {
        DisplayNotice(1, "GwenRoller", "GwenRoller", 234, 894, 0, 80)
        GwenRoller()
        DisplayNotice(0, "GwenRoller", "GwenRoller", 234, 894, 0, 80)
        gwen_roller_toggle := 0
    } else {
        DisplayNotice(0, "GwenRoller", "GwenRoller", 234, 894, 0, 80)
    }
}
