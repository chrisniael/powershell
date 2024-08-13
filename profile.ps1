$env:TERM = "xterm-256color"
$env:LANG= "en_US.UTF-8"

# For dlv edit command use
$env:EDITOR= "nvim"

Set-Alias -Name grep -Value findstr

# 命令行遇到如下提示：
# 请求被中止: 未能创建 SSL/TLS 安全通道。 
#[Net.ServicePointManager]::SecurityProtocol = "tls12, tls11, tls"

# posh-git
# https://github.com/dahlbyk/posh-git
# 安装
# PowerShellGet\Install-Module posh-git -Scope CurrentUser -Force
# 更新
# PowerShellGet\Update-Module posh-git
Import-Module posh-git

# PSReadLine
# https://github.com/PowerShell/PSReadLine
# 安装
# PowerShellGet\Install-Module PSReadLine -Scope CurrentUser -Force
Import-Module PSReadLine
Set-PSReadLineOption -EditMode Emacs
Set-PSReadLineOption -PredictionSource None

# Terminal-Icons
# https://github.com/devblackops/Terminal-Icons
# 安装
# PowerShellGet\Install-Module Terminal-Icons -Repository PSGallery -Scope CurrentUser -Force
Import-Module Terminal-Icons
# Set-TerminalIconsTheme -DisableIconTheme

# oh-my-posh 
# https://github.com/JanDeDobbeleer/oh-my-posh
# 安装
# winget install JanDeDobbeleer.OhMyPosh -s winget
oh-my-posh init pwsh --config $env:POSH_THEMES_PATH\pure.omp.json | Invoke-Expression
