Set-ExecutionPolicy -Scope Process -ExecutionPolicy Unrestricted
Set-Clipboard "C:\Users\Ryan\Desktop\MMS2018-PowerShellCommunityTools\ReverseDSC"
. "C:\Users\Ryan\Downloads\PSDesiredStateConfiguration.Reverse-master\PSDesiredStateConfiguration.Reverse.ps1"

#region
. "C:\Users\Ryan\Downloads\PSDesiredStateConfiguration.Reverse-master\PSDesiredStateConfiguration.Reverse.ps1" -RegistryPaths "HKCU:\Software\7-Zip"
#endregion

