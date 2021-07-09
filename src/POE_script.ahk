#Include functions.ahk
#Include rw_settings.ahk
#Include gui.ahk

; #IfWinActive, Path of Exile ahk_class POEWindowClass
#SingleInstance force  ; Replaces the old instance of script automatically
#NoEnv  ; Recommended for performance
#Persistent  ; Keeps a script permanently running
#MaxThreadsPerHotkey 2

SetDefaultMouseSpeed, 0          ; Sets the mouse speed, 0 - instantly

; Importing bool status of functions:
global set_of_flasks_active
global smoke_mine_active
global auto_looting_active
global loot_one_item_active
global auto_walk_active
global open_portal_active
global game_logout_active
global hideout_active
global party_invite_active
global party_kick_active
global seq_skills_active
global auto_l_flask_active
global auto_logout_active

; Importing hotkeys of functions:
global setOfFlasksHotkey
global smokeMineHotkey
global autoLootingHotkey
global lootOneItemHotkey
global AutoWalkHotkey
global openPortalHotkey
global gameLogoutHotkey
global hideoutHotkey
global partyInviteHotkey
global partyKickHotkey
global seqSkillsHotkey
global autoLifeFlaskHotkey
global autoLogoutHotkey

; Just variables:
global lootColor                   ; border loot icon color 
global loot_dalay                  ; delay between looting
global portalX
global portalY
global flask_key_set               ; flasks and skills sequence
global flask_key_set1              ; second sequence if need
global mine_laying_time            ; delay between throw mine and detonate them
global seq_castspeed_time          ; delay between cast rmb skill and cast q skill
global low_life_X                  ; auto flask variables start
global low_life_Y
global life_color
global low_life_flask_list
global logout_X                    ; auto logout variables start
global logout_Y
global logout_life_color
global black_screen

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
; Hotkey, %auto_logout_active%, AutoLogoutLabel

RunGUI()
;-----------------------------------------------------------------------------

!z::GetMouseColorPos()             ; Alt+z get pixel coords and color at mouse pos.

SetOfFlasksLabel:                  ; Pressing set of flasks and skills. 
    if set_of_flasks_active{
        SetOfFlasks(flask_key_set)
    }
    else{
        Send, %setOfFlasksHotkey%
    }
    return   

AutoLifeFlaskLabel:                ; Auto life flask. Cannot work at the same
    if auto_l_flask_active{        ;                     time with AutoLogout.
        Activate_AutoLifeFlask()
    }
    else{
        Send, %autoLifeFlaskHotkey%
    }
    return

SmokeMineLabel:                    ; Throwing and activating Smoke mine.
    if smoke_mine_active{
        SmokeMine()
    }
    else{
        Send, %smokeMineHotkey%
    }
    return 

LootOneItem:                       ; Loot one item.
    if loot_one_item_active{                         
        if !LootSmallRegion(){
            LootBigRegion()
        }
    }
    else{
        Send, %lootOneItemHotkey%
    }
    return

LootAllLabel:                      ; Hold to keep looting.
    if auto_looting_active{
        LootAll()
    }
    else{
        Send, %autoLootingHotkey%
    }
    return
                  
HoldWalkLabel:                     ; Toggle walk (like hold lmb to walk).
    if auto_walk_active{
        HoldWalk()
    }
    else{
        Send, %AutoWalkHotkey%
    }
    return

OpenPortalLabel:                   ; Use portal scroll 
    if open_portal_active{
        OpenPortal()
    }
    else{
        Send, %openPortalHotkey%
    }
    return

GameLogoutLabel:                   ; `- Logout, SC029 is Tilda's id.
    if game_logout_active{
        GameLogout()
    }
    else{
        Send, %gameLogoutHotkey%
    }
    return 

AutoLogoutLabel:                   ; AutoLogout. Cannot work at the same time
    if auto_logout_active{         ;                       with AutoLifeFlask.
        Activate_AutoLogout()
    }
    else{
        Send, %autoLogoutHotkey%
    }
    return 

HideoutLabel:                      ; Hideout.
    if hideout_active{
        Hideout()
    }
    else{
        Send, %hideoutHotkey%
    }
    return 

PartyInviteLabel:                  ; Invite to party by last received player message.
    if party_invite_active{
        PartyInvite()
    }
    else{
        Send, %partyInviteHotkey%
    }
    return 

PartyKickLabel:                    ; Kick from party by last received player message.
    if hideout_active{
        PartyKick()
    }
    else{
        Send, %hideoutHotkey%
    }
    return

SequenceOfSkillsLabel:             ; Cremation delay Desecrate, BF delay BB and etc.
    if seq_skills_active{
        SequenceOfSkills()
    }
    else{
        Send, %seqSkillsHotkey%
    }
    return

RCtrl::reload                      ; Hotkeys for script handling.
Pause:: pause                      ; ^
$F2:: suspend                      ; ^
