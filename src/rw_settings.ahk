ReadSettings() {
    ; Hotkeys
    IniRead, setOfFlasksHotkey,   settings.ini, settings, setOfFlasksHotkey,   a    
    IniRead, autoHealHotkey,      settings.ini, settings, autoHealHotkey,      ^f
    IniRead, autoLootingHotkey,   settings.ini, settings, autoLootingHotkey,   ^s
    IniRead, lootOneItemHotkey,   settings.ini, settings, lootOneItemHotkey,   s
    IniRead, holdWalkHotkey,      settings.ini, settings, holdWalkHotkey,      ^d 
    IniRead, openPortalHotkey,    settings.ini, settings, openPortalHotkey,    ^b
    IniRead, hideoutHotkey,       settings.ini, settings, hideoutHotkey,       F5
    IniRead, partyInviteHotkey,   settings.ini, settings, partyInviteHotkey,   F6
    IniRead, triggerSeqHotkey,    settings.ini, settings, triggerSeqHotkey,    w
    IniRead, smokeMineHotkey,     settings.ini, settings, smokeMineHotkey,     r
    IniRead, gameLogoutHotkey,    settings.ini, settings, gameLogoutHotkey,    SC029
    IniRead, autoLogoutHotkey,    settings.ini, settings, autoLogoutHotkey,    F3
    IniRead, partyKickHotkey,     settings.ini, settings, partyKickHotkey,     F7
    IniRead, customChatCommandHotkey, settings.ini, settings, customChatCommandHotkey, F1
    IniRead, updateHealTresholdHotkey,settings.ini, settings, updateHealTresholdHotkey,^+f
    IniRead, flaskTimersHotkey,   settings.ini, settings, flaskTimersHotkey,   ^n
    IniRead, cleanInvHotkey,      settings.ini, settings, cleanInvHotkey,      !x
    IniRead, deckOpenerHotkey,    settings.ini, settings, deckOpenerHotkey,    ^k
    IniRead, clickRollerHotkey,   settings.ini, settings, clickRollerHotkey,   !v
    IniRead, scourRollerHotkey,   settings.ini, settings, scourRollerHotkey,   !n
    IniRead, gwenRollerHotkey,    settings.ini, settings, gwenRollerHotkey,    !l
    IniRead, makeInvColorMapHotkey,   settings.ini, settings, makeInvColorMapHotkey,   !l
    ; Toggles
    IniRead, auto_heal_toggle,    settings.ini, settings, auto_heal_toggle,    0
    IniRead, door_searcher_toggle,settings.ini, settings, door_searcher_toggle,0
    IniRead, gwen_roller_toggle,  settings.ini, settings, gwen_roller_toggle,  0
    IniRead, click_roller_toggle, settings.ini, settings, click_roller_toggle, 0
    IniRead, scour_roller_toggle, settings.ini, settings, scour_roller_toggle, 0
    IniRead, auto_logout_toggle,  settings.ini, settings, auto_logout_toggle,  0
    IniRead, card_opener_toggle,  settings.ini, settings, card_opener_toggle,  0
    IniRead, clean_inv_toggle,    settings.ini, settings, clean_inv_toggle,    0
    IniRead, flask_timers_toggle, settings.ini, settings, flask_timers_toggle, 0
    ; Activators
    IniRead, auto_looting_active, settings.ini, settings, auto_looting_active, 0
    IniRead, loot_one_item_active,settings.ini, settings, loot_one_item_active,0
    IniRead, set_of_flasks_active,settings.ini, settings, set_of_flasks_active,1
    IniRead, auto_heal_active,    settings.ini, settings, auto_heal_active,    0
    IniRead, heal_key_duo_active, settings.ini, settings, heal_key_duo_active, 0
    IniRead, hold_walk_active,    settings.ini, settings, hold_walk_active,    0
    IniRead, open_portal_active,  settings.ini, settings, open_portal_active,  0
    IniRead, hideout_active,      settings.ini, settings, hideout_active,      1
    IniRead, party_invite_active, settings.ini, settings, party_invite_active, 0
    IniRead, party_kick_active,   settings.ini, settings, party_kick_active,   0
    IniRead, seq_skills_active,   settings.ini, settings, seq_skills_active,   0
    IniRead, smoke_mine_active,   settings.ini, settings, smoke_mine_active,   0
    IniRead, game_logout_active,  settings.ini, settings, game_logout_active,  1
    IniRead, auto_logout_active,  settings.ini, settings, auto_logout_active,  0
    IniRead, custom_chat_command_active,      settings.ini, settings, custom_chat_command_active, 0
    IniRead, flask_key_1_active,  settings.ini, settings, flask_key_1_active,  0
    IniRead, flask_key_2_active,  settings.ini, settings, flask_key_2_active,  0
    IniRead, flask_key_3_active,  settings.ini, settings, flask_key_3_active,  0
    IniRead, flask_key_4_active,  settings.ini, settings, flask_key_4_active,  0
    IniRead, flask_key_5_active,  settings.ini, settings, flask_key_5_active,  0
    IniRead, flask_timers_key_active,         settings.ini, settings, flask_timers_key_active, 0
    IniRead, flask_timers_start_press_active, settings.ini, settings, flask_timers_start_press_active, 0
    IniRead, update_heal_treshold_active,     settings.ini, settings, update_heal_treshold_active, 0
    IniRead, clean_inv_key_active,    settings.ini, settings, clean_inv_key_active,    1
    IniRead, deck_opener_key_active,  settings.ini, settings, deck_opener_key_active,  1
    IniRead, click_roller_key_active, settings.ini, settings, click_roller_key_active, 1
    IniRead, scour_roller_key_active, settings.ini, settings, scour_roller_key_active, 1
    IniRead, gwen_roller_key_active,  settings.ini, settings, gwen_roller_key_active,  0
    IniRead, make_inv_color_map_key_active,   settings.ini, settings, make_inv_color_map_key_active, 1
    ; Key lists
    IniRead, flask_key_set,       settings.ini, settings, flask_key_set,       1-2-3-4-5
    IniRead, seq_first_skill,     settings.ini, settings, seq_first_skill,     f
    IniRead, seq_second_skill,    settings.ini, settings, seq_second_skill,    q
    IniRead, heal_key_1,          settings.ini, settings, heal_key_1,          1
    IniRead, heal_key_2,          settings.ini, settings, heal_key_2,          w
    IniRead, flask_key_1,         settings.ini, settings, flask_key_1,         1
    IniRead, flask_key_2,         settings.ini, settings, flask_key_2,         2
    IniRead, flask_key_3,         settings.ini, settings, flask_key_3,         3
    IniRead, flask_key_4,         settings.ini, settings, flask_key_4,         4
    IniRead, flask_key_5,         settings.ini, settings, flask_key_5,         5
    ; Colors
    IniRead, low_health_color,    settings.ini, settings, low_health_color,    0x1A0D98
    IniRead, loot_color,          settings.ini, settings, loot_color,          0x790062
    IniRead, logout_health_color, settings.ini, settings, logout_health_color, 0x160C92
    IniRead, black_screen,        settings.ini, settings, black_screen,        0x000000
    IniRead, highlighted_border,  settings.ini, settings, highlighted_border,  0x77B4E7
    IniRead, flask_bar_color,     settings.ini, settings, flask_bar_color,     0x99D7F9
    ; Delays
    IniRead, loot_delay,          settings.ini, settings, loot_delay,          300
    IniRead, seq_castspeed_time,  settings.ini, settings, seq_castspeed_time,  340
    IniRead, auto_heal_delay,     settings.ini, settings, auto_heal_delay,     250
    IniRead, auto_logout_delay,   settings.ini, settings, auto_logout_delay,   100
    IniRead, flask_key_1_delay,   settings.ini, settings, flask_key_1_delay,   4000
    IniRead, flask_key_2_delay,   settings.ini, settings, flask_key_2_delay,   5000
    IniRead, flask_key_3_delay,   settings.ini, settings, flask_key_3_delay,   6000
    IniRead, flask_key_4_delay,   settings.ini, settings, flask_key_4_delay,   7000
    IniRead, flask_key_5_delay,   settings.ini, settings, flask_key_5_delay,   8000
    IniRead, rolling_item_delay,  settings.ini, settings, rolling_item_delay,  300
    IniRead, gwen_roller_delay,   settings.ini, settings, gwen_roller_delay,   500
    ; Any coords
    IniRead, health_X,            settings.ini, settings, health_X,            158
    IniRead, health_Y,            settings.ini, settings, health_Y,            937
    IniRead, life_flask_bar_X,    settings.ini, settings, life_flask_bar_X,    000
    IniRead, life_flask_bar_Y,    settings.ini, settings, life_flask_bar_Y,    000
    IniRead, portalX,             settings.ini, settings, portalX,             1303
    IniRead, portalY,             settings.ini, settings, portalY,             816
    IniRead, logout_X,            settings.ini, settings, logout_X,            161
    IniRead, logout_Y,            settings.ini, settings, logout_Y,            953
    IniRead, black_screen_X,      settings.ini, settings, black_screen_X,      0
    IniRead, black_screen_Y,      settings.ini, settings, black_screen_Y,      51
    IniRead, fuse_X,              settings.ini, settings, fuse_X,              111
    IniRead, fuse_Y,              settings.ini, settings, fuse_Y,              112
    IniRead, jeweller_X,          settings.ini, settings, jeweller_X,          221
    IniRead, jeweller_Y,          settings.ini, settings, jeweller_Y,          222
    IniRead, chaos_X,             settings.ini, settings, chaos_X,             331
    IniRead, chaos_Y,             settings.ini, settings, chaos_Y,             332
    IniRead, chrom_X,             settings.ini, settings, chrom_X,             441
    IniRead, chrom_Y,             settings.ini, settings, chrom_Y,             442
    IniRead, alter_X,             settings.ini, settings, alter_X,             551
    IniRead, alter_Y,             settings.ini, settings, alter_Y,             552
    IniRead, alch_X,              settings.ini, settings, alch_X,              661
    IniRead, alch_Y,              settings.ini, settings, alch_Y,              662
    IniRead, bind_X,              settings.ini, settings, bind_X,              771
    IniRead, bind_Y,              settings.ini, settings, bind_Y,              772
    IniRead, chance_X,            settings.ini, settings, chance_X,            881
    IniRead, chance_Y,            settings.ini, settings, chance_Y,            882
    IniRead, scour_X,             settings.ini, settings, scour_X,             991
    IniRead, scour_Y,             settings.ini, settings, scour_Y,             992
    IniRead, rolling_item_X,      settings.ini, settings, rolling_item_X,      1001
    IniRead, rolling_item_Y,      settings.ini, settings, rolling_item_Y,      1002
    IniRead, highlighted_border_X1, settings.ini, settings, highlighted_border_X1, 1111
    IniRead, highlighted_border_X2, settings.ini, settings, highlighted_border_X2, 1112
    IniRead, highlighted_border_Y1, settings.ini, settings, highlighted_border_Y1, 1113
    IniRead, highlighted_border_Y2, settings.ini, settings, highlighted_border_Y2, 1114
    IniRead, gwen_window_X1,      settings.ini, settings, gwen_window_X1,      1211
    IniRead, gwen_window_X2,      settings.ini, settings, gwen_window_X2,      1212
    IniRead, gwen_window_Y1,      settings.ini, settings, gwen_window_Y1,      1213
    IniRead, gwen_window_Y2,      settings.ini, settings, gwen_window_Y2,      1214
    IniRead, gwen_roll_key_X,     settings.ini, settings, gwen_roll_key_X,     1311
    IniRead, gwen_roll_key_Y,     settings.ini, settings, gwen_roll_key_Y,     1312
    IniRead, inv_coords,          settings.ini, settings, inv_coords,          0
    IniRead, inv_X1,              settings.ini, settings, inv_X1,              1271
    IniRead, inv_Y1,              settings.ini, settings, inv_Y1,              586
    IniRead, inv_X2,              settings.ini, settings, inv_X2,              1903
    IniRead, inv_Y2,              settings.ini, settings, inv_Y2,              849
    IniRead, inv_coords,          settings.ini, settings, inv_coords,          0
    IniRead, cell_width,          settings.ini, settings, cell_width,          52
    IniRead, cell_height,         settings.ini, settings, cell_height,         52
    ; States
    IniRead, fuse,                settings.ini, settings, fuse,                1
    IniRead, jeweller,            settings.ini, settings, jeweller,            0
    IniRead, chaos,               settings.ini, settings, chaos,               0
    IniRead, chrom,               settings.ini, settings, chrom,               0
    IniRead, alter,               settings.ini, settings, alter,               0
    IniRead, alch,                settings.ini, settings, alch,                1
    IniRead, bind,                settings.ini, settings, bind,                0
    IniRead, chance,              settings.ini, settings, chance,              0
    IniRead, default_screen_mode, settings.ini, settings, default_screen_mode, 0
    IniRead, wide_screen_mode,    settings.ini, settings, wide_screen_mode,    1
    IniRead, heal_key_1_are_flask,settings.ini, settings, heal_key_1_are_flask,0
    IniRead, life_based,          settings.ini, settings, life_based,          1
    IniRead, es_based,            settings.ini, settings, es_based,            0
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
    IniWrite, %holdWalkHotkey%,      settings.ini, settings, holdWalkHotkey
    IniWrite, %openPortalHotkey%,    settings.ini, settings, openPortalHotkey
    IniWrite, %hideoutHotkey%,       settings.ini, settings, hideoutHotkey
    IniWrite, %partyInviteHotkey%,   settings.ini, settings, partyInviteHotkey
    IniWrite, %partyKickHotkey%,     settings.ini, settings, partyKickHotkey
    IniWrite, %triggerSeqHotkey%,    settings.ini, settings, triggerSeqHotkey
    IniWrite, %smokeMineHotkey%,     settings.ini, settings, smokeMineHotkey
    IniWrite, %gameLogoutHotkey%,    settings.ini, settings, gameLogoutHotkey
    IniWrite, %autoLogoutHotkey%,    settings.ini, settings, autoLogoutHotkey
    IniWrite, %customChatCommandHotkey%, settings.ini, settings, customChatCommandHotkey
    IniWrite, %updateHealTresholdHotkey%,settings.ini, settings, updateHealTresholdHotkey
    IniWrite, %flaskTimersHotkey%,   settings.ini, settings, flaskTimersHotkey
    IniWrite, %cleanInvHotkey%,      settings.ini, settings, cleanInvHotkey
    IniWrite, %deckOpenerHotkey%,    settings.ini, settings, deckOpenerHotkey
    IniWrite, %clickRollerHotkey%,   settings.ini, settings, clickRollerHotkey
    IniWrite, %scourRollerHotkey%,   settings.ini, settings, scourRollerHotkey
    IniWrite, %gwenRollerHotkey%,    settings.ini, settings, gwenRollerHotkey
    IniWrite, %makeInvColorMapHotkey%,   settings.ini, settings, makeInvColorMapHotkey
    ; Activators
    IniWrite, %set_of_flasks_active%,settings.ini, settings, set_of_flasks_active
    IniWrite, %auto_heal_active%,    settings.ini, settings, auto_heal_active
    IniWrite, %heal_key_duo_active%, settings.ini, settings, heal_key_duo_active
    IniWrite, %auto_looting_active%, settings.ini, settings, auto_looting_active
    IniWrite, %loot_one_item_active%,settings.ini, settings, loot_one_item_active
    IniWrite, %hold_walk_active%,    settings.ini, settings, hold_walk_active
    IniWrite, %open_portal_active%,  settings.ini, settings, open_portal_active
    IniWrite, %hideout_active%,      settings.ini, settings, hideout_active
    IniWrite, %party_invite_active%, settings.ini, settings, party_invite_active
    IniWrite, %party_kick_active%,   settings.ini, settings, party_kick_active
    IniWrite, %seq_skills_active%,   settings.ini, settings, seq_skills_active
    IniWrite, %smoke_mine_active%,   settings.ini, settings, smoke_mine_active
    IniWrite, %game_logout_active%,  settings.ini, settings, game_logout_active
    IniWrite, %auto_logout_active%,  settings.ini, settings, auto_logout_active
    IniWrite, %custom_chat_command_active%,      settings.ini, settings, custom_chat_command_active
    IniWrite, %flask_key_1_active%,  settings.ini, settings, flask_key_1_active
    IniWrite, %flask_key_2_active%,  settings.ini, settings, flask_key_2_active
    IniWrite, %flask_key_3_active%,  settings.ini, settings, flask_key_3_active
    IniWrite, %flask_key_4_active%,  settings.ini, settings, flask_key_4_active
    IniWrite, %flask_key_5_active%,  settings.ini, settings, flask_key_5_active
    IniWrite, %flask_timers_key_active%,         settings.ini, settings, flask_timers_key_active
    IniWrite, %flask_timers_start_press_active%, settings.ini, settings, flask_timers_start_press_active
    IniWrite, %update_heal_treshold_active%,     settings.ini, settings, update_heal_treshold_active
    IniWrite, %clean_inv_key_active%,    settings.ini, settings, clean_inv_key_active
    IniWrite, %deck_opener_key_active%,  settings.ini, settings, deck_opener_key_active
    IniWrite, %click_roller_key_active%, settings.ini, settings, click_roller_key_active
    IniWrite, %scour_roller_key_active%, settings.ini, settings, scour_roller_key_active
    IniWrite, %gwen_roller_key_active%,  settings.ini, settings, gwen_roller_key_active
    IniWrite, %make_inv_color_map_key_active%,   settings.ini, settings, make_inv_color_map_key_active
    ; Key lists
    IniWrite, %flask_key_set%,       settings.ini, settings, flask_key_set
    IniWrite, %heal_key_1%,          settings.ini, settings, heal_key_1
    IniWrite, %seq_first_skill%,     settings.ini, settings, seq_first_skill
    IniWrite, %seq_second_skill%,    settings.ini, settings, seq_second_skill
    IniWrite, %flask_key_1%,         settings.ini, settings, flask_key_1
    IniWrite, %flask_key_2%,         settings.ini, settings, flask_key_2
    IniWrite, %flask_key_3%,         settings.ini, settings, flask_key_3
    IniWrite, %flask_key_4%,         settings.ini, settings, flask_key_4
    IniWrite, %flask_key_5%,         settings.ini, settings, flask_key_5    
    ; Colors
    IniWrite, %low_health_color%,    settings.ini, settings, low_health_color
    IniWrite, %loot_color%,          settings.ini, settings, loot_color
    IniWrite, %logout_health_color%, settings.ini, settings, logout_health_color
    IniWrite, %black_screen%,        settings.ini, settings, black_screen
    ; Delays
    IniWrite, %loot_delay%,          settings.ini, settings, loot_delay
    IniWrite, %seq_castspeed_time%,  settings.ini, settings, seq_castspeed_time
    IniWrite, %flask_key_1_delay%,   settings.ini, settings, flask_key_1_delay
    IniWrite, %flask_key_2_delay%,   settings.ini, settings, flask_key_2_delay
    IniWrite, %flask_key_3_delay%,   settings.ini, settings, flask_key_3_delay
    IniWrite, %flask_key_4_delay%,   settings.ini, settings, flask_key_4_delay
    IniWrite, %flask_key_5_delay%,   settings.ini, settings, flask_key_5_delay
    IniWrite, %rolling_item_delay%,  settings.ini, settings, rolling_item_delay
    IniWrite, %gwen_roller_delay%,   settings.ini, settings, gwen_roller_delay
    ; Any coords
    IniWrite, %health_X%,            settings.ini, settings, health_X
    IniWrite, %health_Y%,            settings.ini, settings, health_Y
    IniWrite, %portalX%,             settings.ini, settings, portalX
    IniWrite, %portalY%,             settings.ini, settings, portalY
    IniWrite, %logout_X%,            settings.ini, settings, logout_X
    IniWrite, %logout_Y%,            settings.ini, settings, logout_Y
    IniWrite, %black_screen_X%,      settings.ini, settings, black_screen_X
    IniWrite, %black_screen_Y%,      settings.ini, settings, black_screen_Y
    IniWrite, %fuse_X%,              settings.ini, settings, fuse_X
    IniWrite, %fuse_Y%,              settings.ini, settings, fuse_Y
    IniWrite, %jeweller_X%,          settings.ini, settings, jeweller_X
    IniWrite, %jeweller_Y%,          settings.ini, settings, jeweller_Y
    IniWrite, %chaos_X%,             settings.ini, settings, chaos_X
    IniWrite, %chaos_Y%,             settings.ini, settings, chaos_Y
    IniWrite, %chrom_X%,             settings.ini, settings, chrom_X
    IniWrite, %chrom_Y%,             settings.ini, settings, chrom_Y
    IniWrite, %alter_X%,             settings.ini, settings, alter_X
    IniWrite, %alter_Y%,             settings.ini, settings, alter_Y
    IniWrite, %alch_X%,              settings.ini, settings, alch_X
    IniWrite, %alch_Y%,              settings.ini, settings, alch_Y
    IniWrite, %bind_X%,              settings.ini, settings, bind_X
    IniWrite, %bind_Y%,              settings.ini, settings, bind_Y
    IniWrite, %chance_X%,            settings.ini, settings, chance_X
    IniWrite, %chance_Y%,            settings.ini, settings, chance_Y
    IniWrite, %scour_X%,             settings.ini, settings, scour_X
    IniWrite, %scour_Y%,             settings.ini, settings, scour_Y
    IniWrite, %rolling_item_X%,      settings.ini, settings, rolling_item_X
    IniWrite, %rolling_item_Y%,      settings.ini, settings, rolling_item_Y
    IniWrite, %highlighted_border_X1%, settings.ini, settings, highlighted_border_X1
    IniWrite, %highlighted_border_X2%, settings.ini, settings, highlighted_border_X2
    IniWrite, %highlighted_border_Y1%, settings.ini, settings, highlighted_border_Y1
    IniWrite, %highlighted_border_Y2%, settings.ini, settings, highlighted_border_Y2
    IniWrite, %gwen_window_X1%,      settings.ini, settings, gwen_window_X1
    IniWrite, %gwen_window_X2%,      settings.ini, settings, gwen_window_X2
    IniWrite, %gwen_window_Y1%,      settings.ini, settings, gwen_window_Y1
    IniWrite, %gwen_window_Y2%,      settings.ini, settings, gwen_window_Y2
    IniWrite, %gwen_roll_key_X%,     settings.ini, settings, gwen_roll_key_X
    IniWrite, %gwen_roll_key_Y%,     settings.ini, settings, gwen_roll_key_Y
    IniWrite, %inv_coords%,          settings.ini, settings, inv_coords
    IniWrite, %inv_X1%,              settings.ini, settings, inv_X1
    IniWrite, %inv_Y1%,              settings.ini, settings, inv_Y1
    IniWrite, %inv_X2%,              settings.ini, settings, inv_X2
    IniWrite, %inv_Y2%,              settings.ini, settings, inv_Y2
    ; States
    IniWrite, %fuse%,                settings.ini, settings, fuse
    IniWrite, %jeweller%,            settings.ini, settings, jeweller
    IniWrite, %chaos%,               settings.ini, settings, chaos
    IniWrite, %chrom%,               settings.ini, settings, chrom
    IniWrite, %alter%,               settings.ini, settings, alter
    IniWrite, %alch%,                settings.ini, settings, alch
    IniWrite, %bind%,                settings.ini, settings, bind
    IniWrite, %chance%,              settings.ini, settings, chance
    IniWrite, %default_screen_mode%, settings.ini, settings, default_screen_mode
    IniWrite, %wide_screen_mode%,    settings.ini, settings, wide_screen_mode
    IniWrite, %heal_key_1_are_flask%,settings.ini, settings, heal_key_1_are_flask
    IniWrite, %life_based%,          settings.ini, settings, life_based
    IniWrite, %es_based%,            settings.ini, settings, es_based
    ; Commands
    IniWrite, %chat_command%,        settings.ini, settings, chat_command

    return
}
