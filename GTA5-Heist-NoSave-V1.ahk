#NoEnv
#Persistent
#SingleInstance Ignore
SendMode Input
SetWorkingDir %A_ScriptDir%
SetKeyDelay 0
SetWinDelay 0
SetBatchLines -1
SetControlDelay 0
SetTitleMatchMode, 2

if not A_IsAdmin 
{
    Run *RunAs "%A_ScriptFullPath%",, UseErrorLevel
    if (ErrorLevel != 0) 
    {
        MsgBox, 48, Error, This script requires administrator privileges! Please run it again with the correct privileges.
    }
    ExitApp
}

OnExit("AppExit")
return

<^f9::
    RunWait netsh advfirewall firewall add rule name="123456" dir=out action=block remoteip="192.81.241.171" ,,hide
    ToolTip, NO SAVING MODE ON, 10, 10
    Sleep 3000
    ToolTip
return

<^f12::
    RunWait netsh advfirewall firewall delete rule name="123456" ,,hide
    ToolTip, NO SAVING MODE OFF, 10, 10
    Sleep 3000
    ToolTip
return

AppExit() {
    RunWait netsh advfirewall firewall delete rule name="123456" ,,hide
}
