; Optinal Key Map [One Shot Modifier Space]
;┌───┬───┬───┬───┬───┬───┬───┬───┬───┬───┬───┬───┬───┐
;│      │      │      │      │      │      │      │      │      │      │      │      │      │
;│      │      │      │      │      │      │      │      │      │      │      │      │      │
;└───┴───┴───┴───┴───┴───┴───┴───┴───┴───┴───┴───┴───┘
;┌───┬───┬───┬───┬───┬───┬───┬───┬───┬───┬───┬───┬───┬───┬───┐
;│      │      │      │      │      │      │      │      │      │      │      │      │      │      │      │
;│      │      │      │      │      │      │      │      │      │      │      │      │      │      │      │
;├───┴─┬─┴─┬─┴─┬─┴─┬─┴─┬─┴─┬─┴─┬─┴─┬─┴─┬─┴─┬─┴─┬─┴─┬─┴─┬─┴───┤
;│          │      │      │      │      │      │      │      │      │      │      │      │      │          │
;│          │ Zen  │ Han  │ PgUp │ Home │      │      │      │  ↑  │      │      │      │      │          │
;├─────┴┬──┴┬──┴┬──┴┬──┴┬──┴┬──┴┬──┴┬──┴┬──┴┬──┴┬──┴┬──┴┐        │
;│            │      │      │      │      │      │      │      │      │      │      │      │      │        │
;│            │      │      │ PgDn │ End  │      │      │  ←  │  ↓  │  →  │      │      │      │        │
;├──────┴─┬─┴─┬─┴─┬─┴─┬─┴─┬─┴─┬─┴─┬─┴─┬─┴─┬─┴─┬─┴─┬─┴─┬─┴────┤
;│                │      │      │      │      │      │      │      │      │      │      │      │            │
;│                │      │      │      │      │      │      │      │      │      │      │      │            │
;├────┬───┼───┴┬──┴┬──┴───┴───┴───┴──┬┴──┬┴───┼───┼───┴┬─────┘
;│        │      │        │      │                                  │      │        │      │        │
;│        │      │        │      │       [One Shot Modifier]        │      │        │      │        │
;└────┴───┴────┴───┴─────────────────┴───┴────┴───┴────┘
#if osmSpaceDown
;Cousor
*i::Send,% osmSpaceON() ? "{Blind}{Up}":""
*j::Send,% osmSpaceON() ? "{Blind}{Left}":""
*k::Send,% osmSpaceON() ? "{Blind}{Down}":""
*l::Send,% osmSpaceON() ? "{Blind}{Right}":""
*e::Send,% osmSpaceON() ? "{Blind}{PgUp}":""
*d::Send,% osmSpaceON() ? "{Blind}{PgDn}":""
*r::Send,% osmSpaceON() ? "{Blind}{Home}":""
*f::Send,% osmSpaceON() ? "{Blind}{End}":""

;Z/H
*q::Send,% osmSpaceON() ? "{vkF2sc070}{vkF2sc029}{vkF2sc029}":""
*w::Send,% osmSpaceON() ? "{vkF2sc070}{vkF2sc029}":""

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
