Set-Location $PSScriptRoot;
Write-Host "RAx starting";
"RAx starting" > .\event.log;
$PSScriptRoot  >> .\event.log;

try {
    #Obtener fecha de ultima actualización
    $lastUpdatedList = (Get-WmiObject -class win32_quickfixengineering | Sort-Object {$_.InstalledOn -as [datetime]} -Descending);
    $lastUpdated = $lastUpdatedList[0].InstalledOn;

    $toExecute = $true;
    #Comprobar si existe lastExecution.log
    if (Test-Path -Path ".\lastExecution.log") {
        #Comprobar si existe fecha de ejecucion y es posterior a la de actualizacion
        $lastExecution = Get-Content ".\lastExecution.log" | Where-Object { $_ -ne "" };

        "Ultima ejecucion:`t" + $lastExecution;
        "Ultima actualizacion:`t" + $lastUpdated;
        if ( [boolean]($lastExecution -as [DateTime]) ) {
        
            $toExecute = ($lastUpdated -gt [DateTime]$lastExecution);
            #Si hace 15 días que no se ejecuta: debemos tener true para ejecutar
            $toExecute = $toExecute -or (New-TimeSpan -Start $lastExecution -End (Get-Date)).Days -lt 15
        }
    }

    if ($toExecute -eq $true) {
        .\Remove-AppxList.ps1
    }
    else {
        Write-Host "RAX sleeping";
        "RAX sleeping" >> .\event.log;
    }
}
catch {
    $_ >> .\event.log;
    Write-Error $_;
    "Proceso abortado" >> .\event.log;
}