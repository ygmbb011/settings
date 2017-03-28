WheelUp::wheelaccel(0)
WheelDown::wheelaccel(1)

wheelaccel(ud){
	global wheelaccel_vol
	wheeltime := 500
	wheelbase := 1.6

	wheelud := ud ? "WheelDown" : "WheelUp"
	SetTimer, wheelaccelini, % -1 * wheeltime
	
	accel := wheelbase ** wheelaccel_vol
	Loop, %accel%
	{
		Send,{%wheelud%}
	}
	wheelaccel_vol++
}

wheelaccelini(){
	global wheelaccel_vol := 0
}
