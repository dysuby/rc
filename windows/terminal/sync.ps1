# Copy-Item 报了个 ”无法加密指定的文件。“ 的错
Get-Content "$env:USERPROFILE\AppData\Local\Packages\Microsoft.WindowsTerminal_8wekyb3d8bbwe\LocalState\settings.json" > $PSScriptRoot\settings.json
