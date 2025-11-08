#NoEnv
SendMode Input
SetWorkingDir %A_ScriptDir%

#SingleInstance Force

SplashTextOn, 200, 50, BG3.ahk, Started

$Pause::ToggleWorldTips()

ToggleWorldTips()
{
	SplashTextOn, 200, 50, BG3.ahk, ToggleWorldTips

	SendInput {ScrollLock Up}

	Sleep, 1

	SendInput {ScrollLock Down}

	SplashTextOff
	return
}

$NumLock:: Suspend

