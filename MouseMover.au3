HotKeySet("+!t", "TestMouseMove") ; Shift-Alt-t

$OriginalX = MouseGetPos(0)
$OriginalY = MouseGetPos(1)

ToolTip("Test functionality with Shift+Alt+t. If it works, i wish you a good sleep", $OriginalX, $OriginalY)
Sleep(10000)
ToolTip("")

While 1
   Sleep(15*60*1000) ;Sleep 15 minutes
   ImNotSleeping()
WEnd

Func TestMouseMove()
    $OriginalX = MouseGetPos(0)
    $OriginalY = MouseGetPos(1)
    MouseMove($OriginalX + 50, $OriginalY, 20)
	MouseMove($OriginalX, $OriginalY, 20)
 EndFunc

 Func ImNotSleeping()
    $OriginalX = MouseGetPos(0)
    $OriginalY = MouseGetPos(1)
    $MoveX = 1
    $MoveY = 1
    MouseMove($OriginalX + $MoveX, $OriginalY, 20)
	Sleep(100)
    MouseMove($OriginalX + $MoveX, $OriginalY + $MoveY, 20)
	Sleep(100)
	MouseMove($OriginalX, $OriginalY + $MoveY, 20)
	Sleep(100)
	MouseMove($OriginalX, $OriginalY, 20)
EndFunc