ReadSettings() {
    ; Hotkeys
    IniRead, setOfFlasksHotkey,   settings.ini, settings, setOfFlasksHotkey,   a    
    IniRead, autoHealHotkey,      settings.ini, settings, autoHealHotkey,      ^f
    IniRead, autoLootingHotkey,   settings.ini, settings, autoLootingHotkey,   ^s
    IniRead, lootOneItemHotkey,   settings.ini, settings, lootOneItemHotkey,   s
    IniRead, AutoWalkHotkey,      settings.ini, settings, AutoWalkHotkey,      ^d 
    IniRead, openPortalHotkey,    settings.ini, settings, openPortalHotkey,    ^b
    IniRead, hideoutHotkey,       settings.ini, settings, hideoutHotkey,       F5
    IniRead, partyInviteHotkey,   settings.ini, settings, partyInviteHotkey,   F6
    IniRead, seqSkillsHotkey,     settings.ini, settings, seqSkillsHotkey,     Right
    IniRead, smokeMineHotkey,     settings.ini, settings, smokeMineHotkey,     r
    IniRead, gameLogoutHotkey,    settings.ini, settings, gameLogoutHotkey,    SC029
    IniRead, autoLogoutHotkey,    settings.ini, settings, autoLogoutHotkey,    F3
    IniRead, partyKickHotkey,     settings.ini, settings, partyKickHotkey,     F7
    ; Toggles
    IniRead, do_delirious_toggle, settings.ini, settings, do_delirious_toggle, 0
    IniRead, deli_sub_toggle,     settings.ini, settings, deli_sub_toggle, 0
    IniRead, door_searcher_toggle,settings.ini, settings, door_searcher_toggle, 0
    IniRead, gwen_roll_toggle,    settings.ini, settings, gwen_roll_toggle, 0
    IniRead, currency_click_toggle, settings.ini, settings, currency_click_toggle, 0
    IniRead, alch_scour_rolling_toggle,settings.ini, settings, alch_scour_rolling_toggle, 0
    IniRead, auto_logout_toggle,  settings.ini, settings, auto_logout_toggle,  0
    IniRead, auto_rolling_toggle, settings.ini, settings, auto_rolling_toggle, 0
    IniRead, card_opener_toggle,  settings.ini, settings, card_opener_toggle,  0
    IniRead, clean_inventory_toggle,  settings.ini, settings, clean_inventory_toggle, 0
    ; Activators
    IniRead, auto_looting_active, settings.ini, settings, auto_looting_active, 0
    IniRead, loot_one_item_active,settings.ini, settings, loot_one_item_active,0
    IniRead, set_of_flasks_active,settings.ini, settings, set_of_flasks_active,1
    IniRead, auto_heal_active,    settings.ini, settings, auto_heal_active,    0
    IniRead, auto_walk_active,    settings.ini, settings, auto_walk_active,    0
    IniRead, open_portal_active,  settings.ini, settings, open_portal_active,  0
    IniRead, hideout_active,      settings.ini, settings, hideout_active,      1
    IniRead, party_invite_active, settings.ini, settings, party_invite_active, 0
    IniRead, party_kick_active,   settings.ini, settings, party_kick_active,   0
    IniRead, seq_skills_active,   settings.ini, settings, seq_skills_active,   0
    IniRead, smoke_mine_active,   settings.ini, settings, smoke_mine_active,   0
    IniRead, game_logout_active,  settings.ini, settings, game_logout_active,  1
    IniRead, auto_logout_active,  settings.ini, settings, auto_logout_active,  0
    ; Key lists
    IniRead, flask_key_set,       settings.ini, settings, flask_key_set,       1-2-3-4-5
    IniRead, heal_keys_list,      settings.ini, settings, heal_keys_list,      1 
    IniRead, seq_second_skill,    settings.ini, settings, seq_second_skill,    q
    IniRead, detonate_button,     settings.ini, settings, detonate_button,     d
    IniRead, smoke_mine_button,   settings.ini, settings, smoke_mine_button,   r
    ; Colors
    IniRead, life_color,          settings.ini, settings, life_color,          0x1A0D98
    IniRead, lootColor,           settings.ini, settings, lootColor,           0x790062
    IniRead, logout_life_color,   settings.ini, settings, logout_life_color,   0x160C92
    IniRead, black_screen,        settings.ini, settings, black_screen,        0x000000
    IniRead, highlighted_border,  settings.ini, settings, highlighted_border,  0x77B4E7
    ; Delays
    IniRead, loot_delay,          settings.ini, settings, loot_delay,          300
    IniRead, seq_castspeed_time,  settings.ini, settings, seq_castspeed_time,  340
    IniRead, mine_laying_time,    settings.ini, settings, mine_laying_time,    250
    ; Any coords
    IniRead, low_life_X,          settings.ini, settings, low_life_X,          158
    IniRead, low_life_Y,          settings.ini, settings, low_life_Y,          937
    IniRead, portalX,             settings.ini, settings, portalX,             1303
    IniRead, portalY,             settings.ini, settings, portalY,             816
    IniRead, logout_X,            settings.ini, settings, logout_X,            161
    IniRead, logout_Y,            settings.ini, settings, logout_Y,            953
    IniRead, black_screen_X,      settings.ini, settings, black_screen_X,      0
    IniRead, black_screen_Y,      settings.ini, settings, black_screen_Y,      51
    IniRead, inv_list_X_dflt,     settings.ini, settings, inv_list_X_dflt,     1313,1365,1418,1470,1522,1576,1627,1679,1733,1785,1838,1892
    IniRead, inv_list_Y_dflt,     settings.ini, settings, inv_list_Y_dflt,     614,667,721,770,823
    IniRead, coords_exclude_dflt, settings.ini, settings, coords_exclude_dflt, 1313-823,1365-823
    IniRead, inv_list_X_wide,     settings.ini, settings, inv_list_X_wide,     1452,1492,1532,1572,1612,1652,1692,1732,1772,1812,1852,1892
    IniRead, inv_list_Y_wide,     settings.ini, settings, inv_list_Y_wide,     494,534,574,614,654
    IniRead, coords_exclude_wide, settings.ini, settings, coords_exclude_wide, 1452-654,1492-654
    ; States
    IniRead, alch,                settings.ini, settings, alch,                1
    IniRead, bind,                settings.ini, settings, bind,                0
    IniRead, default_screen_mode, settings.ini, settings, default_screen_mode, 0
    IniRead, wide_screen_mode,    settings.ini, settings, wide_screen_mode,    1
    ; Commands
    IniRead, chat_command,        settings.ini, settings, chat_command,        /invite Username
    return
}

SaveSettings() {
    ; Hotkeys
    IniWrite, %setOfFlasksHotkey%,   settings.ini, settings, setOfFlasksHotkey
    IniWrite, %autoHealHotkey%,      settings.ini, settings, autoHealHotkey
    IniWrite, %autoLootingHotkey%,   settings.ini, settings, autoLootingHotkey
    IniWrite, %lootOneItemHotkey%,   settings.ini, settings, lootOneItemHotkey
    IniWrite, %AutoWalkHotkey%,      settings.ini, settings, AutoWalkHotkey
    IniWrite, %openPortalHotkey%,    settings.ini, settings, openPortalHotkey
    IniWrite, %hideoutHotkey%,       settings.ini, settings, hideoutHotkey
    IniWrite, %partyInviteHotkey%,   settings.ini, settings, partyInviteHotkey
    IniWrite, %partyKickHotkey%,     settings.ini, settings, partyKickHotkey
    IniWrite, %seqSkillsHotkey%,     settings.ini, settings, seqSkillsHotkey
    IniWrite, %smokeMineHotkey%,     settings.ini, settings, smokeMineHotkey
    IniWrite, %gameLogoutHotkey%,    settings.ini, settings, gameLogoutHotkey
    IniWrite, %autoLogoutHotkey%,    settings.ini, settings, autoLogoutHotkey
    ; Activators
    IniWrite, %set_of_flasks_active%,settings.ini, settings, set_of_flasks_active
    IniWrite, %auto_heal_active%,    settings.ini, settings, auto_heal_active
    IniWrite, %auto_looting_active%, settings.ini, settings, auto_looting_active
    IniWrite, %loot_one_item_active%,settings.ini, settings, loot_one_item_active
    IniWrite, %auto_walk_active%,    settings.ini, settings, auto_walk_active
    IniWrite, %open_portal_active%,  settings.ini, settings, open_portal_active
    IniWrite, %hideout_active%,      settings.ini, settings, hideout_active
    IniWrite, %party_invite_active%, settings.ini, settings, party_invite_active
    IniWrite, %party_kick_active%,   settings.ini, settings, party_kick_active
    IniWrite, %seq_skills_active%,   settings.ini, settings, seq_skills_active
    IniWrite, %smoke_mine_active%,   settings.ini, settings, smoke_mine_active
    IniWrite, %game_logout_active%,  settings.ini, settings, game_logout_active
    IniWrite, %auto_logout_active%,  settings.ini, settings, auto_logout_active
    ; Key lists
    IniWrite, %flask_key_set%,       settings.ini, settings, flask_key_set
    IniWrite, %heal_keys_list%,      settings.ini, settings, heal_keys_list
    IniWrite, %seq_second_skill%,    settings.ini, settings, seq_second_skill
    IniWrite, %detonate_button%,     settings.ini, settings, detonate_button
    IniWrite, %smoke_mine_button%,   settings.ini, settings, smoke_mine_button
    ; Colors
    IniWrite, %life_color%,          settings.ini, settings, life_color
    IniWrite, %lootColor%,           settings.ini, settings, lootColor
    IniWrite, %logout_life_color%,   settings.ini, settings, logout_life_color
    IniWrite, %black_screen%,        settings.ini, settings, black_screen
    ; Delays
    IniWrite, %loot_delay%,          settings.ini, settings, loot_delay
    IniWrite, %seq_castspeed_time%,  settings.ini, settings, seq_castspeed_time
    IniWrite, %mine_laying_time%,    settings.ini, settings, mine_laying_time
    ; Any coords
    IniWrite, %low_life_X%,          settings.ini, settings, low_life_X
    IniWrite, %low_life_Y%,          settings.ini, settings, low_life_Y
    IniWrite, %portalX%,             settings.ini, settings, portalX
    IniWrite, %portalY%,             settings.ini, settings, portalY
    IniWrite, %logout_X%,            settings.ini, settings, logout_X
    IniWrite, %logout_Y%,            settings.ini, settings, logout_Y
    IniWrite, %black_screen_X%,      settings.ini, settings, black_screen_X
    IniWrite, %black_screen_Y%,      settings.ini, settings, black_screen_Y
    ; States
    IniWrite, %alch%,                 settings.ini, settings, alch
    IniWrite, %bind%,                 settings.ini, settings, bind
    IniWrite, %chat_command%,         settings.ini, settings, chat_command
    IniWrite, %default_screen_mode%,  settings.ini, settings, default_screen_mode
    IniWrite, %wide_screen_mode%,     settings.ini, settings, wide_screen_mode

    return
}
