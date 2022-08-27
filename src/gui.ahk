RunGUI(){

global
Gui, Font, norm, 
Gui, Add, Edit, x1 y1 w0 h0 , 123 ; dummy edit to avoid a mysterious bug

; How to use 
Gui, Font, S9 CDefault Bold, Verdana
Gui, Add, GroupBox, x32 y4 w840 h70 , How to use script
Gui, Font, S8 norm, Verdana
Gui, Add, Text, x42 y23 w820 h15 , Choose and checkbox hotkeys functions whichever u need. If u want to change hotkey, click to field and tap at key or combination keys.
Gui, Add, Text, x42 y38 w820 h15 , ATTENTION, Auto Logout and Auto Life Flask work only windowed game mode.
Gui, Add, Text, x42 y53 w820 h15 , IF U NEED TO CHATTING OR JUST WANT TO PAUSE UR HOTKEYS PRESS F2 AND ALL HOTKEYS WILL BE BLOCKED.

; Set of Flasks
Gui, Font, S9 CDefault Bold, Verdana
Gui, Add, GroupBox, x32 y79 w420 h110 , Set of Flasks
Gui, Font, norm, Verdana
Gui, Add, Text, x42 y99 w170 h20 , Flasks and skills hotkey:
Gui, Add, Hotkey, x212 y99 w60 h20 vsetOfFlasksHotkey, %setOfFlasksHotkey%
Gui, Add, CheckBox, x282 y99 w30 h20 Checked%set_of_flasks_active% vset_of_flasks_active, 
Gui, Add, Text, x42 y129 w150 h20 , Set of flasks and skills:
Gui, Add, Edit, x212 y129 w120 h20 vflask_key_set, %flask_key_set%

Gui, Font, S7 CDefault, Verdana
Gui, Add, Text, x42 y153 w260 h13 , To make sequence, separate keys by -, 1-2-q-w-e
Gui, Add, Text, x42 y169 w400 h13 , For Shift, Alt or Ctrl key combination use: Shift +s, Alt !s, Ctrl ^s:    +q-!w-^e

; Auto Life Flask
Gui, Font, S9 CDefault Bold, Verdana
Gui, Add, GroupBox, x32 y199 w240 h160 , Auto Life Flask
Gui, Font, norm, Verdana
Gui, Add, Text, x42 y249 w20 h20 , X:
Gui, Add, Edit, x62 y249 w47 h20 vlow_life_X, %low_life_X%
Gui, Add, Text, x142 y249 w10 h20 , Y:
Gui, Add, Edit, x162 y249 w47 h20 vlow_life_Y, %low_life_Y%
Gui, Add, Text, x42 y279 w100 h20 , X, Y pixel color:
Gui, Add, Edit, x162 y279 w77 h20 vlife_color, %life_color%
Gui, Add, Text, x42 y309 w100 h20 , list of keys:
Gui, Add, Edit, x162 y309 w40 h20 vlow_life_flask_list, %low_life_flask_list%
Gui, Add, Text, x42 y219 w110 h20 , Toggle AutoLF:
Gui, Add, Hotkey, x162 y219 w60 h20 vautoLifeFlaskHotkey, %autoLifeFlaskHotkey%
Gui, Add, CheckBox, x232 y219 w30 h20 Checked%auto_l_flask_active% vauto_l_flask_active, 

Gui, Font, S7 CDefault, Verdana
Gui, Add, Text, x36 y339 w235 h15 , To make sequence, separate keys by -, 1-2-3

; Auto Loot
Gui, Font, S9 CDefault Bold, Verdana
Gui, Add, GroupBox, x32 y369 w240 h140 , Auto Loot
Gui, Font, norm, Verdana
Gui, Add, Text, x42 y449 w120 h20 , Border loot color:
Gui, Add, Edit, x162 y449 w77 h20 vlootColor, %lootColor%
Gui, Add, Text, x42 y389 w80 h20 , Loot 1 item
Gui, Add, Hotkey, x162 y389 w60 h20 vlootOneItemHotkey, %lootOneItemHotkey%
Gui, Add, CheckBox, x232 y389 w30 h20 Checked%loot_one_item_active% vloot_one_item_active, 
Gui, Add, Text, x42 y419 w120 h20 , Loot all (hold key)
Gui, Add, Hotkey, x162 y419 w60 h20 vautoLootingHotkey, %autoLootingHotkey%
Gui, Add, CheckBox, x232 y419 w30 h20 Checked%auto_looting_active% vauto_looting_active, 
Gui, Add, Edit, x162 y479 w40 h20 vloot_delay, %loot_delay%
Gui, Add, Text, x42 y479 w75 h20 , delay (ms):

; Misc
Gui, Font, S9 CDefault Bold, Verdana
Gui, Add, GroupBox, x292 y199 w300 h310 , Misc
Gui, Font, norm, Verdana
Gui, Add, Text, x302 y219 w190 h20 , Get Pixel Color and Coords:
Gui, Add, Text, x302 y249 w160 h20 , Suspend Hotkeys Bind:
Gui, Add, Text, x302 y279 w110 h20 , Reload script:
;Gui, Add, Text, x302 y309 w120 h20 , Pause script:

Gui, Font, S9 CDefault Bold, Verdana
Gui, Add, Text, x482 y219 w50 h20 , Alt + Z
Gui, Add, Text, x482 y249 w20 h20 , F2
Gui, Add, Text, x482 y279 w40 h20 , RCtrl
;Gui, Add, Text, x482 y309 w40 h20 , Pause

Gui, Font, norm, Verdana
Gui, Add, Text, x302 y309 w150 h20 , Auto Walk (lmb hold)
Gui, Add, Hotkey, x482 y309 w60 h20 vAutoWalkHotkey, %AutoWalkHotkey%
Gui, Add, CheckBox, x552 y309 w35 h20 Checked%auto_walk_active% vauto_walk_active,
Gui, Add, Text, x302 y339 w90 h20 , Go to Hideout
Gui, Add, Hotkey, x482 y339 w60 h20 vhideoutHotkey, %hideoutHotkey%
Gui, Add, CheckBox, x552 y339 w35 h20 Checked%hideout_active% vhideout_active, 
Gui, Add, Text, x302 y369 w220 h20 , Invite to Party by Last Msg
Gui, Add, Hotkey, x482 y369 w60 h20 vpartyInviteHotkey, %partyInviteHotkey%
Gui, Add, CheckBox, x552 y369 w35 h20 Checked%party_invite_active% vparty_invite_active, 
Gui, Add, Text, x302 y399 w220 h20 , Kick from Party by Last Msg
Gui, Add, Hotkey, x482 y399 w60 h20 vpartyKickHotkey, %partyKickHotkey%
Gui, Add, CheckBox, x552 y399 w35 h20 Checked%party_kick_active% vparty_kick_active, 
Gui, Add, Text, x302 y429 w130 h20 , Game Logout
Gui, Add, Edit, x482 y429 w52 h20 vgameLogoutHotkey, %gameLogoutHotkey%
Gui, Add, CheckBox, x552 y429 w35 h20 Checked%game_logout_active% vgame_logout_active, 

Gui, Font, S8 CDefault, Verdana
Gui, Add, Text, x302 y449 w288 h13 , If u want quick logout at `` key, try to enter ``
Gui, Add, Text, x302 y462 w288 h13 , key at the field or if it's not work, use KeyHooker
Gui, Add, Text, x302 y475 w288 h13 , to identify id of `` key on ur keyboard and put it id
Gui, Add, Text, x302 y488 w288 h13 , at the field below instead of `` key.

; Open Portal
Gui, Font, S9 CDefault Bold, Verdana
Gui, Add, GroupBox, x472 y79 w400 h110 , Open Portal
Gui, Font, norm, Verdana
Gui, Add, Text, x482 y99 w60 h20 , Quick TP
Gui, Add, Hotkey, x562 y99 w60 h20 vopenPortalHotkey, %openPortalHotkey%
Gui, Add, CheckBox, x632 y99 w20 h20 Checked%open_portal_active% vopen_portal_active, 
Gui, Add, Text, x482 y129 w20 h20 , X:
Gui, Add, Edit, x562 y129 w50 h20 vportalX, %portalX%
Gui, Add, Text, x482 y159 w10 h20 , Y:
Gui, Add, Edit, x562 y159 w50 h20 vportalY, %portalY%

Gui, Font, S8 CDefault, Verdana
Gui, Add, Text, x682 y110 w180 h13 , Get a portal scroll coords from
Gui, Add, Text, x675 y126 w190 h13 , your inventory, point coursor at
Gui, Add, Text, x632 y142 w230 h13 , a portal scroll and press Alt + Z hotkey.
Gui, Add, Text, x677 y159 w190 h15 , Put X and Y coords at edit form.

; Abilities sequences
Gui, Font, S9 CDefault Bold, Verdana
Gui, Add, GroupBox, x612 y199 w260 h510 , Abilities sequences
Gui, Font, S8 CDefault Bold, Verdana
Gui, Add, Text, x622 y229 w170 h20 , Smoke mine -> Detonate
Gui, Font, S7 norm CDefault, Verdana
Gui, Add, Text, x622 y249 w230 h12 , Put Smoke and Detonate mine keys from
Gui, Add, Text, x622 y269 w230 h12 , game at form below. It should be same
Gui, Add, Text, x622 y289 w110 h20 , keys as at skill panel.
Gui, Add, Text, x622 y389 w240 h20 , And choose hotkey to activate r -> d sequence.

Gui, Font, S9 norm, Verdana
Gui, Add, Text, x622 y329 w110 h20 , Smoke mine key:
Gui, Add, Edit, x772 y329 w40 h20 vsmoke_mine_button, %smoke_mine_button%
Gui, Add, Text, x622 y359 w150 h20 , Detonate mine key:
Gui, Add, Edit, x772 y359 w40 h20 vdetonate_button, %detonate_button%
Gui, Add, Text, x622 y409 w120 h20 , Quick Smoke mine
Gui, Add, Hotkey, x772 y409 w60 h20 vsmokeMineHotkey, %smokeMineHotkey%
Gui, Add, CheckBox, x842 y409 w20 h20 Checked%smoke_mine_active% vsmoke_mine_active, 
Gui, Add, Text, x622 y434 w150 h14 , Smoke mine laying
Gui, Add, Text, x682 y449 w150 h14 , time(ms):
Gui, Add, Edit, x772 y439 w40 h20 vmine_laying_time, %mine_laying_time%

Gui, Add, Text, x622 y579 w150 h20 , First key skill (trigger)
Gui, Add, Hotkey, x772 y579 w60 h20 vseqSkillsHotkey, %seqSkillsHotkey%
Gui, Add, CheckBox, x842 y579 w20 h20 Checked%seq_skills_active% vseq_skills_active, 
Gui, Add, Text, x622 y609 w120 h20 , Second key skill
Gui, Add, Edit, x772 y609 w60 h20 vseq_second_skill, %seq_second_skill%
Gui, Add, Text, x622 y639 w180 h20 , Delay between skills (ms):
Gui, Add, Edit, x792 y639 w40 h20 vseq_castspeed_time, %seq_castspeed_time%

Gui, Font, S8 CDefault Bold, Verdana
Gui, Add, Text, x622 y479 w180 h20 , 1 key -> 2 skills sequence
Gui, Font, S7 CDefault norm, Verdana
Gui, Add, Text, x622 y499 w240 h12 , For example put Desecrate at RMB key in game
Gui, Add, Text, x622 y519 w230 h12 , and Cremation at q key then put cast speed
Gui, Add, Text, x622 y539 w220 h12 , time of Desecrate skill from in game tooltip.
Gui, Add, Text, x622 y669 w230 h12 , Put cast time value from in game tooltip here.

; Auto Logout
Gui, Font, S9 CDefault Bold, Verdana
Gui, Add, GroupBox, x32 y519 w560 h240 , Auto Logout
Gui, Font, norm, Verdana
Gui, Add, Text, x42 y549 w70 h20 , Toggle AL:
Gui, Add, Hotkey, x162 y549 w60 h20 vautoLogoutHotkey, %autoLogoutHotkey%
Gui, Add, CheckBox, x232 y549 w20 h20 Checked%auto_logout_active% vauto_logout_active, 
Gui, Add, Text, x42 y579 w20 h20 , X:
Gui, Add, Edit, x62 y579 w50 h20 vlogout_X, %logout_X%
Gui, Add, Text, x142 y579 w10 h20 , Y:
Gui, Add, Edit, x162 y579 w50 h20 vlogout_Y, %logout_Y%
Gui, Add, Text, x42 y609 w150 h20 , Pixel Life/ES color:
Gui, Add, Edit, x162 y609 w77 h20 vlogout_life_color, %logout_life_color%

Gui, Font, S9 CDefault Bold, Verdana
Gui, Add, Text, x428 y539 w153 h20 , How to use autologout:
Gui, Font, S8 CDefault norm, Verdana
Gui, Add, Text, x352 y559 w235 h15 , Get pixel coords and color by use Alt+Z.
Gui, Add, Text, x408 y579 w180 h20 , Choose visual point on life orb
Gui, Add, Text, x354 y599 w235 h20 , where autologout should been triggered.
Gui, Add, Text, x385 y639 w203 h20 , If ur build HP based, pick red pixel.
Gui, Add, Text, x379 y619 w208 h20 , If ur build ES based, pick blue pixel.
Gui, Add, Text, x367 y659 w220 h14 , If ur build low life ES based, pick blue
Gui, Add, Text, x376 y679 w210 h20 , pixel from edge of orb, but not gray!
Gui, Add, Text, x42 y719 w210 h20 , When u toggle logout hotkey u'll see
Gui, Add, Text, x42 y734 w280 h13 , notice that it's activated (works only windowed).

Gui, Font, S8 CDefault bold, Verdana
Gui, Add, Text, x42 y649 w290 h20 , Every time if u changes any logout params,
Gui, Add, Text, x42 y669 w260 h20 , check autologout in ur hideout by using
Gui, Add, Text, x42 y689 w320 h20 , Righteous fire or Blood rage to imitate life leak.

Gui, Font, norm, Verdana
Gui, Add, Button, x772 y729 w100 h30 , Apply change
; Generated using SmartGUI Creator 4.0
Gui, Show, x285 y119 h778 w908, Script
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
