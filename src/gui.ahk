Gui, Font, norm, 
Gui, Add, Text, x32 y9 w60 h20 +cBlue gGoToWebsite, go to GitHub
Gui, Font, norm, 
Gui, Add, Edit, x252 y20 w0 h0 , 123 ; dummy edit to avoid a mysterious bug
Gui, Font, S9 CDefault Bold, Verdana
Gui, Add, GroupBox, x32 y59 w420 h120 , Set of Flasks
Gui, Add, Text, x42 y89 w80 h20 , Ctrl + L
Gui, Font, norm, 
Gui, Add, Text, x132 y89 w100 h20 , to turn on /off
Gui, Add, Hotkey, x42 y119 w80 h20 vquickFlasksHotkey0, %quickFlasksHotkey0%
Gui, Add, Text, x120 y80 w30 h0 , Text
Gui, Add, Text, x132 y119 w150 h20 , to quick flasks (1)`, list:
Gui, Add, Edit, x282 y119 w150 h20 vquick_flask_list, %quick_flask_list%
Gui, Add, Hotkey, x42 y149 w80 h20 vquickFlasksHotkey1, %quickFlasksHotkey1%
Gui, Add, Text, x120 y110 w30 h0 , Text
Gui, Add, Text, x132 y149 w150 h20 , to quick flasks (2)`, list:
Gui, Add, Edit, x282 y149 w150 h20 vquick_flask_list_1, %quick_flask_list_1%
Gui, Font, S9 CDefault Bold, Verdana
Gui, Add, GroupBox, x32 y199 w240 h160 , Auto Life Flask
Gui, Font, norm, 
Gui, Add, Text, x112 y219 w100 h20 , to turn on /off,
Gui, Add, Text, x92 y239 w30 h20 , X:
Gui, Add, Text, x92 y269 w30 h20 , Y:
Gui, Add, Text, x72 y299 w40 h20 , color:
Gui, Add, Text, x42 y329 w30 h20 , list:
Gui, Add, Edit, x122 y239 w110 h20 vlow_life_X, %low_life_X%
Gui, Add, Edit, x122 y269 w110 h20 vlow_life_Y, %low_life_Y%
Gui, Add, Edit, x122 y299 w110 h20 vlife_color, %life_color%
Gui, Add, Edit, x82 y329 w150 h20 vlow_life_flask_list, %low_life_flask_list%
Gui, Font, S9 CDefault Bold, Verdana
Gui, Add, GroupBox, x32 y369 w240 h140 , Auto Loot
Gui, Add, Text, x40 y420 w80 h20 , A
Gui, Add, Text, x40 y450 w80 h20 , Ctrl + A
Gui, Font, norm, 
Gui, Add, Text, x42 y389 w70 h20 , loot color:
Gui, Add, Edit, x112 y389 w100 h20 vlootColor, %lootColor%
Gui, Add, Text, x112 y419 w100 h20 , to quick loot
Gui, Add, Text, x112 y449 w130 h20 , hold to keep looting
Gui, Add, Text, x340 y450 w170 h-10 , (ms)
Gui, Add, Edit, x112 y479 w110 h20 vloot_dalay, %loot_dalay%
Gui, Add, Text, x232 y479 w30 h20 , (ms)
Gui, Font, S9 CDefault Bold, Verdana
Gui, Font, norm, 
Gui, Font, S9 CDefault Bold, Verdana
Gui, Add, GroupBox, x282 y199 w490 h310 +Buttons, Misc
Gui, Add, Text, x302 y229 w190 h20 , Get Pixel Color and Coords
Gui, Font, norm, 
Gui, Add, Text, x522 y229 w210 h20 , Alt + Z on cursor
Gui, Add, Button, x942 y619 w100 h30 , Apply change
Gui, Font, S9 CDefault Bold, Verdana
Gui, Add, Text, x42 y219 w50 h20 , Ctrl + F
Gui, Add, Text, x302 y269 w150 h20 , Auto Walk (lmb hold)
Gui, Add, Text, x302 y309 w130 h20 , Game Logout
Gui, Add, Text, x302 y349 w90 h20 , Go to Hideout
Gui, Add, Text, x302 y389 w220 h20 , Invite to Party by Last Msg
Gui, Add, Text, x302 y429 w220 h20 , Kick from Party by Last Msg
Gui, Add, GroupBox, x462 y59 w310 h120 , Abilities sequences
Gui, Add, GroupBox, x782 y59 w300 h90 , Auto Logout
Gui, Add, Text, x42 y479 w40 h20 , delay:
Gui, Add, Edit, x522 y269 w110 h20 , %life_color%
Gui, Add, Text, x472 y149 w170 h20 , Smoke Mine -> Detonate
Gui, Add, Edit, x112 y549 w110 h20 , %life_color%
Gui, Add, Edit, x522 y309 w110 h20 , %life_color%
Gui, Add, Edit, x522 y389 w110 h20 , %life_color%
Gui, Add, Edit, x522 y429 w110 h20 , %life_color%
Gui, Add, Edit, x522 y349 w110 h20 , %life_color%
Gui, Add, Edit, x642 y269 w110 h20 , %life_color%
Gui, Add, Edit, x642 y309 w110 h20 , %life_color%
Gui, Add, Edit, x242 y549 w110 h20 , %life_color%
Gui, Add, Edit, x642 y389 w110 h20 , %life_color%
Gui, Add, Edit, x642 y429 w110 h20 , %life_color%
Gui, Add, Edit, x642 y349 w110 h20 , %life_color%
Gui, Add, GroupBox, x32 y519 w390 h150 , Open Portal
Gui, Add, Edit, x62 y589 w110 h20 , %life_color%
Gui, Add, Edit, x62 y629 w110 h20 , %life_color%
Gui, Add, Text, x42 y589 w20 h20 , X:
Gui, Add, Text, x42 y629 w20 h20 , Y:
Gui, Add, Text, x302 y469 w170 h20 , Suspend Hotkey
Gui, Add, Text, x522 y469 w70 h20 , F2
Gui, Add, Edit, x472 y79 w110 h20 , %life_color%
Gui, Add, Edit, x642 y79 w110 h20 , %life_color%
Gui, Add, Edit, x472 y119 w110 h20 , %life_color%
Gui, Add, Edit, x642 y119 w110 h20 , %life_color%
; Generated using SmartGUI Creator 4.0
Gui, Show, x285 y119 h695 w1171, New GUI Window
Return

GuiClose:
ExitApp