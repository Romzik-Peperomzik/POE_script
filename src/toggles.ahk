CleanInventoryToggle() {
    clean_inv_toggle := !clean_inv_toggle
    if (clean_inv_toggle) {
        DisplayNotice(1, "Sorting", "Sorting", 1297, 451, 0, 50)
        ; TODO где вызов? CleanInventory() как передать координаты?
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
        DisplayNotice(1, "Opening decks", "Opening decks", 1310, 494, 0, 50)
        CardOpener()
    } else {
        DisplayNotice(0, "Opening decks", "Opening decks", 1310, 494, 0, 50)
    }
}


DoorSearcherToggle() {
    ; TODO: Проверить переменные.
    door_searcher_toggle := !door_searcher_toggle
    if (door_searcher_toggle) {
        DisplayNotice(1, "Door Searcher", "Door Searcher", 234, 894, 0, 50)
        SetTimer, DoorSearcher, %door_searcher_delay%
    } else {
        DisplayNotice(0, "Door Searcher", "Door Searcher", 234, 894, 0, 50)
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
