#Include functions.ahk
#Include rw_settings.ahk
#Include gui.ahk
#Include global_vars.ahk
#Include utils.ahk
#Include toggles.ahk
#Include rollers.ahk

#IfWinActive, Path of Exile ahk_class POEWindowClass
#SingleInstance force   ; Replaces the old instance of script automatically
#NoEnv                  ; Recommended for performance
#Persistent             ; Keeps a script permanently running
#MaxThreadsPerHotkey 2
SetDefaultMouseSpeed, 0 ; Sets the mouse speed, 0 - instantly


;-----------------------------------------------------------------------------
ReadSettings()
if (default_screen_mode) {
    ReadDefaultCoords()
} else {
    ReadWideCoords()
}

; Binding hotkeys to functions of callback
Hotkey, %setOfFlasksHotkey%, SetOfFlasksLabel
Hotkey, %autoLootingHotkey%, LootAllLabel 
Hotkey, %lootOneItemHotkey%, LootOneItem 
Hotkey, %holdWalkHotkey%, HoldWalkLabel 
Hotkey, %openPortalHotkey%, OpenPortalLabel 
Hotkey, %gameLogoutHotkey%, GameLogoutLabel 
Hotkey, %hideoutHotkey%, HideoutLabel
Hotkey, %partyInviteHotkey%, PartyInviteLabel
Hotkey, %partyKickHotkey%, PartyKickLabel 
Hotkey, %triggerSeqHotkey%, SequenceOfSkillsLabel 
Hotkey, %autoHealHotkey%, AutoHealLabel
Hotkey, %autoLogoutHotkey%, AutoLogoutLabel
Hotkey, %customChatCommandHotkey%, CustomChatCommandLabel
Hotkey, %flaskTimersHotkey%, FlaskTimersLabel
Hotkey, %updateHealTresholdHotkey%, UpdateHealTresholdLabel
Hotkey, %cleanInvHotkey%, CleanInventoryLabel
Hotkey, %deckOpenerHotkey%, DeckOpenerLabel
Hotkey, %clickRollerHotkey%, ClickRollerLabel
Hotkey, %scourRollerHotkey%, ScourRollerLabel
Hotkey, %gwenRollerHotkey%, GwenRollerLabel
Hotkey, %makeInvColorMapHotkey%, MakeInvColorMapLabel

; Prevents single any key tap blocking when script launched.
TurnOffAllHotkey()
TurnOnAllHotkey()

RunGUI()

;-----------------------------------------------------------------------------
; ! - alt, ^ - ctrl, + - shift.
; Functions that are not represented into GUI, only hotkeys.
!z::GetMouseColorPos()
^g::CtrlClickLoop()
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
    if (hold_walk_active) {
        Hotkey, %holdWalkHotkey%, On
        HoldWalk()
    } else {
        Hotkey, %holdWalkHotkey%, Off
        Send, %holdWalkHotkey%
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
        Hotkey, %triggerSeqHotkey%, On
        SequenceOfSkills()
    } else {
        Hotkey, %triggerSeqHotkey%, Off
        Send, %triggerSeqHotkey%
    }
    return


CustomChatCommandLabel:
    if (custom_chat_command_active) {
        Hotkey, %customChatCommandHotkey%, On
        CustomChatCommand()
    } else {
        Hotkey, %customChatCommandHotkey%, Off
        Send, %customChatCommandHotkey%
    }
    return


FlaskTimersLabel:
    if (flask_timers_key_active) {
        Hotkey, %flaskTimersHotkey%, On
        FlaskTimersToggle()
    } else {
        Hotkey, %flaskTimersHotkey%, Off
        Send, %flaskTimersHotkey%
    }
    return


UpdateHealTresholdLabel:
    if (update_heal_treshold_active) {
        Hotkey, %updateHealTresholdHotkey%, On
        UpdateHealTreshold()
    } else {
        Hotkey, %updateHealTresholdHotkey%, Off
        Send, %updateHealTresholdHotkey%
    }
    return


CleanInventoryLabel:
    if (clean_inv_key_active) {
        Hotkey, %cleanInvHotkey%, On
        CleanInventoryToggle()
    } else {
        Hotkey, %cleanInvHotkey%, Off
        Send, %cleanInvHotkey%
    }
    return


DeckOpenerLabel:
    if (deck_opener_key_active) {
        Hotkey, %deckOpenerHotkey%, On
        CardOpenerToggle()
    } else {
        Hotkey, %deckOpenerHotkey%, Off
        Send, %deckOpenerHotkey%
    }
    return


ClickRollerLabel:
    if (click_roller_key_active) {
        Hotkey, %clickRollerHotkey%, On
        ClickRollerToggle()
    } else {
        Hotkey, %clickRollerHotkey%, Off
        Send, %clickRollerHotkey%
    }
    return


ScourRollerLabel:
    if (scour_roller_key_active) {
        Hotkey, %scourRollerHotkey%, On
        ScourRollerToggle()
    } else {
        Hotkey, %scourRollerHotkey%, Off
        Send, %scourRollerHotkey%
    }
    return


GwenRollerLabel:
    if (gwen_roller_key_active) {
        Hotkey, %gwenRollerHotkey%, On
        GwenRollerToggle()
    } else {
        Hotkey, %gwenRollerHotkey%, Off
        Send, %gwenRollerHotkey%
    }
    return


MakeInvColorMapLabel:
    if (make_inv_color_map_key_active) {
        Hotkey, %makeInvColorMapHotkey%, On
        MakeInvColorMap()
    } else {
        Hotkey, %makeInvColorMapHotkey%, Off
        Send, %makeInvColorMapHotkey%
    }
    return


; Hotkeys for script handling.
RCtrl::reloadNsave()
Pause:: pause
$F2:: suspend


reloadNsave() {
    SaveSettings()
    if (default_screen_mode) {
        SaveDefaultCoords()
    } else {
        SaveWideSettings()
    }
    
    reload
}
