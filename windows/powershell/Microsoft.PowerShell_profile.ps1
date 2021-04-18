Import-Module PSReadLine
Set-PSReadLineKeyHandler -Chord Tab -Function MenuComplete

if ($env:__INTELLIJ_COMMAND_HISTFILE__ -or $env:TERM_PROGRAM -eq "vscode") {
    Invoke-Expression (oh-my-posh --init --shell pwsh --config "$(scoop prefix oh-my-posh)/themes/material.omp.json")
} else {
    Invoke-Expression (oh-my-posh --init --shell pwsh --config "$(scoop prefix oh-my-posh)/themes/sukyun.omp.json")
}
