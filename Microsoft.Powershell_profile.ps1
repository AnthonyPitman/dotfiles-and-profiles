# Set key behavior
Set-PsReadLineKeyHandler -Key Tab -Function MenuComplete
Set-PSReadLineKeyHandler -Key upArrow -Function HistorySearchBackward
Set-PSReadLineKeyHandler -Key downArrow -Function HistorySearchForward
Set-PSReadLineOption -HistorySearchCursorMovesToEnd
Set-PSReadLineOption -PredictionSource History

# Set notepad++ alias
Set-Alias -Name npp -Value 'C:\Program Files\Notepad++\notepad++.exe'

# Find a specific test in text files
function Find-Text {
    $param = $args[0]
    Write-Host -ForegroundColor Green "Info: " -NoNewline
    Write-Host "Searching for $param below $pwd"
    Get-ChildItem -Recurse | Select-String $param -List | Select-Object Path
}

# Change to home directory with the word home
function Home { 
    Set-Location ~
    Write-Host -ForegroundColor Green "Info: " -NoNewline
    Write-Output "Changed to the home directory"
}

# Change to my repository location
function Repo {
    Set-Location ~/source/
    Write-Host -ForegroundColor Green "Info: " -NoNewline
    Write-Host "Changed to my repositories"
}
