# samp-chatlog-archiver
This is an autohotkey script which archives and organizes chatlogs created by SA-MP. It's an edited version of the script originally created by [Shammy](https://forum.ls-rp.io/memberlist.php?mode=viewprofile&u=34996). The original code can be found [here](https://pastebin.com/ep98VHW1).

My edited version automatically creates the chatlog directory and also improves file organization. Originally, a new chatlog would be created every time a player started their game. This new version checks if a chatlog for the current day already exists and appends new text to it after the game has been closed.

# How To Use
To use this tool, head over to the [releases](https://github.com/TommyB123/samp-chatlog-archiver/releases) page and download the latest version. Once your download has finished, run the program. It will operate in the background and automatically archive your chatlogs!

A small caveat of this program is the fact that it must be manually started every time your computer is turned on. This can be circumvented by copying the program (or creating an application shortcut) to your Windows startup folder.

For Windows 7 users, your startup folder may be found in `C:\ProgramData\Microsoft\Windows\Start Menu\Programs\Startup`
For Windows 8 and above, look in `C:\Users\(Your Windows username)\AppData\Roaming\Microsoft\Windows\Start Menu\Programs\Startup`
