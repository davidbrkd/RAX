Write-Host @"

ooooooooo.    o.          'ooooo.   .ooo 
'888  'Y88.   888.          '8888.  d8'  
 888  .d88'   8 888.          Y888.8b'   
 888ooo88P'   8  '888.         '8888.    
 888'88b.     88ooo8888.      .8PY888b.  
 888  '88b.   8'     '888.   .d8b  '888b.
o888   o88o  o8o     o8888o o888    '888b.
                                            
Welcome to Remove Appx autoeXecutable!
"@

#Directorio de instalación: $HOME
Copy-Item .\RAX $HOME -Recurse;

#Generar tarea programada: ejecutar Launcher tras inicio de sesión con retardo
$Trigger = New-ScheduledTaskTrigger -AtLogOn -RandomDelay (New-TimeSpan -Minutes 10);
$Action = New-ScheduledTaskAction -Execute "cmd.exe" -Argument "/C START /B Powershell.exe -WindowStyle Hidden -NoProfile -NoLogo -NonInteractive -ExecutionPolicy Bypass -File $HOME\RAX\Launcher.ps1";

Register-ScheduledTask -TaskName "Remove-appx Auto eXecutable" -Trigger $Trigger -User $env:USERNAME -Action $Action -RunLevel Highest

Write-Host "RAX installed successfully!"
Pause