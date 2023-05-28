Import-Module PSReadLine

Set-PSReadLineKeyHandler -Chord Tab -Function MenuComplete


$env:HTTP_PROXY = "http://127.0.0.1:8888"
$env:HTTPS_PROXY = "http://127.0.0.1:8888"

oh-my-posh init pwsh --config "$env:POSH_THEMES_PATH\material.omp.json" | Invoke-Expression

# pipenv default venv dir
$Env:WORKON_HOME = "D:\.virtualenvs"
$Env:PIP_CACHE_DIR = "D:\cache"
$Env:PIPENV_CACHE_DIR = "D:\cache"

# diable update check
$Env:POWERSHELL_UPDATECHECK = "Off"
