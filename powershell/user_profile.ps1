if ($IsWindows) {
    oh-my-posh init pwsh --config "powerlevel10k_rainbow" | Invoke-Expression
} else {
    $posh_themes_path = Join-Path (brew --prefix oh-my-posh) themes
    oh-my-posh init pwsh --config "$posh_themes_path/powerlevel10k_rainbow.omp.json" | Invoke-Expression
}

Import-Module posh-git
Import-Module Terminal-Icons

Set-PSReadLineOption -PredictionSource History

# Alias
Set-Alias which Get-Command -Scope Global
