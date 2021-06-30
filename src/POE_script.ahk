#Include functions.ahk
#Include rw_settings.ahk
;#Include gui.ahk
;#Include SearchItem.ahk


#IfWinActive, Path of Exile ahk_class POEWindowClass
#SingleInstance force  ; Replaces the old instance of script automatically
#NoEnv  ; Recommended for performance
#Persistent  ; Keeps a script permanently running
#MaxThreadsPerHotkey 2

SetDefaultMouseSpeed, 0          ; Sets the mouse speed, 0 - instantly

; global quickFlasksHotkey0      ; If u want to redefine key which activate flasks.
; global quickFlasksHotkey1

global flask_key_set             ; main flasks and keys sequence
; global flask_key_set1          ; second sequence if need

; global quick_flask_active = True ; autoflask

global lootColor                 ; border loot icon color 
global loot_dalay                ; delay between looting

global portalX
global portalY

global low_life_X
global low_life_Y
global life_color
global low_life_flask_list
global auto_flask_active = False

; global mine_laying_time
; global auto_detonate_active = False

;-----------------------------------------------------------------------------
ReadSettings()
; And run gui?
;-----------------------------------------------------------------------------

!z::GetMouseColorPos()             ; Alt+Z get pixel coords and color at mouse.

a::QuickFlask(flask_key_set)     ; a key - Set of flasks. 

r::SmokeMine()	                   ; r key - Smoke mine.

;~RButton::CremationDesecrate()     ; RMB Cremation > Desecrate.

;~RButton::BFBB()                   ; RMB BF + BB.

^D::HoldWalk()                    ; Ctrl+D Autorun.

$F3::EventLogoutLoop()             ; F3 activate loop.

SC029::GameLogout()                ; `= SC029 Tilda's id.

s::                               ; A key - Loot one item.
    if !LootSmallRegion(){
        LootBigRegion()
    }
    return

^s::LootAll()                     ; Ctrl+A hold to keep looting.

v::OpenPortal()                  ; Ctrl+J use portal scroll 

$F5::Hideout()                     ; F5 Hideout.

$F6::PartyInvite()                 ; F6 Party invite.

$F7::PartyKick()                   ; F7 Kick last party member.

RCtrl::reload                      ; Hotkeys for script control.
Pause:: pause                      ; ^
$F2:: suspend                      ; ^
