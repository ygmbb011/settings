;When the key is pressed two consecutive times, it calls the function
DoubleShot(functionName){
	intervalTime := 300
	KeyWait, %A_PriorHotKey%, D
	if(A_PriorHotKey == A_ThisHotKey) && (intervalTime > A_TimeSincePriorHotKey){
		%functionName%()
	}
}

;Execute the command entered in the text box.
;The command is automatically given the prefix "cl_".
CmdLancher(){
	InputBox, cmd, Lancher, ,HIDE ,130, 100, , , , ,
	cl_%cmd%()
}
