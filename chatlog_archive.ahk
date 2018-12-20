; Set the working directory to the SA-MP directory...
sampdir:=A_MyDocuments . "\GTA San Andreas User Files\SAMP\"
chatlogdir:=A_MyDocuments . "\GTA San Andreas User Files\SAMP\chatlogs\"
SetWorkingDir, %sampdir%

; If we're working in the wrong directory (ie you can't find the SA-MP config file) then return an error and exit.
IfNotExist, sa-mp.cfg
	MsgBox, Error: Could not find SA-MP directory. Expected location: %sampdir%

IfNotExist, sa-mp.cfg 
	return 

IfNotExist, %chatlogdir%
	FileCreateDir, %chatlogdir% . MsgBox, Created directory %chatlogdir%.

Loop
{
	WinWait GTA:SA:MP ; Wait until GTA:SA is launched by SA-MP.
	filename:=A_YYYY . "." . A_MM . "." . A_DD ; Generate the filename based on the time SA-MP is launched.
	WinWaitClose GTA:SA:MP ; Now wait for it to close before continuing.
	ifExist, %chatlogdir%\%filename%.txt ; Check to see if an archived chatlog already exists.
	{
		FileRead, newtext, %sampdir%\chatlog.txt ;Read the text from the current, unarchived chatlog and assign it to a variable.
		FileAppend, %newtext%, %chatlogdir%\%filename%.txt ; Write the new chatlog to the already existing, archived one
	}
	else FileCopy, %sampdir%\chatlog.txt, %chatlogdir%\%filename%.txt ; If a chatlog for the current date doesn't exist, copy the current chatlog to the separate directory with the filename we generated earlier.
}

return