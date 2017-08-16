;When the key is pressed two consecutive times, it calls the function
DoubleShot(functionName){
	intervalTime := 300
	KeyWait, %A_PriorHotKey%
	if(A_PriorHotKey == A_ThisHotKey) && (intervalTime > A_TimeSincePriorHotKey){
		%functionName%()
	}
}