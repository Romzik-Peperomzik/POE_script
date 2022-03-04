ReadSettings(){
    ; Set of flasks
    IniRead, set_of_flasks_active,settings.ini, settings, set_of_flasks_active,1
    IniRead, setOfFlasksHotkey,   settings.ini, settings, setOfFlasksHotkey,   a    
    IniRead, flask_key_set,       settings.ini, settings, flask_key_set,       1-2-3-4-5
    IniRead, auto_l_flask_active, settings.ini, settings, auto_l_flask_active, 0
    IniRead, auto_l_flask_toggle, settings.ini, settings, auto_l_flask_toggle, 1
    IniRead, autoLifeFlaskHotkey, settings.ini, settings, autoLifeFlaskHotkey, ^f
    IniRead, low_life_flask_list, settings.ini, settings, low_life_flask_list, 1 
    IniRead, low_life_X,          settings.ini, settings, low_life_X,          158
    IniRead, low_life_Y,          settings.ini, settings, low_life_Y,          937
    IniRead, life_color,          settings.ini, settings, life_color,          0x1A0D98
    IniRead, cells_coord_list,    settings.ini, settings, cells_coord_list,    1301,596-1301,648-1301,701-1301,754-1353,596-1353,649-1353,702-1353,754-1406,596-1406,649-1406,701-1406,754-1406,807-1459,596-1459,649-1459,701-1459,754-1459,807-1511,596-1511,649-1511,701-1511,754-1511,807-1563,596-1563,649-1563,701-1563,754-1563,807-1617,596-1617,649-1617,701-1617,754-1617,807-1669,596-1669,649-1669,701-1669,754-1669,807-1722,596-1722,649-1722,701-1722,754-1722,807-1775,596-1775,649-1775,701-1775,754-1775,807-1827,596-1827,649-1827,701-1827,754-1827,807-1880,596-1880,649-1880,701-1880,754-1880,807
    IniRead, do_delirious_toggle, settings.ini, settings, do_delirious_toggle, 0
    IniRead, deli_sub_toggle,     settings.ini, settings, deli_sub_toggle, 0
    IniRead, door_searcher_toggle,settings.ini, settings, door_searcher_toggle, 0
    IniRead, gwen_roll_toggle,    settings.ini, settings, gwen_roll_toggle, 0
    ; Auto loot
    IniRead, auto_looting_active, settings.ini, settings, auto_looting_active, 0
    IniRead, autoLootingHotkey,   settings.ini, settings, autoLootingHotkey,   ^s
    IniRead, loot_one_item_active,settings.ini, settings, loot_one_item_active,0
    IniRead, lootOneItemHotkey,   settings.ini, settings, lootOneItemHotkey,   s
    IniRead, lootColor,           settings.ini, settings, lootColor,           0x790062
    IniRead, loot_delay,          settings.ini, settings, loot_delay,          300
    ; Auto walk
    IniRead, auto_walk_active,    settings.ini, settings, auto_walk_active,    0
    IniRead, AutoWalkHotkey,      settings.ini, settings, AutoWalkHotkey,      ^d 
    ; Open portal
    IniRead, open_portal_active,  settings.ini, settings, open_portal_active,  0
    IniRead, openPortalHotkey,    settings.ini, settings, openPortalHotkey,    v
    IniRead, portalX,             settings.ini, settings, portalX,             1303
    IniRead, portalY,             settings.ini, settings, portalY,             816    
    ; Hideout
    IniRead, hideout_active,      settings.ini, settings, hideout_active,      1
    IniRead, hideoutHotkey,       settings.ini, settings, hideoutHotkey,       F5
    ; Party invite/kick
    IniRead, party_invite_active, settings.ini, settings, partyInvite_active,  0
    IniRead, partyInviteHotkey,   settings.ini, settings, partyInviteHotkey,   F6
    IniRead, party_kick_active,   settings.ini, settings, party_kick_active,   0
    IniRead, partyKickHotkey,     settings.ini, settings, partyKickHotkey,     F7
    ; Abilities sequences, BF > BB, Cremation > Desecrate and etc
    IniRead, seq_skills_active,   settings.ini, settings, seq_skills_active,   0
    IniRead, seqSkillsHotkey,     settings.ini, settings, seqSkillsHotkey,     right
    IniRead, seq_second_skill,    settings.ini, settings, seq_second_skill,    q
    IniRead, seq_castspeed_time,  settings.ini, settings, seq_castspeed_time,  340
    ; Smoke mine
    IniRead, detonate_button,     settings.ini, settings, detonate_button,     d
    IniRead, smoke_mine_button,   settings.ini, settings, smoke_mine_button,   r
    IniRead, smoke_mine_active,   settings.ini, settings, smoke_mine_active,   0
    IniRead, smokeMineHotkey,     settings.ini, settings, smokeMineHotkey,     ^r
    IniRead, mine_laying_time,    settings.ini, settings, mine_laying_time,    250
    ; Game Logout
    IniRead, game_logout_active,  settings.ini, settings, game_logout_active,  1
    IniRead, gameLogoutHotkey,    settings.ini, settings, gameLogoutHotkey,    SC029
    IniRead, auto_logout_active,  settings.ini, settings, auto_logout_active,  0
    IniRead, auto_logout_toggle,  settings.ini, settings, auto_logout_toggle,  0
    IniRead, autoLogoutHotkey,    settings.ini, settings, autoLogoutHotkey,    F3
    IniRead, logout_X,            settings.ini, settings, logout_X,            161
    IniRead, logout_Y,            settings.ini, settings, logout_Y,            953
    IniRead, logout_life_color,   settings.ini, settings, logout_life_color,   0x160C92
    IniRead, black_screen,        settings.ini, settings, black_screen,        0x000000
    IniRead, black_screen_X,      settings.ini, settings, black_screen_X,      0
    IniRead, black_screen_Y,      settings.ini, settings, black_screen_Y,      51
    return
}

SaveSettings(){
    ; Set of flasks
    IniWrite, %set_of_flasks_active%,settings.ini, settings, set_of_flasks_active
    IniWrite, %setOfFlasksHotkey%,   settings.ini, settings, setOfFlasksHotkey
    IniWrite, %flask_key_set%,       settings.ini, settings, flask_key_set
    IniWrite, %auto_l_flask_active%, settings.ini, settings, auto_l_flask_active
    IniWrite, %auto_l_flask_toggle%, settings.ini, settings, auto_l_flask_toggle
    IniWrite, %autoLifeFlaskHotkey%, settings.ini, settings, autoLifeFlaskHotkey
    IniWrite, %low_life_flask_list%, settings.ini, settings, low_life_flask_list
    IniWrite, %low_life_X%,          settings.ini, settings, low_life_X
    IniWrite, %low_life_Y%,          settings.ini, settings, low_life_Y
    IniWrite, %life_color%,          settings.ini, settings, life_color
    ; Auto loot
    IniWrite, %auto_looting_active%, settings.ini, settings, auto_looting_active
    IniWrite, %autoLootingHotkey%,   settings.ini, settings, autoLootingHotkey
    IniWrite, %loot_one_item_active%,settings.ini, settings, loot_one_item_active
    IniWrite, %lootOneItemHotkey%,   settings.ini, settings, lootOneItemHotkey
    IniWrite, %lootColor%,           settings.ini, settings, lootColor
    IniWrite, %loot_delay%,          settings.ini, settings, loot_delay
    ; Auto walk
    IniWrite, %auto_walk_active%,    settings.ini, settings, auto_walk_active
    IniWrite, %AutoWalkHotkey%,      settings.ini, settings, AutoWalkHotkey
    ; Open portal
    IniWrite, %open_portal_active%,  settings.ini, settings, open_portal_active
    IniWrite, %openPortalHotkey%,    settings.ini, settings, openPortalHotkey
    IniWrite, %portalX%,             settings.ini, settings, portalX
    IniWrite, %portalY%,             settings.ini, settings, portalY    
    ; Hideout
    IniWrite, %hideout_active%,      settings.ini, settings, hideout_active
    IniWrite, %hideoutHotkey%,       settings.ini, settings, hideoutHotkey
    ; Party invite/kick
    IniWrite, %party_invite_active%, settings.ini, settings, partyInvite_active
    IniWrite, %partyInviteHotkey%,   settings.ini, settings, partyInviteHotkey
    IniWrite, %party_kick_active%,   settings.ini, settings, party_kick_active
    IniWrite, %partyKickHotkey%,     settings.ini, settings, partyKickHotkey
    ; Abilities sequences, BF > BB, Cremation > Desecrate and etc
    IniWrite, %seq_skills_active%,   settings.ini, settings, seq_skills_active
    IniWrite, %seqSkillsHotkey%,     settings.ini, settings, seqSkillsHotkey
    IniWrite, %seq_second_skill%,    settings.ini, settings, seq_second_skill
    IniWrite, %seq_castspeed_time%,  settings.ini, settings, seq_castspeed_time
    ; Smoke mine
    IniWrite, %detonate_button%,     settings.ini, settings, detonate_button
    IniWrite, %smoke_mine_button%,   settings.ini, settings, smoke_mine_button
    IniWrite, %smoke_mine_active%,   settings.ini, settings, smoke_mine_active
    IniWrite, %smokeMineHotkey%,     settings.ini, settings, smokeMineHotkey
    IniWrite, %mine_laying_time%,    settings.ini, settings, mine_laying_time
    ; Game Logout
    IniWrite, %game_logout_active%,  settings.ini, settings, game_logout_active
    IniWrite, %gameLogoutHotkey%,    settings.ini, settings, gameLogoutHotkey
    IniWrite, %auto_logout_active%,  settings.ini, settings, auto_logout_active
    IniWrite, %auto_logout_toggle%,  settings.ini, settings, auto_logout_toggle
    IniWrite, %autoLogoutHotkey%,    settings.ini, settings, autoLogoutHotkey
    IniWrite, %logout_X%,            settings.ini, settings, logout_X
    IniWrite, %logout_Y%,            settings.ini, settings, logout_Y
    IniWrite, %logout_life_color%,   settings.ini, settings, logout_life_color
    IniWrite, %black_screen%,        settings.ini, settings, black_screen
    IniWrite, %black_screen_X%,      settings.ini, settings, black_screen_X
    IniWrite, %black_screen_Y%,      settings.ini, settings, black_screen_Y
    return
}
