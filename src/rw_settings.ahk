ReadSettings(){
    IniRead, setOfFlasksHotkey,   settings.ini, settings, setOfFlasksHotkey,   a
    IniRead, set_of_flasks_active,settings.ini, settings, set_of_flasks_active,True
    IniRead, flask_key_set,       settings.ini, settings, flask_key_set,       2-3-4-5
    IniRead, flask_key_set1,      settings.ini, settings, flask_key_set1,      3-w
    
    IniRead, smokeMineHotkey,     settings.ini, settings, smokeMineHotkey,     ^r
    IniRead, smoke_mine_active,   settings.ini, settings, smoke_mine_active,   True

    IniRead, lootColor,           settings.ini, settings, lootColor,           0x790062
    IniRead, loot_dalay,          settings.ini, settings, loot_dalay,          400
    IniRead, portalX,             settings.ini, settings, portalX,             1303
    IniRead, portalY,             settings.ini, settings, portalY,             816

    IniRead, low_life_X,          settings.ini, settings, low_life_X,          133
    IniRead, low_life_Y,          settings.ini, settings, low_life_Y,          948
    IniRead, life_color,          settings.ini, settings, life_color,          0x2419A7

    IniRead, logout_X,            settings.ini, settings, logout_X,            84
    IniRead, logout_Y,            settings.ini, settings, logout_Y,            992
    IniRead, logout_life_color,   settings.ini, settings, logout_life_color,   0x19117B
    IniRead, black_screen,        settings.ini, settings, black_screen,        0x000000

    IniRead, low_life_flask_list, settings.ini, settings, low_life_flask_list, 1
    IniRead, mine_laying_time,    settings.ini, settings, mine_laying_time,    300
    return
}

SaveSettings(){
    IniWrite, %setOfFlasksHotkey%,   settings.ini, settings, setOfFlasksHotkey
    IniWrite, %quick_flask_list%,    settings.ini, settings, quick_flask_list
    IniWrite, %quick_flask_list_1%,  settings.ini, settings, quick_flask_list_1
    IniWrite, %lootColor%,           settings.ini, settings, lootColor
    IniWrite, %loot_dalay%,          settings.ini, settings, loot_dalay
    IniWrite, %portalX%,             settings.ini, settings, portalX
    IniWrite, %portalY%,             settings.ini, settings, portalY
    IniWrite, %low_life_X%,          settings.ini, settings, low_life_X
    IniWrite, %low_life_Y%,          settings.ini, settings, low_life_Y
    IniWrite, %life_color%,          settings.ini, settings, life_color
    IniWrite, %low_life_flask_list%, settings.ini, settings, low_life_flask_list
    IniWrite, %mine_laying_time%,    settings.ini, settings, mine_laying_time
    IniWrite, %url%,                 settings.ini, settings, url
    return
}