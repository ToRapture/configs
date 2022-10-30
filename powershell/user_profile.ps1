oh-my-posh init pwsh --config "$env:POSH_THEMES_PATH/markbull.omp.json" | Invoke-Expression

Import-Module posh-git
Import-Module Terminal-Icons

Set-PSReadLineOption -PredictionSource History

# Alias
Set-Alias which Get-Command
