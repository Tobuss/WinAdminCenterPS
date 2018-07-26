<#
    
    .SYNOPSIS
        Start a new process on downlevel computer.
    
    .DESCRIPTION
        Start a new process on downlevel computer.

    .NOTES
        This function is pulled directly from the real Microsoft Windows Admin Center

        PowerShell scripts use rights (according to Microsoft):
        We grant you a non-exclusive, royalty-free right to use, modify, reproduce, and distribute the scripts provided herein.

        ANY SCRIPTS PROVIDED BY MICROSOFT ARE PROVIDED “AS IS” WITHOUT WARRANTY OF ANY KIND, EITHER EXPRESSED OR IMPLIED,
        INCLUDING BUT NOT LIMITED TO THE IMPLIED WARRANTIES OF MERCHANTABILITY AND/OR FITNESS OR A PARTICULAR PURPOSE.
    
    .ROLE
        Administrators
    
#>
function Start-ProcessDownlevel {
    param
    (
        [Parameter(Mandatory = $true)]
        [string]
        $commandLine
    )
    
    Set-StrictMode -Version 5.0
    
    Start-Process $commandLine
    
}