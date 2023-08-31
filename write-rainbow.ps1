function Write-Rainbow {
    param(
        [string] $text
    )
    
    $characters = $text.ToCharArray()
    $charCount = $characters.count
    $charCount = $charCount-1
    $colors = "red","yellow","green","cyan","Magenta","Blue"
    $index = 0
    foreach($character in $characters) {
        if($index -eq $charCount) {
        $color = Get-Random -InputObject $colors
        Write-Host "$character" -ForegroundColor $color
        }
        else{
        $color = Get-Random -InputObject $colors
        Write-Host "$character" -NoNewline -ForegroundColor $color
        $index++
        }
    }
}




