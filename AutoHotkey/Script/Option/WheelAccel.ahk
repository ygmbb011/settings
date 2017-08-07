WheelUp::wheelaccel(1)
WheelDown::wheelaccel(0)

wheelaccel(ud){
	global wheelaccelVol
	global wheelaccelCrtUd
	wheeltime := 500
	wheelbase := 1.6
	
	;;回転方向
	wheelkey :=  % ud ? "WheelUp" : "WheelDown"
	
	;;反転を検知
	if(wheelaccelCrtUd != ud){
		wheelaccelVol := 0
		wheelaccelCrtUd := ud
	}
	
	;;リセットタイマーのセット
	SetTimer, wheelaccelini, % -1 * wheeltime
	
	;;ホイールスクロール
	accel := wheelbase ** wheelaccelVol
	Loop, %accel%
	{
		Send,{%wheelkey%}
	}
	wheelaccelVol++
}

wheelaccelini(){
	global wheelaccel_vol := 0
	global wheelaccelCrtUd := 0
}
