﻿#UseHook
;┌───┬───┬───┬───┬───┬───┬───┬───┬───┬───┬───┬───┬───┬───┬───┐    ┌───┐
;│      │      │      │      │      │      │      │      │      │      │      │      │      │      │      │    │Cmd   │
;│      │      │      │      │      │      │      │      │      │      │      │      │      │      │      │    │Lancher 
;├───┴─┬─┴─┬─┴─┬─┴─┬─┴─┬─┴─┬─┴─┬─┴─┬─┴─┬─┴─┬─┴─┬─┴─┬─┴─┬─┴───┤    ├───┤
;│          │      │      │      │      │      │      │      │      │      │      │      │      │          │    │      │
;│          │      │      │      │      │      │      │      │      │      │      │      │      │          │    │      │
;├─────┴┬──┴┬──┴┬──┴┬──┴┬──┴┬──┴┬──┴┬──┴┬──┴┬──┴┬──┴┬──┴┐        │    └───┘
;│            │      │      │      │      │      │      │      │      │      │      │      │      │        │              
;│            │      │      │      │      │      │      │      │      │      │      │      │      │        │              
;├──────┴─┬─┴─┬─┴─┬─┴─┬─┴─┬─┴─┬─┴─┬─┴─┬─┴─┬─┴─┬─┴─┬─┴─┬─┴───┬┴──┐        
;│                │      │      │      │      │      │      │      │      │      │      │      │          │      │        
;│                │      │      │      │      │      │      │      │      │      │      │      │          │      │        
;├────┬───┼───┴┬──┴┬──┴───┴───┴───┴──┬┴──┬┴───┼───┼───┴─┬───┼───┼───┐
;│        │      │        │      │                                  │      │        │      │          │      │      │      │
;│        │      │        │      │                                  │      │        │      │          │      │      │      │
;└────┴───┴────┴───┴─────────────────┴───┴────┴───┴─────┴───┴───┴───┘
ins::DoubleShot("CmdLancher")

CmdLancher(){
	InputBox, cmd, CmdLancer, , ,130, 100, , , , ,
	cl_%cmd%()
}

cl_open(){
	Send,{Rwin}
	Sleep,300
	Send,^v
}


