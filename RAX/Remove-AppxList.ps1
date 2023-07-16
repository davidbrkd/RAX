#Array desde la lectura de blacklist
$blacklist = Get-Content ".\blacklist.txt";

## Obtener listado appxs instaladas. (Rellenar con otras en GUI?)
$appxlist = Get-AppxPackage | Where-Object {$_.NonRemovable -eq $false}

"Blacklist:`t`t" + $blacklist.Count;
"Appx Installed:`t`t" + $appxlist.Count;

## Listado de appxs a desinstalar
$toRemoveList = $blacklist | %{ Get-AppxPackage *$_* };

"Appx to remove:`t`t" + $toRemoveList.Count;
$toRemoveList | %{$_.Name};

## Eliminar las appxs del listado
$toRemoveList | %{ Remove-AppPackage $_ }

#Escribir fecha actual de la ejecución en lastUpdated.log
(Get-Date).toString("MM-dd-yyyy") | Out-File lastExecution.log;