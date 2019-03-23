Set oShell = WScript.CreateObject("WScript.Shell")
Set oProc = oShell.Run("startup.wav",0,false)
Set oProc = oShell.Run("switch1.vbs",0,false)