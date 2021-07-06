#Include functions.ahk
#Include rw_settings.ahk
;#Include gui.ahk


#IfWinActive, Path of Exile ahk_class POEWindowClass
#SingleInstance force  ; Replaces the old instance of script automatically
#NoEnv  ; Recommended for performance
#Persistent  ; Keeps a script permanently running
#MaxThreadsPerHotkey 2

SetDefaultMouseSpeed, 0          ; Sets the mouse speed, 0 - instantly

; Turn on/off hotkeys:
global set_of_flasks_active      ; Quick flasks.
global smoke_mine_active         ; Auto smoke mine.

; Hotkeys of functions:
global setOfFlasksHotkey         ; If u want to redefine key which activate flasks.
global smokeMineHotkey           ; If u want to redefine key which activate Smoke Mine.

; Just variables:
global lootColor                 ; border loot icon color 
global loot_dalay                ; delay between looting
global portalX
global portalY
global flask_key_set             ; flasks and skills sequence
global flask_key_set1            ; second sequence if need

; Auto life flask variables:
global low_life_X
global low_life_Y
global life_color
global low_life_flask_list
global auto_life_flask_active = False

; Auto logout variables:
global logout_X
global logout_Y
global logout_life_color
global auto_logout_active = False
global black_screen

;-----------------------------------------------------------------------------
ReadSettings()

Hotkey, %setOfFlasksHotkey%, SetOfFlasksLabel
Hotkey, %smokeMineHotkey%, AutoSmokeMine 

; And run gui?
;-----------------------------------------------------------------------------

!z::GetMouseColorPos()             ; Alt+z get pixel coords and color at mouse.

;~RButton::BFBB()                  ; RMB BF + BB.

;~RButton::CremationDesecrate()    ; RMB Cremation > Desecrate.

SetOfFlasksLabel:                   ; Pressing set of flasks and skills. 
    if set_of_flasks_active{
        SetOfFlasks(flask_key_set)
    }
    else{
        Send, %setOfFlasksHotkey%
    }
    return   

AutoSmokeMine:                     ; Pressing and activating Smoke mine.
    if smoke_mine_active{
        SmokeMine()
    }
    else{
        Send, %smokeMineHotkey%
    }
    return 

s::                                ; s key - Loot one item.
    if !LootSmallRegion(){
        LootBigRegion()
    }
    return

^s::LootAll()                      ; Ctrl+s hold to keep looting.

^d::HoldWalk()                     ; Ctrl+d Toggle walk (like hold lmb to walk).

^f::Activate_AutoLifeFlask()       ; Ctrl+f AutoLifeFlask.

$F3::Activate_AutoLogout()         ; F3 AutoLogout. Cannot work at the same time with AutoLifeFlask.

SC029::GameLogout()                ; `- Logout, SC029 is Tilda's id.

v::OpenPortal()                    ; v key use portal scroll 

$F5::Hideout()                     ; F5 Hideout.

$F6::PartyInvite()                 ; F6 Party invite.

$F7::PartyKick()                   ; F7 Kick last party member.

RCtrl::reload                      ; Hotkeys for script control.
Pause:: pause                      ; ^
$F2:: suspend                      ; ^
