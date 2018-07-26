<#
    
    .SYNOPSIS
        Gets the current log on user for the specified service
    
    .DESCRIPTION
        Gets the current log on user for the specified service

    .NOTES
        This function is pulled directly from the real Microsoft Windows Admin Center

        PowerShell scripts use rights (according to Microsoft):
        We grant you a non-exclusive, royalty-free right to use, modify, reproduce, and distribute the scripts provided herein.

        ANY SCRIPTS PROVIDED BY MICROSOFT ARE PROVIDED “AS IS” WITHOUT WARRANTY OF ANY KIND, EITHER EXPRESSED OR IMPLIED,
        INCLUDING BUT NOT LIMITED TO THE IMPLIED WARRANTIES OF MERCHANTABILITY AND/OR FITNESS OR A PARTICULAR PURPOSE.
    
    .ROLE
        Readers
    
#>
function Get-ServiceLogOnUser {
    param (
        [Parameter(Mandatory = $true)] [string] $serviceName
    )
    
    $regPath = "Registry::HKEY_LOCAL_MACHINE\SYSTEM\CurrentControlSet\Services\$($serviceName)"
    $properties = Get-ItemProperty $regPath -Name ObjectName
    if ($properties -and $properties.ObjectName) {
        $properties.ObjectName
    }
    else {
        "LocalSystem"
    }    
}