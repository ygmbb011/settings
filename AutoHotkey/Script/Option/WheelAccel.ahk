WheelUp::wheelaccel(1)
WheelDown::wheelaccel(0)

wheelaccel(ud){
	global wheelaccelVol
	global wheelaccelCrtUd
	wheeltime := 500
	
	;;回転方向
	wheelkey :=  % ud ? "WheelUp" : "WheelDown"
	
	;;反転を検知
	if(wheelaccelCrtUd != ud){
		wheelaccelVol := 1
		wheelaccelCrtUd := ud
	}
	
	;;リセットタイマーのセット
	SetTimer, wheelaccelini, % -1 * wheeltime
	
	;;ホイールスクロール
	Loop, %wheelaccelVol%
	{
		Send,{%wheelkey%}
	}
	wheelaccelVol++
}

wheelaccelini(){
	global wheelaccelVol := 1
	global wheelaccelCrtUd := 0
}
