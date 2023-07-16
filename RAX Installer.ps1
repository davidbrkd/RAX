#Directorio de instalación: $HOME
Copy-Item .\RAX $HOME -Recurse;

#Generar tarea programada: ejecutar Launcher tras inicio de sesión con retardo
$Trigger = New-ScheduledTaskTrigger -AtLogOn -RandomDelay (New-TimeSpan -Minutes 10);
$Action = New-ScheduledTaskAction -Execute "Powershell.exe" -Argument "-NoProfile -NoLogo -NonInteractive -ExecutionPolicy Bypass -File $HOME\RAX\Launcher.ps1";

Register-ScheduledTask -TaskName "Remove-appx Auto eXecutable" -Trigger $Trigger -User $env:USERNAME -Action $Action -RunLevel Highest
