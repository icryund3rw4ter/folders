$directory = Get-ChildItem -Directory

$extension = Read-Host -Prompt "Write the extension of the files that will be moved to its parent directory (write 'all' to move everything)"

foreach($folder in $directory){
    if ($extension -eq "all"){

        Move-Item -Path ".\$folder\*" -Destination ".\" -Force
        
    }
    Move-Item -Path ".\$folder\*$extension" -Destination ".\" -Force
}

exit 0
