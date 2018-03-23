<#$WshShell = New-Object -ComObject WScript.Shell
$Shortcut = $WshShell.CreateShortcut("$Home\Desktop\Calc.lnk")
$Shortcut.TargetPath = "Calc"
$Shortcut.Save()
$val = Get-ItemProperty -Path hklm:software\microsoft\windows\currentversion\policies\system -Name "EnableLUA"
if($val.EnableLUA -ne 0)
{
 set-itemproperty -Path hklm:software\microsoft\windows\currentversion\policies\system -Name "EnableLUA" -value 0
}#>
Copy-Item -Path