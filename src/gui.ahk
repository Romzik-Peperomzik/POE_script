RunGUI(){

global
Gui, Font, norm,
Gui, Add, Edit, x252 y20 w0 h0 , 123 ; dummy edit to avoid a mysterious bug


Gui, Font, S9 CDefault Bold, Verdana
Gui, Add, GroupBox, x32 y59 w420 h120 , Set of Flasks
Gui, Font, norm, 

Gui, Add, Text, x42 y89 w175 h20 , Flasks and skills hotkey:
Gui, Add, Hotkey, x210 y89 w60 h20 vsetOfFlasksHotkey, %setOfFlasksHotkey%

Gui, Add, Text, x42 y119 w150 h20 , Set of flasks and skills:
Gui, Add, Edit, x210 y119 w120 h20 vflask_key_set, %flask_key_set%

Gui, Font, S8 CDefault, Verdana
Gui, Add, Text, x42 y149 w300 h20 , To make sequence, separate keys by '-', a-b-c.





Gui, Font, S9 CDefault Bold, Verdana
Gui, Add, GroupBox, x32 y199 w240 h160 , Auto Life Flask
Gui, Font, norm, 
Gui, Add, Text, x112 y219 w100 h20 , to turn on /off,
Gui, Add, Text, x92 y239 w30 h20 , X:
Gui, Add, Text, x92 y269 w30 h20 , Y:
Gui, Add, Text, x72 y299 w40 h20 , color:
Gui, Add, Text, x42 y329 w30 h20 , list:
Gui, Add, Edit, x122 y239 w110 h20 vlow_life_X, %low_life_X%
Gui, Add, Edit, x122 y269 w110 h20 vlow_life_Y, %low_life_Y%
Gui, Add, Edit, x122 y299 w110 h20 vlife_color, %life_color%
Gui, Add, Edit, x82 y329 w150 h20 vlow_life_flask_list, %low_life_flask_list%
Gui, Font, S9 CDefault Bold, Verdana
Gui, Add, GroupBox, x32 y369 w240 h140 , Auto Loot
Gui, Add, Text, x40 y420 w80 h20 , A
Gui, Add, Text, x40 y450 w80 h20 , Ctrl + A
Gui, Font, norm, 
Gui, Add, Text, x42 y389 w70 h20 , loot color:
Gui, Add, Edit, x112 y389 w100 h20 vlootColor, %lootColor%
Gui, Add, Text, x112 y419 w100 h20 , to quick loot
Gui, Add, Text, x112 y449 w130 h20 , hold to keep looting
Gui, Add, Text, x340 y450 w170 h-10 , (ms)
Gui, Add, Edit, x112 y479 w110 h20 vloot_dalay, %loot_dalay%
Gui, Add, Text, x42 y479 w40 h20 , delay:
Gui, Add, Text, x232 y479 w30 h20 , (ms)


Gui, Font, S9 CDefault Bold, Verdana
Gui, Add, GroupBox, x292 y199 w300 h310 , Misc
Gui, Font, norm, 
Gui, Add, Text, x302 y219 w190 h20 , Get Pixel Color and Coords:
Gui, Add, Text, x302 y249 w120 h20 , Suspend Hotkeys:
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
Gui, Add, CheckBox, x552 y339 w35 h20 Checked%auto_walk_active%  vauto_walk_active

Gui, Add, Text, x302 y369 w130 h20 , Game Logout
Gui, Add, Edit, x482 y369 w60 h20 vgameLogoutHotkey, %gameLogoutHotkey%
Gui, Add, CheckBox, x552 y369 w35 h20 Checked%game_logout_active% vgame_logout_active

Gui, Add, Text, x302 y399 w90 h20 , Go to Hideout
Gui, Add, Hotkey, x482 y399 w60 h20 vhideoutHotkey, %hideoutHotkey%
Gui, Add, CheckBox, x552 y399 w35 h20 Checked%hideout_active% vhideout_active

Gui, Add, Text, x302 y429 w220 h20 , Invite to Party by Last Msg
Gui, Add, Hotkey, x482 y429 w60 h20 vpartyInviteHotkey, %partyInviteHotkey%
Gui, Add, CheckBox, x552 y429 w35 h20 Checked%party_invite_active% vparty_invite_active

Gui, Add, Text, x302 y459 w220 h20 , Kick from Party by Last Msg
Gui, Add, Hotkey, x482 y459 w60 h20 vpartyKickHotkey, %partyKickHotkey%
Gui, Add, CheckBox, x552 y459 w35 h20 Checked%party_kick_active% vparty_kick_active 


Gui, Font, norm, 

Gui, Add, Text, x472 y149 w170 h20 , Smoke Mine -> Detonate
Gui, Add, Edit, x112 y549 w110 h20 , %life_color%
Gui, Add, Edit, x62 y669 w110 h20 , %life_color%
Gui, Add, GroupBox, x32 y519 w230 h190 , Open Portal
Gui, Add, Edit, x62 y589 w110 h20 , %life_color%
Gui, Add, Edit, x62 y629 w110 h20 , %life_color%
Gui, Add, Text, x42 y589 w20 h20 , X:
Gui, Add, Text, x42 y629 w20 h20 , Y:
Gui, Add, Edit, x472 y79 w110 h20 , %life_color%
Gui, Add, Edit, x642 y79 w110 h20 , %life_color%
Gui, Add, Edit, x472 y119 w110 h20 , %life_color%
Gui, Add, Edit, x642 y119 w110 h20 , %life_color%
Gui, Add, GroupBox, x462 y59 w310 h120 , Abilities sequences
Gui, Add, GroupBox, x782 y59 w300 h90 , Auto Logout
Gui, Add, Button, x862 y569 w100 h30 , Apply change
; Generated using SmartGUI Creator 4.0
Gui, Show, x285 y119 h719 w1195, New GUI Window
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
    TurnOffHotkey(AutoWalkHotkey)
    TurnOffHotkey(gameLogoutHotkey)
    TurnOffHotkey(hideoutHotkey)
    TurnOffHotkey(partyInviteHotkey)
    TurnOffHotkey(partyKickHotkey)
    TurnOffHotkey(setOfFlasksHotkey)
    ;TurnOffHotkey(quickFlasksHotkey1)
}

TurnOnAllHotkey(){
    TurnOnHotkey(setOfFlasksHotkey, "SetOfFlasksLabel")
    TurnOnHotkey(AutoWalkHotkey, "HoldWalkLabel")
    TurnOnHotkey(gameLogoutHotkey, "GameLogoutLabel")
    TurnOnHotkey(hideoutHotkey, "HideoutLabel")
    TurnOnHotkey(partyInviteHotkey, "PartyInviteLabel")
    TurnOnHotkey(partyKickHotkey, "PartyKickLabel")
    TurnOnHotkey(setOfFlasksHotkey, "SetOfFlasksLabel")
    ;TurnOnHotkey(quickFlasksHotkey0, "QuickFlaskLabel0")
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