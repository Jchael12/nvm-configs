#Aliases
Set-Alias tt tree
Set-Alias ll ls
Set-Alias g git
Set-Alias vim nvim
Set-Alias grep findstr
Set-Alias lg lazygit


#Prompt

#Functions
function which ($command) { 
  Get-Command -Name $command -ErrorAction SilentlyContinue | 
  Select-Object -ExpandProperty Path -ErrorAction SilentlyContinue
}

#Terminal Icons
Import-Module Terminal-Icons

#PSReadLine
Import-Module PSReadLine
Set-PSReadLineKeyHandler -Key Tab -Function Complete
Set-PSReadLineOption -PredictionViewStyle ListView 
# Invoke-Expression (&starship init powershell)
$omp_config = Join-Path $PSScriptRoot ".\myprofile.omp.json"
oh-my-posh --init --shell pwsh --config $omp_config | Invoke-Expression
