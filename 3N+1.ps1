
$global:steps = 0


<#
.SYNOPSIS
    Prints 3N+1 for the given number.
.DESCRIPTION
    Returns all the steps in the 3N+1 Loop from number X to 1 and the amount of steps it took.
    Type in the function name "get-3N+1" followed by your choice of number.
.NOTES
    Information or caveats about the function e.g. 'This function is not supported in Linux'
.LINK
    https://en.wikipedia.org/wiki/Collatz_conjecture
.EXAMPLE
    Get-3N+1 5
    
    Returns:
"The number 5
16
8
4
2
1
Finished in 5 Steps"
#>
function get-3N+1
{

    param(
    [Parameter(Mandatory)]
    [Int]$global:number      
         )

process {

Write-host "The number $global:number"

Do{ $global:steps ++
       
    if ($global:number -eq 1) {return write-host "Loop finished at $global:number"}
    elseif ($global:number % 2 -eq 0) { $global:number = $global:number / 2}
    elseif ($global:number % 2 -eq 1) { $global:number = $global:number * 3 + 1}
    Write-Host $global:number 

    }

    While ($global:number -ne 1)
    Write-host "Finished in $steps Steps"

    #Clear
    $global:steps = 0
    $global:number = 0
    }
    
} #Get-3N+1 7
