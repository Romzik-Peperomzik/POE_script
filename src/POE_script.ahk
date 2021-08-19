#Include functions.ahk
#Include rw_settings.ahk
#Include gui.ahk

;#IfWinActive, Path of Exile ahk_class POEWindowClass
#SingleInstance force  ; Replaces the old instance of script automatically
#NoEnv  ; Recommended for performance
#Persistent  ; Keeps a script permanently running
#MaxThreadsPerHotkey 2

SetDefaultMouseSpeed, 0          ; Sets the mouse speed, 0 - instantly

; Importing bool status of functions:
global set_of_flasks_active
global auto_l_flask_active
global auto_l_flask_toggle
global auto_looting_active
global loot_one_item_active
global auto_walk_active
global open_portal_active
global hideout_active
global party_invite_active
global party_kick_active
global seq_skills_active
global smoke_mine_active
global game_logout_active
global auto_logout_active
global auto_logout_toggle


; Importing hotkeys of functions:
global setOfFlasksHotkey
global autoLifeFlaskHotkey
global autoLootingHotkey
global lootOneItemHotkey
global AutoWalkHotkey
global openPortalHotkey
global hideoutHotkey
global partyInviteHotkey
global partyKickHotkey
global seqSkillsHotkey
global smokeMineHotkey
global gameLogoutHotkey
global autoLogoutHotkey


; Just variables:
global flask_key_set               ; flasks and skills sequence
global low_life_flask_list         ; list of flasks which would be used by Auto Life Flask function
global low_life_X                  
global low_life_Y
global life_color
global lootColor                   ; border loot icon color 
global loot_delay                  ; delay between looting
global portalX
global portalY
global seq_second_skill            ; second key which would be pressed at seqSkillsHotkey 
global seq_castspeed_time          ; delay between cast rmb skill and cast q skill
global detonate_button             ; detonate mine key from in game settings
global smoke_mine_button           ; smoke mine key from in game settings
global mine_laying_time            ; delay between throw mine and detonate them
global logout_X                    
global logout_Y
global logout_life_color
global black_screen
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

!z::GetMouseColorPos()                ; Alt+Z get pixel coords and color at mouse pos.
!x::CleanInventory(cells_coord_list)  ; Alt+X clean inventory except portal and wisdom scroll. 
^g::ClickLoop()                       ; Ctrl+G hold to autograb currency from currency tab.

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
