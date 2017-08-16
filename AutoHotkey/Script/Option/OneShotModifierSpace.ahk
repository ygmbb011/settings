; Optinal Key Map [One Shot Modifier Space]
;┌───┬───┬───┬───┬───┬───┬───┬───┬───┬───┬───┬───┬───┬───┬───┐    ┌───┐
;│      │      │      │      │      │      │      │      │      │      │      │      │      │      │      │    │      │
;│      │      │      │      │      │      │      │      │      │      │      │      │      │      │      │    │      │
;├───┴─┬─┴─┬─┴─┬─┴─┬─┴─┬─┴─┬─┴─┬─┴─┬─┴─┬─┴─┬─┴─┬─┴─┬─┴─┬─┴───┤    ├───┤
;│          │      │      │      │      │      │      │      │      │      │      │      │      │          │    │      │
;│          │      │      │ PgUp │ Home │      │      │      │  ↑  │      │      │      │      │          │    │      │
;├─────┴┬──┴┬──┴┬──┴┬──┴┬──┴┬──┴┬──┴┬──┴┬──┴┬──┴┬──┴┬──┴┐        │    └───┘
;│            │      │      │      │      │      │Back  │      │      │      │      │      │      │        │              
;│            │      │      │ PgDn │ End  │      │Space │  ←  │  ↓  │  →  │      │      │      │        │              
;├──────┴─┬─┴─┬─┴─┬─┴─┬─┴─┬─┴─┬─┴─┬─┴─┬─┴─┬─┴─┬─┴─┬─┴─┬─┴───┬┴──┐        
;│                │      │      │      │      │      │      │      │      │      │      │      │          │      │        
;│                │      │      │      │      │      │      │Enter │      │      │      │      │          │      │        
;├────┬───┼───┴┬──┴┬──┴───┴───┴───┴──┬┴──┬┴───┼───┼───┴─┬───┼───┼───┐
;│        │      │        │      │                                  │      │        │      │          │      │      │      │
;│        │      │        │      │       [One Shot Modifier]        │      │        │      │          │      │      │      │
;└────┴───┴────┴───┴─────────────────┴───┴────┴───┴─────┴───┴───┴───┘
#if osmSpaceDown
;Cousor
*i::Send,% osmSpaceON() ? "{Blind}{Up}" : ""
*j::Send,% osmSpaceON() ? "{Blind}{Left}" : ""
*k::Send,% osmSpaceON() ? "{Blind}{Down}" : ""
*l::Send,% osmSpaceON() ? "{Blind}{Right}" : ""
*e::Send,% osmSpaceON() ? "{Blind}{PgUp}" : ""
*d::Send,% osmSpaceON() ? "{Blind}{PgDn}" : ""
*r::Send,% osmSpaceON() ? "{Blind}{Home}" : ""
*f::Send,% osmSpaceON() ? "{Blind}{End}" : ""

;BackSpace
*h::Send,% osmSpaceON() ? "{Blind}{BS}" : ""
;Enter
*m::Send,% osmSpaceON() ? "{Blind}{Enter}" : ""


#if

*Space::
	global osmSpace := 0
	global osmSpaceDown
	if(osmSpaceDown = 1){
		return
	}
	osmSpaceDown := 1
	osmSpaceDownTime := A_TickCount
	return

*Space Up::
	global osmSpace
	global osmSpaceDown := 0
	if(A_TickCount - osmSpaceDownTime < 500){
		if(osmSpace = 0){
			Send,{Blind}{Space}
		}
	}
	return

osmSpaceON(){
	global osmSpace := 1
	return 1
}
osmSpaceini(){
	global osmSpaceDown := 0
	return
}
