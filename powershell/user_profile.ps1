if ($IsWindows) {
    # Also cover shells launched by applications with an older environment.
    $env:PYTHONUTF8 = '1'
    $env:PYTHONIOENCODING = 'utf-8'
    oh-my-posh init pwsh --config "powerlevel10k_rainbow" | Invoke-Expression
} else {
    $posh_themes_path = Join-Path (brew --prefix oh-my-posh) themes
    oh-my-posh init pwsh --config "$posh_themes_path/powerlevel10k_rainbow.omp.json" | Invoke-Expression
}

Import-Module posh-git
Import-Module Terminal-Icons

# Predictions require an interactive terminal with virtual terminal support.
if ($Host.Name -eq 'ConsoleHost' -and
    $Host.UI.SupportsVirtualTerminal -and
    -not [Console]::IsInputRedirected -and
    -not [Console]::IsOutputRedirected -and
    $env:TERM -ne 'dumb') {
    Set-PSReadLineOption -PredictionSource History
}

# Alias
Set-Alias which Get-Command -Scope Global
