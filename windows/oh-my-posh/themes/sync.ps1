# oh-my-posh themes
Get-Content $PROFILE | Select-String -Pattern '\$\(scoop prefix oh\-my\-posh\)\/themes\/[\w.]+\.json' -AllMatches | 
ForEach-Object { $_.Matches } | 
ForEach-Object { $_.Value } | 
ForEach-Object {
    Write-Host "copying $_"
    $realPath = $ExecutionContext.InvokeCommand.ExpandString($_)
    Copy-Item $realPath $PSScriptRoot
}
