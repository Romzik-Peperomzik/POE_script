#Include functions.ahk
;#Include SearchItem.ahk
;#Include gui.ahk
;#Include rw_settings.ahk

#IfWinActive, Path of Exile ahk_class POEWindowClass
#SingleInstance force  ; Replaces the old instance of script automatically
#NoEnv  ; Recommended for performance
#Persistent  ; Keeps a script permanently running
#MaxThreadsPerHotkey 2

SetDefaultMouseSpeed, 0  ; Sets the mouse speed, 0 - instantly
global keys_flask_list := 'w-e-2-3-4-5-q'

/*
global quickFlasksHotkey0
global quickFlasksHotkey1

global quick_flask_list_1

global quick_flask_active = True

global lootColor
global loot_dalay

global portalX
global portalY

global low_life_X
global low_life_Y
global life_color
global low_life_flask_list
global auto_flask_active = False

global mine_laying_time
global auto_detonate_active = False
*/
;-----------------------------------------------------------------------------
; Read settings here?
; And run gui?
;-----------------------------------------------------------------------------

!z::GetMouseColorPos()             ; Alt+Z get pixel coords and color at mouse.

a::QuickFlask(keys_flask_list)     ; a key - Set of flasks. 

r::SmokeMine()	                   ; r key - Smoke mine.

;~RButton::CremationDesecrate()     ; RMB Cremation > Desecrate.

;~RButton::BFBB()                   ; RMB BF + BB.

$^D::HoldWalk()                    ; Ctrl+D Autorun.

$F3::EventLogoutLoop()             ; F3 activate loop.

SC029::GameLogout()                ; `= SC029 Tilda's id.

~a::                               ; A key - Loot one item.
    if !LootSmallRegion(){
        LootBigRegion()
    }
    return

~^a::LootAll()                     ; Ctrl+A hold to keep looting.

~^j::OpenPortal()                  ; Ctrl+J use portal scroll 

$F5::Hideout()                     ; F5 Hideout.

$F6::PartyInvite()                 ; F6 Party invite.

$F7::PartyKick()                   ; F7 Kick last party member.

RCtrl::reload                      ; Hotkeys for script control.
Pause:: pause                      ; ^
$F2:: suspend                      ; ^
