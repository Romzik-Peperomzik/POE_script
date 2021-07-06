ReadSettings(){
    ; Set of flasks
    IniRead, set_of_flasks_active,settings.ini, settings, set_of_flasks_active,True
    IniRead, setOfFlasksHotkey,   settings.ini, settings, setOfFlasksHotkey,   a    
    IniRead, flask_key_set,       settings.ini, settings, flask_key_set,       2-3-4-5
    IniRead, flask_key_set1,      settings.ini, settings, flask_key_set1,      3-w
    IniRead, auto_l_flask_active, settings.ini, settings, auto_l_flask_active, True
    IniRead, autoLifeFlaskHotkey, settings.ini, settings, autoLifeFlaskHotkey, ^f
    IniRead, low_life_flask_list, settings.ini, settings, low_life_flask_list, 1 
    IniRead, low_life_X,          settings.ini, settings, low_life_X,          133
    IniRead, low_life_Y,          settings.ini, settings, low_life_Y,          948
    IniRead, life_color,          settings.ini, settings, life_color,          0x2419A7 
    ; Smoke mine
    IniRead, smoke_mine_active,   settings.ini, settings, smoke_mine_active,   True
    IniRead, smokeMineHotkey,     settings.ini, settings, smokeMineHotkey,     ^r
    IniRead, mine_laying_time,    settings.ini, settings, mine_laying_time,    150 
    ; Auto loot
    IniRead, auto_looting_active, settings.ini, settings, auto_looting_active, True
    IniRead, autoLootingHotkey,   settings.ini, settings, autoLootingHotkey,   ^s
    IniRead, loot_one_item_active,settings.ini, settings, loot_one_item_active,True
    IniRead, lootOneItemHotkey,   settings.ini, settings, lootOneItemHotkey,   s
    IniRead, lootColor,           settings.ini, settings, lootColor,           0x790062
    IniRead, loot_dalay,          settings.ini, settings, loot_dalay,          400
    ; Auto walk
    IniRead, auto_walk_active,    settings.ini, settings, auto_walk_active,    True
    IniRead, autoWalkHotkey,      settings.ini, settings, autoWalkHotkey,      ^d   
    ; Open portal
    IniRead, open_portal_active,  settings.ini, settings, open_portal_active,  True
    IniRead, openPortalHotkey,    settings.ini, settings, openPortalHotkey,    v
    IniRead, portalX,             settings.ini, settings, portalX,             1303
    IniRead, portalY,             settings.ini, settings, portalY,             816
    ; Game Logout
    IniRead, game_logout_active,  settings.ini, settings, game_logout_active,  True
    IniRead, gameLogoutHotkey,    settings.ini, settings, gameLogoutHotkey,    SC029
    IniRead, auto_logout_active,  settings.ini, settings, auto_logout_active,  True
    IniRead, autoLogoutHotkey,    settings.ini, settings, autoLogoutHotkey,    F3
    IniRead, logout_X,            settings.ini, settings, logout_X,            84
    IniRead, logout_Y,            settings.ini, settings, logout_Y,            992
    IniRead, logout_life_color,   settings.ini, settings, logout_life_color,   0x19117B
    IniRead, black_screen,        settings.ini, settings, black_screen,        0x000000
    ; Hideout
    IniRead, hideout_active,      settings.ini, settings, hideout_active,      True
    IniRead, hideoutHotkey,       settings.ini, settings, hideoutHotkey,       F5
    ; Party invite/kick
    IniRead, party_invite_active, settings.ini, settings, partyInvite_active,  True
    IniRead, partyInviteHotkey,   settings.ini, settings, partyInviteHotkey,   F6
    IniRead, party_kick_active,   settings.ini, settings, party_kick_active,   True
    IniRead, partyKickHotkey,     settings.ini, settings, partyKickHotkey,     F7
    ; Sequence of skills, BFBB, Cremation > Desecrate and etc
    IniRead, seq_skills_active,   settings.ini, settings, seq_skills_active,   True
    IniRead, seqSkillsHotkey,     settings.ini, settings, seqSkillsHotkey,     RMB
    IniRead, seq_castspeed_time,  settings.ini, settings, seq_castspeed_time,  340

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