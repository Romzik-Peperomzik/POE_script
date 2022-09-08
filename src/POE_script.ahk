#Include functions.ahk
#Include rw_settings.ahk
#Include gui.ahk
#Include delirium_afk.ahk

#IfWinActive, Path of Exile ahk_class POEWindowClass
#SingleInstance force  ; Replaces the old instance of script automatically
#NoEnv  ; Recommended for performance
#Persistent  ; Keeps a script permanently running
#MaxThreadsPerHotkey 2

SetDefaultMouseSpeed, 0          ; Sets the mouse speed, 0 - instantly

; Hotkeys
global setOfFlasksHotkey
global autoLifeFlaskHotkey
global autoLootingHotkey
global lootOneItemHotkey
global AutoWalkHotkey
global openPortalHotkey
global hideoutHotkey
global partyInviteHotkey
global seqSkillsHotkey
global smokeMineHotkey
global gameLogoutHotkey
global autoLogoutHotkey
global partyKickHotkey
; Toggles
global auto_l_flask_toggle
global do_delirious_toggle
global deli_sub_toggle
global door_searcher_toggle
global gwen_roll_toggle
global currency_click_toggle
global alch_scour_rolling_toggle
global auto_logout_toggle
global auto_rolling_toggle
; Activators
global auto_looting_active
global loot_one_item_active
global set_of_flasks_active
global auto_l_flask_active
global auto_walk_active
global open_portal_active
global hideout_active
global party_invite_active
global party_kick_active
global seq_skills_active
global smoke_mine_active
global game_logout_active
global auto_logout_active
; Key lists
global flask_key_set
global low_life_flask_list
global seq_second_skill
global detonate_button
global smoke_mine_button
; Colors
global life_color
global logout_life_color
global lootColor
global black_screen
; Delays
global loot_delay
global seq_castspeed_time
global mine_laying_time
; Any coords
global low_life_X
global low_life_Y
global portalX
global portalY
global logout_X
global logout_Y
global black_screen_X
global black_screen_Y
global cells_coord_list


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
Hotkey, %autoLifeFlaskHotkey%, AutoLifeFlaskLabel
Hotkey, %autoLogoutHotkey%, AutoLogoutLabel

RunGUI()
;-----------------------------------------------------------------------------


;-----------------------------------------------------------------------------
; Functions that are not represented into GUI, only hotkeys.
; ! - alt, ^ - ctrl, + - shift.

!x::CleanInventory(cells_coord_list)  ; Alt+X  Clean inventory except portal and wisdom scroll. 
^g::ClickLoop()                       ; Ctrl+G Hold to autograb currency from currency tab.
^j::AutoRolling()                     ; Ctrl+J Press once to keep rolling loop up.
^n::CardOpener()                      ; Ctrl+N Spread stacked deck at one card and open it.
^+d::DoorSearcherToggle()             ; Ctrl+Shift+D Search door label and click on it.
^h::CurrencyClickLoop()               ; Ctrl+H Hold currency on cursor and click on item.
!g::AutoAlchScourRolling()            ; Alt+G roll item with alch and scouring sequence.
; F1::Invite()
; !f::DoDelirious()                     ; Alt+F  Run delirium script.
; !w::GwenRollToggle()                  ; Alt+W Gwennen interface roll.
;-----------------------------------------------------------------------------

!z::GetMouseColorPos()                ; Alt+Z  Get pixel coords and color at mouse pos.


SetOfFlasksLabel:                  ; Pressing set of flasks and skills. 
    if set_of_flasks_active{
        Hotkey, %setOfFlasksHotkey%, On
        SetOfFlasks(flask_key_set)
    } 
    else{
        Hotkey, %setOfFlasksHotkey%, Off
        Send, %setOfFlasksHotkey%
    }
return


AutoLifeFlaskLabel:                ; Auto life flask. Cannot work at the same
    if auto_l_flask_active{        ;                     time with AutoLogout.
        Hotkey, %autoLifeFlaskHotkey%, On
        Activate_AutoLifeFlask()
    }
    else{
        Hotkey, %autoLifeFlaskHotkey%, Off
        Send, %autoLifeFlaskHotkey%
    }
    return


SmokeMineLabel:                    ; Throwing and activating Smoke mine.
    if smoke_mine_active{
        Hotkey, %smokeMineHotkey%, On
        SmokeMine()
    }
    else{
        Hotkey, %smokeMineHotkey%, Off
        Send, %smokeMineHotkey%
    }
    return 


LootOneItem:                       ; Loot one item.
    if loot_one_item_active{
        Hotkey, %lootOneItemHotkey%, On
        LootSmallRegion()
        /*
        if !LootSmallRegion(){
            LootBigRegion()
        }
        */
    }
    else{
        Hotkey, %lootOneItemHotkey%, Off
        Send, %lootOneItemHotkey%
    }
    return


LootAllLabel:                      ; Hold to keep looting.
    if auto_looting_active{
        Hotkey, %autoLootingHotkey%, On
        LootAll()
    }
    else{
        Hotkey, %autoLootingHotkey%, Off
        Send, %autoLootingHotkey%
    }
    return


HoldWalkLabel:                     ; Toggle walk (like hold lmb to walk).
    if auto_walk_active{
        Hotkey, %AutoWalkHotkey%, On
        HoldWalk()
    }
    else{
        Hotkey, %AutoWalkHotkey%, Off
        Send, %AutoWalkHotkey%
    }
    return


OpenPortalLabel:                   ; Use portal scroll 
    if open_portal_active{
        Hotkey, %openPortalHotkey%, On
        OpenPortal()
    }
    else{
        Hotkey, %openPortalHotkey%, Off
        Send, %openPortalHotkey%
    }
    return


GameLogoutLabel:                   ; `- Logout, SC029 is Tilda's id.
    if game_logout_active{
        Hotkey, %gameLogoutHotkey%, On
        GameLogout()
    }
    else{
        Hotkey, %gameLogoutHotkey%, Off
        Send, %gameLogoutHotkey%
    }
    return 


AutoLogoutLabel:                   ; AutoLogout. Cannot work at the same time
    if auto_logout_active{         ;                       with AutoLifeFlask.
        Hotkey, %autoLogoutHotkey%, On
        Activate_AutoLogout()
    }
    else{
        Hotkey, %autoLogoutHotkey%, Off
        Send, %autoLogoutHotkey%
    }
    return 


HideoutLabel:                      ; Hideout.
    if hideout_active{
        Hotkey, %hideoutHotkey%, On
        Hideout()
    }
    else{
        Hotkey, %hideoutHotkey%, Off
        Send, %hideoutHotkey%
    }
    return 


PartyInviteLabel:                  ; Invite to party by last received player message.
    if party_invite_active{
        Hotkey, %partyInviteHotkey%, On
        PartyInvite()
    }
    else{
        Hotkey, %partyInviteHotkey%, Off
        Send, %partyInviteHotkey%
    }
    return 


PartyKickLabel:                    ; Kick from party by last received player message.
    if hideout_active{
        Hotkey, %hideoutHotkey%, On
        PartyKick()
    }
    else{
        Hotkey, %hideoutHotkey%, Off
        Send, %hideoutHotkey%
    }
    return


SequenceOfSkillsLabel:             ; Cremation delay Desecrate, BF delay BB and etc.
    if seq_skills_active{
        Hotkey, %seqSkillsHotkey%, On
        SequenceOfSkills()
    }
    else{
        Hotkey, %seqSkillsHotkey%, Off
        Send, %seqSkillsHotkey%
    }
    return


RCtrl::reload                      ; Hotkeys for script handling.
Pause:: pause                      ; ^
$F2:: suspend                      ; ^
