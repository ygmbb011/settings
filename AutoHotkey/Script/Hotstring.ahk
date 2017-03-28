#Hotstring EndChars :;`t

::dd::
	FormatTime, TimeString, , yyyyMMdd
	Send, %TimeString%
	return

::d/::
	FormatTime, TimeString, , yyyy/M/d
	Send, %TimeString%
	return

::dd/::
	FormatTime, TimeString, , yyyy/MM/dd
	Send, %TimeString%
	return

::dt::
	FormatTime, TimeString, , yyyyMMdd-HHmmss
	Send, %TimeString%
	return