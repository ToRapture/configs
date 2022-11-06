# Add customize configuration to $PROFILE
$user_profile = Join-Path (Split-Path -Parent $MyInvocation.MyCommand.Definition) user_profile.ps1
$head_content = @"
# Auto added by ToRapture/configs
Invoke-Expression $user_profile


"@

$profile_content = Get-Content $PROFILE -Raw
if ($null -eq $profile_content -or !$profile_content.Contains($user_profile)) {
    $head_content + (Get-Content $PROFILE -Raw) | Set-Content $PROFILE
}


if ($IsWindows) {
    # Install oh-my-posh
    winget install JanDeDobbeleer.OhMyPosh -s winget

    # Install scoop
    if (![bool](Get-Command -Name 'scoop' -ErrorAction SilentlyContinue)) {
        # Copied from https://scoop.sh/
        Set-ExecutionPolicy RemoteSigned -Scope CurrentUser # Optional: Needed to run a remote script the first time
        Invoke-RestMethod get.scoop.sh | Invoke-Expression
    }

    # Install scoop commands
    scoop install curl
    scoop install sudo
    scoop install jq
    scoop install less
    scoop install grep
    scoop install fzf
    scoop install ag
}
else {
    brew install jandedobbeleer/oh-my-posh/oh-my-posh
}

# Install Modules
sudo Install-Module posh-git -Force
sudo Install-Module Terminal-Icons -Force
sudo Install-Module z -AllowClobber -Force
sudo Install-Module PSReadLine -AllowClobber -Force
