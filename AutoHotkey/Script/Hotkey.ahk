#UseHook

;Disable Help
F1::return

;Window Close
^q::Send,% WinActive("ahk_class IEFrame") ? "!{F4}" : "!{Space}c"

;This ahk-script Reload
sc07B & F5::Reload


;Cursor
sc07B & i::Send,{Blind}{Up}
sc07B & k::Send,{Blind}{Down}
sc07B & j::Send,{Blind}{Left}
sc07B & l::Send,{Blind}{Right}
sc07B & e::Send,{Blind}{PgDn}
sc07B & d::Send,{Blind}{PgUp}
sc07B & a::Send,{Blind}{Home}
sc07B & vkBBsc027::Send,{Blind}{End}
