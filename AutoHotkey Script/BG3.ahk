#NoEnv  ; Recommended for performance and compatibility with future AutoHotkey releases.
; #Warn  ; Enable warnings to assist with detecting common errors.
SendMode Input  ; Recommended for new scripts due to its superior speed and reliability.
SetWorkingDir %A_ScriptDir%  ; Ensures a consistent starting directory.


#SingleInstance Force


; ======================== Begin ===========================
toggleWorldTooltips = Y

; Set your world tooltips key in the BG3 OS options to something other than LAlt.
; I'm using the letter 'y' for example.

; When LAlt is pressed, execute the ToggleWorldTips() function.
$Pause::ToggleWorldTips()

; Toggle function.
ToggleWorldTips()
{
	global toggleWorldTooltips := !toggleWorldTooltips

	if (!toggleWorldTooltips)
	{
		SendInput {y Up}
	}
	else
	{
		SendInput {y Down}
	}

	return
}

; Press NumLock to suspend the script so you can use LAlt normally.
$NumLock:: Suspend
; ========================= End ============================
