RunGUI(){

global
Gui, Font, norm, 
Gui, Add, Edit, x252 y20 w0 h0 , 123 ; dummy edit to avoid a mysterious bug
Gui, Font, S9 CDefault Bold, Verdana
Gui, Add, GroupBox, x32 y59 w420 h120 , Set of Flasks
Gui, Font, norm, 
Gui, Add, Text, x42 y79 w175 h20 , Flasks and skills hotkey:
Gui, Add, Hotkey, x210 y79 w60 h20 vsetOfFlasksHotkey, %setOfFlasksHotkey%
Gui, Add, CheckBox, x280 y79 w35 h20 Checked%set_of_flasks_active% vset_of_flasks_active, 
Gui, Add, Text, x42 y109 w150 h20 , Set of flasks and skills:
Gui, Add, Edit, x210 y109 w120 h20 vflask_key_set, %flask_key_set%
Gui, Font, S7 CDefault, Verdana
Gui, Add, Text, x42 y142 w300 h20 , To make sequence, separate keys by -, 1-2-q-w-e
Gui, Add, Text, x42 y157 w400 h20 , For Shift, Alt or Ctrl key combination use: Shift +s, Alt !s, Ctrl ^s:    +q-!w-^e
Gui, Font, S9 CDefault Bold, Verdana
Gui, Add, GroupBox, x32 y199 w240 h160 , Auto Life Flask
Gui, Font, norm, 
Gui, Add, Text, x42 y249 w20 h20 , X:
Gui, Add, Edit, x62 y249 w47 h20 vlow_life_X, %low_life_X%
Gui, Add, Text, x142 y249 w10 h20 , Y:
Gui, Add, Edit, x162 y249 w47 h20 vlow_life_Y, %low_life_Y%
Gui, Add, Text, x42 y279 w100 h20 , X, Y pixel color:
Gui, Add, Edit, x162 y279 w75 h20 vlife_color, %life_color%
Gui, Add, Text, x42 y309 w100 h20 , list of keys:
Gui, Add, Edit, x162 y309 w40 h20 vlow_life_flask_list, %low_life_flask_list%
Gui, Add, Text, x42 y219 w110 h20 , Toggle AutoLF:
Gui, Add, Hotkey, x162 y219 w60 h20 vautoLifeFlaskHotkey, %autoLifeFlaskHotkey%
Gui, Add, CheckBox, x232 y219 w30 h20 Checked%auto_l_flask_active% vauto_l_flask_active, 
Gui, Font, S7 CDefault, Verdana
Gui, Add, Text, x36 y339 w235 h15 , To make sequence, separate keys by -, 1-2-3
Gui, Font, S9 CDefault Bold, Verdana
Gui, Add, GroupBox, x32 y369 w240 h140 , Auto Loot
Gui, Font, norm, 
Gui, Add, Text, x42 y449 w120 h20 , Border loot color:
Gui, Add, Edit, x162 y449 w75 h20 vlootColor, %lootColor%
Gui, Add, Text, x42 y389 w80 h20 , Loot 1 item
Gui, Add, Hotkey, x162 y389 w60 h20 vlootOneItemHotkey, %lootOneItemHotkey%
Gui, Add, CheckBox, x232 y389 w30 h20 Checked%loot_one_item_active% vloot_one_item_active, 
Gui, Add, Text, x42 y419 w120 h20 , Loot all (hold key)
Gui, Add, Hotkey, x162 y419 w60 h20 vautoLootingHotkey, %autoLootingHotkey%
Gui, Add, CheckBox, x232 y419 w30 h20 Checked%auto_looting_active% vauto_looting_active, 
Gui, Add, Edit, x162 y479 w40 h20 vloot_delay, %loot_delay%
Gui, Add, Text, x42 y479 w75 h20 , delay (ms):
Gui, Font, S9 CDefault Bold, Verdana
Gui, Add, GroupBox, x292 y199 w300 h310 , Misc
Gui, Font, norm, 
Gui, Add, Text, x302 y219 w190 h20 , Get Pixel Color and Coords:
Gui, Add, Text, x302 y249 w160 h20 , Suspend Hotkeys Bind:
Gui, Add, Text, x302 y279 w110 h20 , Reload script:
Gui, Add, Text, x302 y309 w120 h20 , Pause script:
Gui, Font, S9 CDefault Bold, Verdana
Gui, Add, Text, x482 y219 w50 h20 , Alt + Z
Gui, Add, Text, x482 y249 w20 h20 , F2
Gui, Add, Text, x482 y279 w40 h20 , RCtrl
Gui, Add, Text, x482 y309 w40 h20 , Pause
Gui, Font, norm, 
Gui, Add, Text, x302 y339 w150 h20 , Auto Walk (lmb hold)
Gui, Add, Hotkey, x482 y339 w60 h20 vAutoWalkHotkey, %AutoWalkHotkey%
Gui, Add, CheckBox, x552 y339 w35 h20 Checked%auto_walk_active% vauto_walk_active, 
Gui, Add, Text, x302 y369 w130 h20 , Game Logout
Gui, Add, Edit, x482 y369 w60 h20 vgameLogoutHotkey, %gameLogoutHotkey%
Gui, Add, CheckBox, x552 y369 w35 h20 Checked%game_logout_active% vgame_logout_active, 
Gui, Add, Text, x302 y399 w90 h20 , Go to Hideout
Gui, Add, Hotkey, x482 y399 w60 h20 vhideoutHotkey, %hideoutHotkey%
Gui, Add, CheckBox, x552 y399 w35 h20 Checked%hideout_active% vhideout_active, 
Gui, Add, Text, x302 y429 w220 h20 , Invite to Party by Last Msg
Gui, Add, Hotkey, x482 y429 w60 h20 vpartyInviteHotkey, %partyInviteHotkey%
Gui, Add, CheckBox, x552 y429 w35 h20 Checked%party_invite_active% vparty_invite_active, 
Gui, Add, Text, x302 y459 w220 h20 , Kick from Party by Last Msg
Gui, Add, Hotkey, x482 y459 w60 h20 vpartyKickHotkey, %partyKickHotkey%
Gui, Add, CheckBox, x552 y459 w35 h20 Checked%party_kick_active% vparty_kick_active, 
Gui, Font, S9 CDefault Bold, Verdana
Gui, Add, GroupBox, x472 y59 w400 h120 , Open Portal
Gui, Font, norm, 
Gui, Add, Text, x482 y79 w60 h20 , Quick TP
Gui, Add, Hotkey, x562 y79 w60 h20 vopenPortalHotkey, %openPortalHotkey%
Gui, Add, CheckBox, x632 y79 w20 h20 Checked%open_portal_active% vopen_portal_active, 
Gui, Add, Text, x482 y109 w20 h20 , X:
Gui, Add, Edit, x562 y109 w50 h20 vportalX, %portalX%
Gui, Add, Text, x482 y139 w10 h20 , Y:
Gui, Add, Edit, x562 y139 w50 h20 vportalY, %portalY%
Gui, Font, S8 CDefault, Verdana
Gui, Add, Text, x665 y79 w160 h20 , Get coords of portal
Gui, Add, Text, x665 y99 w160 h20 , scroll in your inventory
Gui, Add, Text, x665 y119 w180 h20 , point coursor on portal scroll
Gui, Add, Text, x665 y139 w160 h20 , and press Alt + Z hotkey.
Gui, Add, Text, x665 y159 w185 h15 , Put X and Y coords at edit form.




Gui, Font, S9 CDefault Bold, Verdana
Gui, Add, GroupBox, x612 y199 w260 h310 , Abilities sequences
Gui, Font, S7 norm CDefault, Verdana
Gui, Add, Text, x622 y219 w230 h13 , From your ingame settings put keys for
Gui, Add, Text, x622 y230 w230 h13 , smoke mine and detonate mine at form below.
Gui, Add, Text, x622 y241 w230 h13 , Same keys as at skill panel.

Gui, Font, S9 norm, 
Gui, Add, Text, x622 y261 w110 h20 , Smoke mine key:
Gui, Add, Edit, x772 y261 w60 h20 vsmoke_mine_button, %smoke_mine_button%

Gui, Add, Text, x622 y291 w150 h20 , Detonate mine key:
Gui, Add, Edit, x772 y291 w60 h20 vdetonate_button, %detonate_button%

Gui, Add, Text, x622 y321 w120 h20 , Quick Smoke mine
Gui, Add, Hotkey, x772 y321 w60 h20 vsmokeMineHotkey, %smokeMineHotkey%
Gui, Add, CheckBox, x842 y321 w20 h20 Checked%smoke_mine_active% vsmoke_mine_active, 


Gui, Add, Text, x622 y396 w150 h20 , First skill also trigger
Gui, Add, Hotkey, x772 y396 w60 h20 vseqSkillsHotkey, %seqSkillsHotkey%
Gui, Add, CheckBox, x842 y396 w20 h20 Checked%seq_skills_active% vseq_skills_active, 

Gui, Add, Text, x622 y420 w120 h20 , Second skill
Gui, Add, Edit, x772 y420 w60 h20 vseq_second_skill, %seq_second_skill%

Gui, Add, Text, x622 y444 w180 h20 , Delay between skills (ms):
Gui, Add, Edit, x792 y444 w40 h20 vseq_castspeed_time, %seq_castspeed_time%


Gui, Font, S7 CDefault, Verdana
Gui, Add, Text, x622 y354 w240 h20 , For example put Desecrate at RMB key in game
Gui, Add, Text, x622 y364 w230 h20 , and Cremation at Q key then put cast speed
Gui, Add, Text, x622 y374 w190 h20 , of Desecrate skill from ingame tooltip.

Gui, Add, Text, x622 y479 w200 h20 , Put cast time value from ingame tooltip
Gui, Font, norm, 
Gui, Font, S9 CDefault Bold, Verdana
Gui, Add, GroupBox, x32 y529 w560 h240 , Auto Logout
Gui, Font, norm, 
Gui, Add, Button, x762 y739 w100 h30 , Apply change
; Generated using SmartGUI Creator 4.0
Gui, Show, x285 y119 h803 w905, New GUI Window
Return

GuiClose:
SaveSettings()
ExitApp

}


ButtonApplyChange(){
    TurnOffAllHotkey()
    Gui, Submit, NoHide
    TurnOnAllHotkey()
    MsgBox , 0, , change applied, 0.5
}

TurnOffAllHotkey(){
    TurnOffHotkey(setOfFlasksHotkey)
    TurnOffHotkey(autoLifeFlaskHotkey)
    TurnOffHotkey(autoLootingHotkey)
    TurnOffHotkey(lootOneItemHotkey)
    TurnOffHotkey(AutoWalkHotkey)
    TurnOffHotkey(gameLogoutHotkey)
    TurnOffHotkey(hideoutHotkey)
    TurnOffHotkey(partyInviteHotkey)
    TurnOffHotkey(partyKickHotkey)
    TurnOffHotkey(openPortalHotkey)
    TurnOffHotkey(smokeMineHotkey)
    TurnOffHotkey(seqSkillsHotkey)
}

TurnOnAllHotkey(){
    TurnOnHotkey(setOfFlasksHotkey, "SetOfFlasksLabel")
    TurnOnHotkey(autoLifeFlaskHotkey, "AutoLifeFlaskLabel")
    TurnOnHotkey(autoLootingHotkey, "LootAllLabel")
    TurnOnHotkey(lootOneItemHotkey, "LootOneItem")
    TurnOnHotkey(AutoWalkHotkey, "HoldWalkLabel")
    TurnOnHotkey(gameLogoutHotkey, "GameLogoutLabel")
    TurnOnHotkey(hideoutHotkey, "HideoutLabel")
    TurnOnHotkey(partyInviteHotkey, "PartyInviteLabel")
    TurnOnHotkey(partyKickHotkey, "PartyKickLabel")
    TurnOnHotkey(openPortalHotkey, "OpenPortalLabel")
    TurnOnHotkey(smokeMineHotkey, "SmokeMineLabel")
    TurnOnHotkey(seqSkillsHotkey, "SequenceOfSkillsLabel")
}

TurnOffHotkey(key){
    if %key%{
        Hotkey, %key%, Off
    }
    return
}

TurnOnHotkey(key, label){
    if key{
        Hotkey, %key%, %label%, On
    }
    else{
        ;Msgbox, %key%
    }
    return
}