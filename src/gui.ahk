RunGUI() {
    Gui, Margin , 0, 0
    Gui, Add, Tab2, Choose1 w901 h701, General|Auto|Rollers


    ; General tab
    Gui, Tab, General
    ; How to use section
    Gui, Font, S9 CDefault Bold, Verdana
    Gui, Add, GroupBox, x25 y25 w845 h160 , How to use
    Gui, Font, S9 norm, Verdana
    Gui, Add, Text, x40 y45 w810 h15 , Click on checkboxes whichever you need. If you want to change activation key, enter a key or combination keys in input field.
    Gui, Font, S9 CDefault Bold, Verdana
    Gui, Add, Text, x40 y65 w100 h15 , ATTENTION
    Gui, Font, S9 norm, Verdana
    Gui, Add, Text, x120 y65 w740 h15 , , Logout and Heal features works only in windowed game mode. (Any pixelsearch fn works only in windowed mode)
    Gui, Add, Text, x40 y85 w810 h15 , F2 key toggling PAUSE/START hotkey binds by default.
    Gui, Add, Text, x40 y105 w810 h15 , Supports only
    Gui, Font, S9 CDefault Bold, Verdana
    Gui, Add, Text, x130 y105 w600 h15 , 1920x1080 (default_screen) and 1904x800 (wide_screen)
    Gui, Font, S9 norm, Verdana
    Gui, Add, Text, x537 y105 w200 h15 , resolutions.
    Gui, Add, Text, x40 y125 w620 h15 , For detailed instruction see README.md.
    Gui, Add, Text, x40 y145 w810 h15 , To create a chord keys add sign before key: + for Shift,! for Alt,^ for Ctrl. Example: Ctrl + d are ^d. Ctrl + Shift + d are ^+d.
    Gui, Add, Text, x40 y165 w810 h15 , Quick navigation between tabs Ctrl + Tab or Ctrl + PgDn, Ctrl + PgUp.


    ; Misc section
    Gui, Font, S9 CDefault Bold, Verdana
    Gui, Add, GroupBox, x25 y190 w845 h220 , Misc
    Gui, Font, norm, Verdana
    Gui, Add, Text, x40 y210 w190 h20 , Get Pixel Color and Coords:
    Gui, Add, Text, x40 y240 w160 h20 , Suspend Hotkeys Bind:
    Gui, Add, Text, x40 y270 w250 h20 , Reload script (save any changes):
    Gui, Font, S9 CDefault Bold, Verdana
    Gui, Add, Text, x300 y210 w50 h20 , Alt + Z
    Gui, Add, Text, x300 y240 w20 h20 , F2
    Gui, Add, Text, x300 y270 w40 h20 , RCtrl
    Gui, Add, Text, x300 y300 w150 h20 , Ctrl + G
    Gui, Font, norm, Verdana
    Gui, Add, Text, x40 y300 w150 h20 , Ctrl + LMB Clicker:
    Gui, Add, Text, x40 y330 w150 h20 , Custom chat command:
    Gui, Add, CheckBox, x270 y330 w15 h15 Checked%custom_chat_command_active% vcustom_chat_command_active,
    Gui, Add, Edit, x300 y330 w40 h20 vcustomChatCommandHotkey, %customChatCommandHotkey%
    Gui, Add, Edit, x350 y330 w100 h20 vchat_command, %chat_command%
    Gui, Add, Text, x500 y210 w150 h20 , Hold Walk (LMB hold):
    Gui, Add, CheckBox, x700 y210 w15 h15 Checked%hold_walk_active% vhold_walk_active,
    Gui, Add, Edit, x740 y210 w60 h20 vholdWalkHotkey, %holdWalkHotkey%
    Gui, Add, Text, x500 y240 w150 h20 , Go to Hideout:
    Gui, Add, CheckBox, x700 y240 w15 h15 Checked%hideout_active% vhideout_active, 
    Gui, Add, Edit, x740 y240 w60 h20 vhideoutHotkey, %hideoutHotkey%
    Gui, Add, Text, x500 y270 w220 h20 , Invite to Party by Last Msg:
    Gui, Add, CheckBox, x700 y270 w15 h15 Checked%party_invite_active% vparty_invite_active, 
    Gui, Add, Edit, x740 y270 w60 h20 vpartyInviteHotkey, %partyInviteHotkey%
    Gui, Add, Text, x500 y300 w220 h20 , Kick from Party by Last Msg:
    Gui, Add, CheckBox, x700 y300 w15 h15 Checked%party_kick_active% vparty_kick_active, 
    Gui, Add, Edit, x740 y300 w60 h20 vpartyKickHotkey, %partyKickHotkey%
    Gui, Add, Text, x500 y330 w130 h20 , Logout:
    Gui, Add, CheckBox, x700 y330 w15 h15 Checked%game_logout_active% vgame_logout_active, 
    Gui, Add, Edit, x740 y330 w60 h20 vgameLogoutHotkey, %gameLogoutHotkey%
    Gui, Font, S8 CDefault, Verdana
    Gui, Add, Text, x500 y360 w288 h30 , For specific logout bind key use key_hooker.ahk to determinate keys id and past it to input field.


    ; Game and character state section
    Gui, Font, S9 CDefault Bold, Verdana
    Gui, Add, GroupBox, x25 y415 w400 h130 , Game and character state
    Gui, Font, norm, Verdana
    Gui, Add, Text, x40 y435 w110 h20 , Screen mode:
    Gui, Add, Radio, x40 y455 w140 h20 Checked%default_screen_mode% vdefault_screen_mode, default 1920x1080
    Gui, Add, Radio, x190 y455 w120 h20 Checked%wide_screen_mode% vwide_screen_mode, wide 1904x800
    Gui, Add, Text, x40 y480 w350 h35 , ES or Life character based: (have bound with AutoHeal() and AutoLogout())
    Gui, Add, Radio, x40 y515 w40 h20 Checked%life_based% vlife_based, life
    Gui, Add, Radio, x90 y515 w40 h20 Checked%es_based% ves_based, es
    Gui, Add, Button, x340 y435 w70 h30 , Change


    ; Open Portal section
    Gui, Font, S9 CDefault Bold, Verdana
    Gui, Add, GroupBox, x25 y550 w400 h140 , Open Portal
    Gui, Font, norm, Verdana
    Gui, Add, Text, x40 y575 w60 h20 , Quick TP:
    Gui, Add, CheckBox, x110 y575 w15 h15 Checked%open_portal_active% vopen_portal_active, 
    Gui, Add, Edit, x140 y575 w60 h20 vopenPortalHotkey, %openPortalHotkey%
    Gui, Add, Text, x40 y600 w20 h20 , X:
    Gui, Add, Edit, x60 y600 w50 h20 vportalX, %portalX%
    Gui, Add, Text, x120 y600 w10 h20 , Y:
    Gui, Add, Edit, x140 y600 w50 h20 vportalY, %portalY%
    Gui, Font, S8 CDefault, Verdana
    Gui, Add, Text, x240 y570 w180 h80 , Click on a portal scroll for coords in your inventory. To setup coords move cursor at a portal scroll in inventory and press Alt + Z hotkey.
    Gui, Add, Text, x40 y630 w200 h15 , Put X and Y coords in input fields.


    ; Ability sequence section
    Gui, Font, S9 CDefault Bold, Verdana
    Gui, Add, GroupBox, x445 y415 w425 h200 , Ability sequence
    Gui, Font, norm, Verdana
    Gui, Add, Text, x460 y440 w150 h20 , Trigger key:
    Gui, Add, CheckBox, x545 y440 w15 h15 Checked%seq_skills_active% vseq_skills_active, 
    Gui, Add, Edit, x570 y440 w40 h20 vtriggerSeqHotkey, %triggerSeqHotkey%
    Gui, Add, Text, x460 y470 w150 h20 , 1st skill key:
    Gui, Add, Edit, x550 y470 w40 h20 vseq_first_skill, %seq_first_skill%
    Gui, Add, Text, x620 y470 w120 h20 , 2nd skill key:
    Gui, Add, Edit, x710 y470 w40 h20 vseq_second_skill, %seq_second_skill%
    Gui, Add, Text, x460 y500 w180 h20 , Delay (cast time 1st skill):
    Gui, Add, Edit, x640 y500 w40 h20 vseq_castspeed_time, %seq_castspeed_time%
    Gui, Add, Text, x460 y550 w400 h30 , Example: put Desecrate key in 1st field and Cremation in 2nd, put Desecrate cast time (from ingame tooltip) to Delay field.


    ; Apply button
    Gui, Font, S9 Bold, Verdana
    Gui, Add, GroupBox, x590 y620 w280 h70 , Save settings
    Gui, Font, norm, Verdana
    Gui, Add, Text, x605 y640 w120 h45 , Press button after any changes in any tabs.
    Gui, Add, Button, x760 y640 w100 h30 , Apply change


    ; Auto tab
    Gui, Tab, Auto
    ; Sequence create tip
    Gui, Font, S9 Bold, Verdana
    Gui, Add, GroupBox, x25 y25 w430 h70 , Sequence create tip
    Gui, Font, norm, Verdana
    Gui, Add, Text, x40 y45 w400 h15 , To make sequence, separate keys by slash "/" example: e/f/^t
    Gui, Add, Text, x40 y65 w400 h15 , Shift +, Alt !, Ctrl ^ or sequence in input field: +q/!w/^e


    ; Flasks section
    Gui, Font, S9 CDefault Bold, Verdana
    Gui, Add, GroupBox, x25 y100 w430 h300 , Flasks
    Gui, Font, norm, Verdana
    Gui, Add, Text, x42 y120 w170 h20 , Flasks and skills hotkey:
    Gui, Add, CheckBox, x212 y120 w15 h15 Checked%set_of_flasks_active% vset_of_flasks_active, 
    Gui, Add, Edit, x242 y120 w50 h20 vsetOfFlasksHotkey, %setOfFlasksHotkey%
    Gui, Add, Text, x42 y150 w150 h20 , Set of flasks and skills:
    Gui, Add, Edit, x212 y150 w80 h20 vflask_key_set, %flask_key_set%
    Gui, Font, Bold, Verdana
    Gui, Add, Text, x35 y180 w300 h20 , Each flask separately with timers:
    Gui, Font, norm, Verdana
    Gui, Add, Text, x42 y210 w180 h20 , Activate timers:
    Gui, Add, CheckBox, x192 y210 w15 h15 Checked%flask_timers_key_active% vflask_timers_key_active,
    Gui, Add, Edit, x232 y210 w50 h20 vflaskTimersHotkey, %flaskTimersHotkey%
    Gui, Add, Text, x300 y210 w100 h40 , Press once at start?:
    Gui, Add, CheckBox, x400 y210 w15 h15 Checked%flask_timers_start_press_active% vflask_timers_start_press_active,
    Gui, Add, Text, x42 y240 w180 h20 , Flask 1
    Gui, Add, CheckBox, x110 y240 w15 h15 Checked%flask_key_1_active% vflask_key_1_active,
    Gui, Add, Text, x150 y240 w70 h20 , Delay:
    Gui, Add, Edit, x212 y240 w70 h20 vflask_key_1_delay, %flask_key_1_delay%
    Gui, Add, Text, x42 y270 w180 h20 , Flask 2
    Gui, Add, CheckBox, x110 y270 w15 h15 Checked%flask_key_2_active% vflask_key_2_active,
    Gui, Add, Text, x150 y270 w70 h20 , Delay:
    Gui, Add, Edit, x212 y270 w70 h20 vflask_key_2_delay, %flask_key_2_delay%
    Gui, Add, Text, x42 y300 w180 h20 , Flask 3
    Gui, Add, CheckBox, x110 y300 w15 h15 Checked%flask_key_3_active% vflask_key_3_active,
    Gui, Add, Text, x150 y300 w70 h20 , Delay:
    Gui, Add, Edit, x212 y300 w70 h20 vflask_key_3_delay, %flask_key_3_delay%
    Gui, Add, Text, x42 y330 w180 h20 , Flask 4
    Gui, Add, CheckBox, x110 y330 w15 h15 Checked%flask_key_4_active% vflask_key_4_active,
    Gui, Add, Text, x150 y330 w70 h20 , Delay:
    Gui, Add, Edit, x212 y330 w70 h20 vflask_key_4_delay, %flask_key_4_delay%
    Gui, Add, Text, x42 y360 w180 h20 , Flask 5
    Gui, Add, CheckBox, x110 y360 w15 h15 Checked%flask_key_5_active% vflask_key_5_active,
    Gui, Add, Text, x150 y360 w70 h20 , Delay:
    Gui, Add, Edit, x212 y360 w70 h20 vflask_key_5_delay, %flask_key_5_delay%
    Gui, Add, Text, x300 y265 w140 h100 , Tip: Make sure that flask sequence and each flask separately are not intersect.


    ; Heal section
    Gui, Font, S9 CDefault Bold, Verdana
    Gui, Add, GroupBox, x472 y25 w400 h260 , Heal
    Gui, Font, norm, Verdana
    Gui, Add, Text, x482 y45 w190 h20 , Heal Key 1:
    Gui, Add, CheckBox, x570 y45 w15 h15 Checked%auto_heal_active% vauto_heal_active,
    Gui, Add, Edit, x600 y45 w30 h20 vheal_key_1, %heal_key_1%
    Gui, Add, Text, x650 y45 w70 h15 , Delay:
    Gui, Add, Edit, x700 y45 w50 h17 vauto_heal_delay, %auto_heal_delay%
    Gui, Add, Text, x760 y45 w80 h20 , Hotkey:
    Gui, Add, Edit, x820 y45 w40 h20 vautoHealHotkey, %autoHealHotkey%
    Gui, Add, Text, x482 y75 w200 h15 , First heal key are flask?
    Gui, Add, CheckBox, x650 y75 w15 h15 Checked%heal_key_1_are_flask% vheal_key_1_are_flask, 
    Gui, Font, S7  Verdana
    Gui, Add, Text, x482 y95 w250 h20 , (Have check when life flask duration ends)
    Gui, Font, S9 norm, Verdana
    Gui, Add, Text, x482 y130 w120 h20 , Heal Key 2:
    Gui, Add, CheckBox, x570 y130 w20 h20 Checked%heal_key_duo_active% vheal_key_duo_active, 
    Gui, Add, Edit, x600 y130 w30 h20 vheal_key_2, %heal_key_2%
    Gui, Add, Text, x482 y160 w100 h20 , Health color:
    Gui, Add, Edit, x600 y160 w80 h20 vlow_health_color, %low_health_color%
    Gui, Add, Text, x482 y190 w20 h20 , X:
    Gui, Add, Edit, x502 y190 w47 h20 vhealth_X, %health_X%
    Gui, Add, Text, x580 y190 w10 h20 , Y:
    Gui, Add, Edit, x600 y190 w47 h20 vhealth_Y, %health_Y%
    Gui, Font, S9 Bold, Verdana
    Gui, Add, Text, x482 y220 w300 h15 , Health chord updater: ;To update X, Y, Color press: Ctrl+Shift+F
    Gui, Font, S9 norm, Verdana
    Gui, Add, CheckBox, x650 y220 w20 h20 Checked%update_heal_treshold_active% vupdate_heal_treshold_active, 
    Gui, Add, Edit, x680 y220 w50 h17 vupdateHealTresholdHotkey, %updateHealTresholdHotkey%
    Gui, Add, Text, x482 y240 w370 h30 , Hover mouse on health orb ingame, and press binded chord to update Health Color, X and Y vars.


    ; Auto Logout section
    Gui, Font, S9 CDefault Bold, Verdana
    Gui, Add, GroupBox, x472 y295 w400 h260 , Logout
    Gui, Font, norm, Verdana
    Gui, Add, Text, x482 y315 w110 h20 , AutoLogout:
    Gui, Add, CheckBox, x572 y315 w15 h15 Checked%auto_logout_active% vauto_logout_active, 
    Gui, Add, Edit, x600 y315 w40 h20 vautoLogoutHotkey, %autoLogoutHotkey%
    Gui, Add, Text, x650 y315 w70 h15 , Delay:
    Gui, Add, Edit, x700 y315 w50 h17 vauto_logout_delay, %auto_logout_delay%
    Gui, Add, Text, x482 y345 w190 h20 , Health AutoLogout color:
    Gui, Add, Edit, x642 y345 w77 h20 vlogout_health_color, %logout_health_color%
    Gui, Add, Text, x482 y375 w10 h20 , X:
    Gui, Add, Edit, x502 y375 w40 h20 vlogout_X, %logout_X%
    Gui, Add, Text, x552 y375 w10 h20 , Y:
    Gui, Add, Edit, x572 y375 w40 h20 vlogout_Y, %logout_Y%
    Gui, Font, S9 CDefault Bold, Verdana
    Gui, Add, Text, x482 y400 w190 h20 , How to use AutoLogout:
    Gui, Font, S9 norm, Verdana
    Gui, Add, Text, x482 y420 w380 h60 , Hover mouse on health orb ingame, visually choose bound on orb where AutoLogout should be triggered and press Alt + Z. Paste X, Y, and Color to input fields^. When pixel color changes, AutoLogout would be triggered.
    Gui, Add, Text, x482 y490 w380 h60 , Make sure that Logout feature works properly, see General tab -> Misc -> Logout, its require to run cports.exe and maybe need to run as admin.


    ; Auto Loot section
    Gui, Font, S9 CDefault Bold, Verdana
    Gui, Add, GroupBox, x25 y410 w430 h280 , Loot
    Gui, Font, norm, Verdana
    Gui, Add, Text, x42 y430 w80 h20 , Loot 1 item:
    Gui, Add, CheckBox, x130 y430 w15 h15 Checked%loot_one_item_active% vloot_one_item_active, 
    Gui, Add, Edit, x160 y430 w50 h20 vlootOneItemHotkey, %lootOneItemHotkey%
    Gui, Add, Text, x230 y430 w120 h20 , Loot all (hold key):
    Gui, Add, CheckBox, x360 y430 w15 h15 Checked%auto_looting_active% vauto_looting_active, 
    Gui, Add, Edit, x390 y430 w50 h20 vautoLootingHotkey, %autoLootingHotkey%
    Gui, Add, Text, x42 y460 w120 h20 , Border loot color:
    Gui, Add, Edit, x162 y460 w77 h20 vloot_color, %loot_color%
    Gui, Add, Text, x350 y460 w90 h20 , Delay:
    Gui, Add, Edit, x400 y460 w40 h20 vloot_delay, %loot_delay%
    Gui, Add, Text, x42 y490 w250 h20 , Small loot reqtangle area coords:
    Gui, Add, Text, x42 y520 w20 h20 , X1:
    Gui, Add, Edit, x70 y520 w50 h20 vloot_small_X1, %loot_small_X1%
    Gui, Add, Text, x42 y540 w20 h20 , Y1:
    Gui, Add, Edit, x70 y540 w50 h20 vloot_small_Y1, %loot_small_Y1%
    Gui, Add, Text, x150 y520 w20 h20 , X2:
    Gui, Add, Edit, x180 y520 w50 h20 vloot_small_X2, %loot_small_X2%
    Gui, Add, Text, x150 y540 w20 h20 , Y2:
    Gui, Add, Edit, x180 y540 w50 h20 vloot_small_Y2, %loot_small_Y2%

    Gui, Add, Text, x42 y570 w250 h20 , Big loot reqtangle area coords:
    Gui, Add, Text, x42 y600 w20 h20 , X1:
    Gui, Add, Edit, x70 y600 w50 h20 vloot_big_X1, %loot_big_X1%
    Gui, Add, Text, x42 y620 w20 h20 , Y1:
    Gui, Add, Edit, x70 y620 w50 h20 vloot_big_Y1, %loot_big_Y1%
    Gui, Add, Text, x150 y600 w20 h20 , X2:
    Gui, Add, Edit, x180 y600 w50 h20 vloot_big_X2, %loot_big_X2%
    Gui, Add, Text, x150 y620 w20 h20 , Y2:
    Gui, Add, Edit, x180 y620 w50 h20 vloot_big_Y2, %loot_big_Y2%
    Gui, Font, S9 CDefault Bold, Verdana
    Gui, Add, Text, x42 y660 w400 h20 , Required: modified loot filter, see README.md
    Gui, Font, norm, Verdana


    ; Apply button
    Gui, Font, S9 Bold, Verdana
    Gui, Add, GroupBox, x590 y620 w285 h70 , Save settings
    Gui, Font, norm, Verdana
    Gui, Add, Text, x605 y640 w120 h45 , Press button after any changes in any tabs.
    Gui, Add, Button, x760 y640 w100 h30 , Apply change


    ; Rollers tab
    Gui, Tab, Rollers
    ; Utility section
    Gui, Font, S9 CDefault Bold, Verdana
    Gui, Add, GroupBox, x25 y25 w420 h300 , Utility
    Gui, Font, norm, Verdana
    Gui, Add, Text, x42 y45 w170 h20 , InventoryColorMap:
    Gui, Add, CheckBox, x190 y45 w15 h15 Checked%make_inv_color_map_key_active% vmake_inv_color_map_key_active, 
    Gui, Add, Edit, x230 y45 w40 h20 vmakeInvColorMapHotkey, %makeInvColorMapHotkey%
    Gui, Add, Text, x42 y75 w20 h20 , X1:
    Gui, Add, Text, x42 y95 w20 h20 , Y1:
    Gui, Add, Edit, x70 y75 w50 h20 vinv_X1, %inv_X1%
    Gui, Add, Edit, x70 y95 w50 h20 vinv_Y1, %inv_Y1%
    Gui, Add, Text, x140 y75 w20 h20 , X2:
    Gui, Add, Text, x140 y95 w20 h20 , Y2:
    Gui, Add, Edit, x170 y75 w50 h20 vinv_X2, %inv_X2%
    Gui, Add, Edit, x170 y95 w50 h20 vinv_Y2, %inv_Y2%
    Gui, Add, Text, x42 y125 w350 h70 , Creates inventory color map. Use Alt + Z in top left corner of first cell and bottom right corner of last cell in inventory. Then press trigger key, it creates a map in x-y-color format which are required for CleanInventory and StackedDeckOpener functions.
    Gui, Add, Text, x42 y210 w170 h20 , CleanInventory:
    Gui, Add, CheckBox, x190 y210 w15 h15 Checked%clean_inv_key_active% vclean_inv_key_active, 
    Gui, Add, Edit, x230 y210 w40 h20 vcleanInvHotkey, %cleanInvHotkey%
    Gui, Add, Text, x42 y230 w380 h20 , Required: Use InventoryColorMap before, opened stash.
    Gui, Add, Text, x42 y260 w170 h20 , StackedDeckOpener:
    Gui, Add, CheckBox, x190 y260 w15 h15 Checked%deck_opener_key_active% vdeck_opener_key_active, 
    Gui, Add, Edit, x230 y260 w40 h20 vdeckOpenerHotkey, %deckOpenerHotkey%
    Gui, Add, Text, x42 y285 w380 h30 , Put 5 stacked decks into column, click lmb on first one. Required: Use InventoryColorMap before.


    ; Rollers section
    Gui, Font, S9 CDefault Bold, Verdana
    Gui, Add, GroupBox, x455 y25 w420 h590 , Rollers
    Gui, Font, norm, Verdana
    Gui, Add, Text, x472 y45 w350 h20 , Click roller: 
    Gui, Add, CheckBox, x560 y45 w15 h15 Checked%click_roller_key_active% vclick_roller_key_active, 
    Gui, Add, Edit, x600 y45 w40 h20 vclickRollerHotkey, %clickRollerHotkey%
    Gui, Font, S8 norm, Verdana
    Gui, Add, Text, x475 y75 w30 h20 , X:
    Gui, Add, Text, x475 y95 w30 h20 , Y:
    Gui, Font, S9 norm, Verdana
    Gui, Add, Edit, x490 y75 w50 h20 vfuse_X, %fuse_X%
    Gui, Add, Edit, x490 y95 w50 h20 vfuse_Y, %fuse_Y%
    Gui, Font, S8 norm, Verdana
    Gui, Add, Text, x560 y75 w30 h20 , X:
    Gui, Add, Text, x560 y95 w30 h20 , Y:
    Gui, Font, S9 norm, Verdana
    Gui, Add, Edit, x575 y75 w50 h20 vjeweller_X, %jeweller_X%
    Gui, Add, Edit, x575 y95 w50 h20 vjeweller_Y, %jeweller_Y%
    Gui, Font, S8 norm, Verdana
    Gui, Add, Text, x645 y75 w30 h20 , X:
    Gui, Add, Text, x645 y95 w30 h20 , Y:
    Gui, Font, S9 norm, Verdana
    Gui, Add, Edit, x660 y75 w50 h20 vchaos_X, %chaos_X%
    Gui, Add, Edit, x660 y95 w50 h20 vchaos_Y, %chaos_Y%
    Gui, Font, S8 norm, Verdana
    Gui, Add, Text, x725 y75 w30 h20 , X:
    Gui, Add, Text, x725 y95 w30 h20 , Y:
    Gui, Font, S9 norm, Verdana
    Gui, Add, Edit, x740 y75 w50 h20 vchrom_X, %chrom_X%
    Gui, Add, Edit, x740 y95 w50 h20 vchrom_Y, %chrom_Y%
    Gui, Font, S8 norm, Verdana
    Gui, Add, Text, x805 y75 w30 h20 , X:
    Gui, Add, Text, x805 y95 w30 h20 , Y:
    Gui, Font, S9 norm, Verdana
    Gui, Add, Edit, x820 y75 w50 h20 valter_X, %alter_X%
    Gui, Add, Edit, x820 y95 w50 h20 valter_Y, %alter_Y%
    Gui, Add, Radio, x560 y120 w80 h20 Checked%jeweller% vjeweller, jeweller
    Gui, Add, Radio, x489 y120 w51 h20 Checked%fuse% vfuse, fuse
    Gui, Add, Radio, x650 y120 w55 h20 Checked%chaos% vchaos, chaos
    Gui, Add, Radio, x730 y120 w55 h20 Checked%chrom% vchrom, chrom
    Gui, Add, Radio, x810 y120 w55 h20 Checked%alter% valter, alter

    Gui, Add, Text, x472 y150 w350 h20 , Scour roller:
    Gui, Add, CheckBox, x560 y150 w15 h15 Checked%scour_roller_key_active% vscour_roller_key_active,
    Gui, Add, Edit, x600 y150 w40 h20 vscourRollerHotkey, %scourRollerHotkey%
    Gui, Font, S8 norm, Verdana
    Gui, Add, Text, x475 y180 w30 h20 , X:
    Gui, Add, Text, x475 y200 w30 h20 , Y:
    Gui, Font, S9 norm, Verdana
    Gui, Add, Edit, x490 y180 w50 h20 valch_X, %alch_X%
    Gui, Add, Edit, x490 y200 w50 h20 valch_Y, %alch_Y%
    Gui, Font, S8 norm, Verdana
    Gui, Add, Text, x560 y180 w30 h20 , X:
    Gui, Add, Text, x560 y200 w30 h20 , Y:
    Gui, Font, S9 norm, Verdana
    Gui, Add, Edit, x575 y180 w50 h20 vbind_X, %bind_X%
    Gui, Add, Edit, x575 y200 w50 h20 vbind_Y, %bind_Y%
    Gui, Font, S8 norm, Verdana
    Gui, Add, Text, x645 y180 w30 h20 , X:
    Gui, Add, Text, x645 y200 w30 h20 , Y:
    Gui, Font, S9 norm, Verdana
    Gui, Add, Edit, x660 y180 w50 h20 vchance_X, %chance_X%
    Gui, Add, Edit, x660 y200 w50 h20 vchance_Y, %chance_Y%
    Gui, Add, Radio, x489 y225 w51 h20 Checked%alch% valch, alch
    Gui, Add, Radio, x560 y225 w51 h20 Checked%bind% vbind, bind
    Gui, Add, Radio, x650 y225 w70 h20 Checked%chance% vchance, chance
    Gui, Font, S8 norm, Verdana
    Gui, Add, Text, x725 y180 w30 h20 , X:
    Gui, Add, Text, x725 y200 w30 h20 , Y:
    Gui, Font, S9 norm, Verdana
    Gui, Add, Edit, x740 y180 w50 h20 vscour_X, %scour_X%
    Gui, Add, Edit, x740 y200 w50 h20 vscour_Y, %scour_Y%
    Gui, Add, Text, x745 y228 w55 h20 , scour
    Gui, Add, Text, x472 y265 w150 h20 , Item coords for rolling:
    Gui, Font, S8 norm, Verdana
    Gui, Add, Text, x640 y265 w20 h20 , X:
    Gui, Add, Text, x640 y285 w20 h20 , Y:
    Gui, Font, S9 norm, Verdana
    Gui, Add, Edit, x670 y265 w50 h20 vrolling_item_X, %rolling_item_X%
    Gui, Add, Edit, x670 y285 w50 h20 vrolling_item_Y, %rolling_item_Y%
    Gui, Add, Text, x770 y265 w60 h20 , Delay:
    Gui, Add, Edit, x820 y265 w50 h20 vrolling_item_delay, %rolling_item_delay%
    Gui, Add, Text, x472 y320 w140 h40 , Reqtangle points for highlighted border:
    Gui, Font, S8 norm, Verdana
    Gui, Add, Text, x640 y320 w20 h20 , X1:
    Gui, Add, Text, x640 y340 w20 h20 , Y1:
    Gui, Font, S9 norm, Verdana
    Gui, Add, Edit, x670 y320 w50 h20 vhighlighted_border_X1, %highlighted_border_X1%
    Gui, Add, Edit, x670 y340 w50 h20 vhighlighted_border_Y1, %highlighted_border_Y1%
    Gui, Font, S8 norm, Verdana
    Gui, Add, Text, x740 y320 w20 h20 , X2:
    Gui, Add, Text, x740 y340 w20 h20 , Y2:
    Gui, Font, S9 norm, Verdana
    Gui, Add, Edit, x770 y320 w50 h20 vhighlighted_border_X2, %highlighted_border_X2%
    Gui, Add, Edit, x770 y340 w50 h20 vhighlighted_border_Y2, %highlighted_border_Y2%
    Gui, Add, Text, x472 y370 w200 h20 , Highlighted border color:
    Gui, Add, Edit, x670 y370 w80 h20 vhighlighted_border, %highlighted_border%
    Gui, Add, Text, x472 y410 w380 h40 , To avoid any mistakes, roll all items into currency stash tab, where rolling item placed in center.
    Gui, Add, Text, x472 y450 w380 h40 , Setup all coords and colors picking them by Alt + Z. Paste regexp (poe.re to make paste) into search field ingame.
    Gui, Add, Text, x472 y490 w380 h45 , Open stash, place item, paste regexp (its necessarily for auto stop) and press trigger button. When item would be highlighted its mean a signal to break loop.
    Gui, Add, Text, x472 y540 w380 h40 , If something goes not like discribed above, then check coords again and see README.md.


    Gui, Font, S9 CDefault Bold, Verdana
    Gui, Add, GroupBox, x25 y330 w420 h285 , Expedition
    Gui, Font, norm, Verdana
    Gui, Add, Text, x42 y350 w170 h20 , GwenRoller:
    Gui, Add, CheckBox, x130 y350 w15 h15 Checked%gwen_roller_key_active% vgwen_roller_key_active, 
    Gui, Add, Edit, x160 y350 w50 h20 vgwenRollerHotkey, %gwenRollerHotkey%
    Gui, Add, Text, x270 y350 w170 h20 , Delay:
    Gui, Add, Edit, x330 y350 w50 h20 vgwen_roller_delay, %gwen_roller_delay%
    Gui, Add, Text, x42 y380 w170 h40 , Reqtangle points for Gwenenn window:
    Gui, Font, S8 norm, Verdana
    Gui, Add, Text, x200 y380 w20 h20 , X1:
    Gui, Add, Text, x200 y400 w20 h20 , Y1:
    Gui, Font, S9 norm, Verdana
    Gui, Add, Edit, x230 y380 w50 h20 vgwen_window_X1, %gwen_window_X1%
    Gui, Add, Edit, x230 y400 w50 h20 vgwen_window_Y1, %gwen_window_Y1%
    Gui, Font, S8 norm, Verdana
    Gui, Add, Text, x300 y380 w20 h20 , X2:
    Gui, Add, Text, x300 y400 w20 h20 , Y2:
    Gui, Font, S9 norm, Verdana
    Gui, Add, Edit, x330 y380 w50 h20 vgwen_window_X2, %gwen_window_X2%
    Gui, Add, Edit, x330 y400 w50 h20 vgwen_window_Y2, %gwen_window_Y2%
    Gui, Add, Text, x42 y430 w300 h20 , Gwen roll key coords:
    Gui, Add, Text, x200 y430 w20 h20 , X:
    Gui, Add, Text, x300 y430 w20 h20 , Y:
    Gui, Add, Edit, x230 y430 w50 h20 vgwen_roll_key_X, %gwen_roll_key_X%
    Gui, Add, Edit, x330 y430 w50 h20 vgwen_roll_key_Y, %gwen_roll_key_Y%
    Gui, Add, Text, x42 y470 w350 h60 , Open Gwennen roll window, paste regexp (poe.re to make paste) into search field ingame. Press trigger key, it would buy any highlighted items. Make sure that you have space in inventory.


    ; Apply button in Rollers section
    Gui, Font, S9 Bold, Verdana
    Gui, Add, GroupBox, x590 y620 w285 h70 , Save settings
    Gui, Font, norm, Verdana
    Gui, Add, Text, x605 y640 w120 h45 , Press button after any changes in any tabs.
    Gui, Add, Button, x760 y640 w100 h30 , Apply change


    ; Main window params
    Gui, Color, 0xF4F4F4
    Gui, Show, x250 y100 h700 w900, Script
    Return


    GuiClose:
    ExitApp
}


ButtonApplyChange() {
    TurnOffAllHotkey()
    Gui, Submit, NoHide
    TurnOnAllHotkey()
    SaveSettings()
    if (default_screen_mode) {
        SaveDefaultCoords()
    } else {
        SaveWideSettings()
    }
    MsgBox , 0, , change applied, 0.5

    return
}


ButtonChange() {
    Gui, Submit, NoHide
    IniWrite, %default_screen_mode%, settings.ini, settings, default_screen_mode
    IniWrite, %wide_screen_mode%,    settings.ini, settings, wide_screen_mode
    MsgBox , 0, , Screen mode changed, 0.5

    Reload
    return
}
