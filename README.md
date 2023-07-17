# RAX
## Remove Appx Auto Executable

- [English](#english)
    - [Description](#description)
    - [Compatibility](#compatibility)
- [Español](#español)
    - [Descripción](#descripción)
    - [Compatibilidad](#compatibilidad)

## English
### Description
RAX is a powershell tool to regularly check APPX (MS packages) installed on Windows updates, and remove them if required. These app bundles are usually unwanted and considered as bloatware, system junk...
It's especially useful for fresh OS installations or outdated machines.
### Compatibility
Only compatible when PowerShell 5 is present. Windows 10 is the main target at now.
We are working on full compatibility between Windows 10 with PS5 or PS7 and Windows 11 with PS7 (powershell.exe - pwsh.exe), where some CmdLets, as Get-CimInstance with Get-WmiObject, are replacing or having differences.

## Español
### Descripción
RAX es una herramienta de PowerShell para comprobar regularmente APPX (paquetes MS) instalados en las actualizaciones de Windows y eliminarlos si es necesario. Estos paquetes de aplicaciones normalmente son indeseados y se consideran bloatware, basura para el sistema...
Es especialmente útil para instalaciones de SO nuevas o máquinas obsoletas.
### Compatibilidad
Solo compatible cuando PowerShell 5 está presente. Windows 10 es el objetivo principal actualmente.
Estamos trabajando en la compatibilidad total entre Windows 10 con PS5 o PS7 y Windows 11 con PS7, (powershell.exe - pwsh.exe), donde algunos CmdLets, como Get-CimInstance con Get-WmiObject, se reemplazan o tienen diferencias de funcionamiento entre sí.