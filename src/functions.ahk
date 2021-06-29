GetMouseColorPos(){  ; Picking color and coords at mouse position.
    MouseGetPos, MouseX, MouseY
    PixelGetColor, color, %MouseX%, %MouseY%
    MsgBox The current cursor position is %MouseX%, %MouseY%, color is %color%.
    return
}

QuickFlask(list){  ; Iterating on string and send its substings which delim by -.
    Loop, parse, list, -
    {
        Send {%A_LoopField%}
        Sleep 50
    }
    return
}

SmokeMine(){
    Send d
    Send r
    sleep 150
    Send d
    sleep 40
    Send d
    return
}