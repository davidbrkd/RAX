# RAX
## Remove Appx Auto Executable

- [English](#english)
    - [Description](#description)
    - [Compatibility](#compatibility)
    - [Installation](#installation)
- [Español](#español)
    - [Descripción](#descripción)
    - [Compatibilidad](#compatibilidad)
    - [Instalación](#instalación)

## English
### Description
RAX is a powershell tool to regularly check APPX (MS packages) installed on Windows updates, and remove them if required. These app bundles are usually unwanted and considered as bloatware, system junk...
It's especially useful for fresh OS installations or outdated machines.
### Compatibility
Only compatible when PowerShell 5 is present. Windows 10 is the main target at now.
We are working on full compatibility between Windows 10 with PS5 or PS7 and Windows 11 with PS7 (powershell.exe - pwsh.exe), where some CmdLets, as Get-CimInstance with Get-WmiObject, are replacing or having differences.
### Installation
Once we have the project, we look at the installation script plus, the RAX folder with the common tools.  The installer will copy the tools to the current user's directory and schedule RAX to run with the necessary permissions. Inside the RAX folder we have a script to delete the scheduled task.
To carry out the installation we can execute the script directly from the explorer or from Powershell. If you detect problems with the script policies, apply settings on them with Set-ExecutionPolicy.

## Español
### Descripción
RAX es una herramienta de PowerShell para comprobar regularmente APPX (paquetes MS) instalados en las actualizaciones de Windows y eliminarlos si es necesario. Estos paquetes de aplicaciones normalmente son indeseados y se consideran bloatware, basura para el sistema...
Es especialmente útil para instalaciones de SO nuevas o máquinas obsoletas.
### Compatibilidad
Solo compatible cuando PowerShell 5 está presente. Windows 10 es el objetivo principal actualmente.
Estamos trabajando en la compatibilidad total entre Windows 10 con PS5 o PS7 y Windows 11 con PS7, (powershell.exe - pwsh.exe), donde algunos CmdLets, como Get-CimInstance con Get-WmiObject, se reemplazan o tienen diferencias de funcionamiento entre sí.
### Instalación
Una vez tenemos el proyecto, observamos el script de instalación más la carpeta RAX, con las herramientas comunes. El instalador copiará las herramientas al directorio del usuario actual y programará la ejecución de RAX con los permisos necesarios. Dentro de la carpeta RAX tenemos un script para eliminar la tarea programada.
Para realizar la instalación podemos ejecutar directamente el script desde el explorador, o bien desde una Powershell. En caso de detectar problemas con las políticas de scripts, aplique ajustes sobre éstas con Set-ExecutionPolicy.
