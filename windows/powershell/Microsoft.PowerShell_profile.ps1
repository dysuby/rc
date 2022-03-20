Import-Module PSReadLine

Set-PSReadLineKeyHandler -Chord Tab -Function MenuComplete


$env:HTTP_PROXY = "http://127.0.0.1:8888"
$env:HTTPS_PROXY = "http://127.0.0.1:8888"

if ($env:__INTELLIJ_COMMAND_HISTFILE__ -or $env:TERM_PROGRAM -eq "vscode") {
    Invoke-Expression (oh-my-posh --init --shell pwsh --config "$(scoop prefix oh-my-posh)/themes/material.omp.json")
}
else {
    Invoke-Expression (oh-my-posh --init --shell pwsh --config "$(scoop prefix oh-my-posh)/themes/sukyun.omp.json")
}
