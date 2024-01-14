#Include functions.ahk
#Include rw_settings.ahk
#Include gui.ahk
#Include global_vars.ahk
#Include utils.ahk
#Include toggles.ahk
#Include rollers.ahk

; #IfWinActive, Path of Exile ahk_class POEWindowClass
#SingleInstance force   ; Replaces the old instance of script automatically
#NoEnv                  ; Recommended for performance
#Persistent             ; Keeps a script permanently running
#MaxThreadsPerHotkey 2
SetDefaultMouseSpeed, 0 ; Sets the mouse speed, 0 - instantly


;-----------------------------------------------------------------------------
ReadSettings()

; Binding hotkeys to functions of callback
Hotkey, %setOfFlasksHotkey%, SetOfFlasksLabel
Hotkey, %smokeMineHotkey%, SmokeMineLabel
Hotkey, %autoLootingHotkey%, LootAllLabel 
Hotkey, %lootOneItemHotkey%, LootOneItem 
Hotkey, %AutoWalkHotkey%, HoldWalkLabel 
Hotkey, %openPortalHotkey%, OpenPortalLabel 
Hotkey, %gameLogoutHotkey%, GameLogoutLabel 
Hotkey, %hideoutHotkey%, HideoutLabel
Hotkey, %partyInviteHotkey%, PartyInviteLabel
Hotkey, %partyKickHotkey%, PartyKickLabel 
Hotkey, %seqSkillsHotkey%, SequenceOfSkillsLabel 
Hotkey, %autoHealHotkey%, AutoHealLabel
Hotkey, %autoLogoutHotkey%, AutoLogoutLabel

RunGUI()

;-----------------------------------------------------------------------------
; Screen mode vars initialization.

if (default_screen_mode) {
    x_coords := inv_list_X_dflt
    y_coords := inv_list_Y_dflt
    exclude_coords := coords_exclude_dflt
} else if (wide_screen_mode) {
    x_coords := inv_list_X_wide
    y_coords := inv_list_Y_wide
    exclude_coords := coords_exclude_wide
}


; ! - alt, ^ - ctrl, + - shift.
; Functions that are not represented into GUI, only hotkeys.
!z::GetMouseColorPos()
!x::CleanInventory(x_coords, y_coords, exclude_coords)
^n::CardOpenerToggle()
^g::CtrlClickLoop()
^h::FuseJewellerClickLoop()
^j::AltChaosRolling()
!g::AlchBindScourRolling()
!c::AlchBindScourOnce()
F1::CustomChatCommand()
!e::GwenRoller()
^+F::UpdateHealTreshold()
^+s::ResetAllToggles()
; ^+d::DoorSearcherToggle()
;-----------------------------------------------------------------------------


SetOfFlasksLabel:
    if (set_of_flasks_active) {
        Hotkey, %setOfFlasksHotkey%, On
        SetOfFlasks()
    } else {
        Hotkey, %setOfFlasksHotkey%, Off
        Send, %setOfFlasksHotkey%
    }
    return


AutoHealLabel:
    if (auto_heal_active) {
        Hotkey, %autoHealHotkey%, On
        AutoHealToggle()
    } else {
        Hotkey, %autoHealHotkey%, Off
        Send, %autoHealHotkey%
    }
    return


SmokeMineLabel:
    if (smoke_mine_active) {
        Hotkey, %smokeMineHotkey%, On
        SmokeMine()
    } else {
        Hotkey, %smokeMineHotkey%, Off
        Send, %smokeMineHotkey%
    }
    return 


LootOneItem:
    if (loot_one_item_active) {
        Hotkey, %lootOneItemHotkey%, On
        LootSmallRegion()
        /*
        if !LootSmallRegion(){
            LootBigRegion()
        }
        */
    } else {
        Hotkey, %lootOneItemHotkey%, Off
        Send, %lootOneItemHotkey%
    }
    return


LootAllLabel:
    if (auto_looting_active) {
        Hotkey, %autoLootingHotkey%, On
        LootToggle()
    } else {
        Hotkey, %autoLootingHotkey%, Off
        Send, %autoLootingHotkey%
    }
    return


HoldWalkLabel:
    if (auto_walk_active) {
        Hotkey, %AutoWalkHotkey%, On
        HoldWalk()
    } else {
        Hotkey, %AutoWalkHotkey%, Off
        Send, %AutoWalkHotkey%
    }
    return


OpenPortalLabel:
    if (open_portal_active) {
        Hotkey, %openPortalHotkey%, On
        OpenPortal()
    } else {
        Hotkey, %openPortalHotkey%, Off
        Send, %openPortalHotkey%
    }
    return


GameLogoutLabel:
    if (game_logout_active) {
        Hotkey, %gameLogoutHotkey%, On
        GameLogout()
    } else {
        Hotkey, %gameLogoutHotkey%, Off
        Send, %gameLogoutHotkey%
    }
    return 


AutoLogoutLabel:
    if (auto_logout_active) {
        Hotkey, %autoLogoutHotkey%, On
        AutoLogoutToggle()
    } else {
        Hotkey, %autoLogoutHotkey%, Off
        Send, %autoLogoutHotkey%
    }
    return 


HideoutLabel:
    if (hideout_active) {
        Hotkey, %hideoutHotkey%, On
        Hideout()
    } else {
        Hotkey, %hideoutHotkey%, Off
        Send, %hideoutHotkey%
    }
    return 


PartyInviteLabel:
    if (party_invite_active) {
        Hotkey, %partyInviteHotkey%, On
        PartyInvite()
    } else {
        Hotkey, %partyInviteHotkey%, Off
        Send, %partyInviteHotkey%
    }
    return 


PartyKickLabel:
    if (party_kick_active) {
        Hotkey, %partyKickHotkey%, On
        PartyKick()
    } else {
        Hotkey, %partyKickHotkey%, Off
        Send, %partyKickHotkey%
    }
    return


SequenceOfSkillsLabel:
    if (seq_skills_active) {
        Hotkey, %seqSkillsHotkey%, On
        SequenceOfSkills()
    } else {
        Hotkey, %seqSkillsHotkey%, Off
        Send, %seqSkillsHotkey%
    }
    return


; Hotkeys for script handling.
RCtrl::reloadNsave()               
Pause:: pause
$F2:: suspend


reloadNsave() {
    SaveSettings()
    reload
}
