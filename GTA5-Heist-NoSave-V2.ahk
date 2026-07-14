#NoEnv
#Persistent
#SingleInstance Force
SendMode Input
SetWorkingDir %A_ScriptDir%
SetBatchLines -1
SetKeyDelay, 0
SetWinDelay, 0
SetControlDelay, 0
SetTitleMatchMode, 2

global RULE_NAME := "GTA5-Heist-Glich by @louzkk"
global REMOTE_IP := "192.81.241.171"

if !A_IsAdmin
{
    Run *RunAs "%A_ScriptFullPath%",, UseErrorLevel
    if ErrorLevel
        MsgBox, 48, Error, This script requires administrator privileges.
    ExitApp
}

OnExit("AppExit")

^F9::
    EnableNoSaving()
return

^F12::
    DisableNoSaving()
return


EnableNoSaving()
{
    global RULE_NAME, REMOTE_IP
    RunWait, %ComSpec% /C netsh advfirewall firewall delete rule name="%RULE_NAME%",, Hide
    RunWait, %ComSpec% /C netsh advfirewall firewall add rule name="%RULE_NAME%" dir=out action=block remoteip="%REMOTE_IP%",, Hide
    if (ErrorLevel)
    {
        MsgBox, 16, Error, Failed to enable No Saving Mode.
        return
    }
    ShowToolTip("NO SAVING MODE ENABLED")
}


DisableNoSaving()
{
    global RULE_NAME
    RunWait, %ComSpec% /C netsh advfirewall firewall delete rule name="%RULE_NAME%",, Hide
    if (ErrorLevel)
    {
        MsgBox, 48, Warning, Failed to remove the firewall rule.
        return
    }
    ShowToolTip("NO SAVING MODE DISABLED")
}


ShowToolTip(Text)
{
    ToolTip, %Text%, 10, 10
    SetTimer, RemoveToolTip, -3000
}

RemoveToolTip:
    ToolTip
return

AppExit()
{
    global RULE_NAME
    RunWait, %ComSpec% /C netsh advfirewall firewall delete rule name="%RULE_NAME%",, Hide
}
