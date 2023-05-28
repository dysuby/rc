Import-Module PSReadLine

Set-PSReadLineKeyHandler -Chord Tab -Function MenuComplete


$env:HTTP_PROXY = "http://127.0.0.1:8888"
$env:HTTPS_PROXY = "http://127.0.0.1:8888"

Invoke-Expression (oh-my-posh --init --shell pwsh --config "$(scoop prefix oh-my-posh)/themes/material.omp.json")

# pipenv default venv dir
$Env:WORKON_HOME = "D:\.virtualenvs"
$Env:PIP_CACHE_DIR = "D:\cache"
$Env:PIPENV_CACHE_DIR = "D:\cache"

# diable update check
$Env:POWERSHELL_UPDATECHECK = "Off"
