#UseHook

;Optional Mouse Button
;For Excel
#IfWinActive ahk_class XLMAIN
	XButton1::Send,^{PgDn}
	XButton2::Send,^{PgUp}
#IfWinActive

;-----------------------------------------------------------------------------------------------------------------------------------------
#include %A_ScriptDir%\Script\Option\WheelAccel.ahk
