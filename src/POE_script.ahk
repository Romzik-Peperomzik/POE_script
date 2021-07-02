#Include functions.ahk
#Include rw_settings.ahk
;#Include gui.ahk


#IfWinActive, Path of Exile ahk_class POEWindowClass
#SingleInstance force  ; Replaces the old instance of script automatically
#NoEnv  ; Recommended for performance
#Persistent  ; Keeps a script permanently running
#MaxThreadsPerHotkey 2

SetDefaultMouseSpeed, 0          ; Sets the mouse speed, 0 - instantly

global quickFlasksHotkey         ; If u want to redefine key which activate flasks.
global smokeMineHotkey           ; If u want to redefine key which activate Smoke Mine.

global flask_key_set             ; flasks and skills sequence
; global flask_key_set1          ; second sequence if need

global quick_flask_active = True ; Quick flasks.
global smoke_mine_active = True  ; Auto smoke mine.

global lootColor                 ; border loot icon color 
global loot_dalay                ; delay between looting

global portalX
global portalY

global low_life_X
global low_life_Y
global life_color
global low_life_flask_list
global auto_flask_active = False

global logout_X
global logout_Y
global logout_life_color
global auto_logout_active = False
global black_screen

; global mine_laying_time
; global auto_detonate_active = False

;-----------------------------------------------------------------------------
ReadSettings()

Hotkey, %quickFlasksHotkey%, QuickFlaskLabel
Hotkey, %smokeMineHotkey%, AutoSmokeMine 

; And run gui?
;-----------------------------------------------------------------------------
;~RButton::BFBB()                  ; RMB BF + BB.

;~RButton::CremationDesecrate()    ; RMB Cremation > Desecrate.

!z::GetMouseColorPos()             ; Alt+z get pixel coords and color at mouse.

QuickFlaskLabel:                   ; Pressing set of flasks and skills. 
    if quick_flask_active{
        QuickFlask(flask_key_set)
    }
    else{
        Send, %quickFlasksHotkey%
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

^d::HoldWalk()                     ; Ctrl+d Toggle walk (like hold lmb to walk).

^f::Activate_AutoFlask()           ; Ctrl+f AutoFlask.

$F3::Activate_AutoLogout()         ; F3 AutoLogout. Cannot work at the same time with AutoFlask.

s::                                ; s key - Loot one item.
    if !LootSmallRegion(){
        LootBigRegion()
    }
    return

^s::LootAll()                      ; Ctrl+s hold to keep looting.

SC029::GameLogout()                ; `- Logout, SC029 is Tilda's id.

v::OpenPortal()                    ; v key use portal scroll 

$F5::Hideout()                     ; F5 Hideout.

$F6::PartyInvite()                 ; F6 Party invite.

$F7::PartyKick()                   ; F7 Kick last party member.

RCtrl::reload                      ; Hotkeys for script control.
Pause:: pause                      ; ^
$F2:: suspend                      ; ^
