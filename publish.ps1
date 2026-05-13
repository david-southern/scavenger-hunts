cd C:\src\scavenger-hunts

try
{
    git add -A

    Write-Host "Here are the files that will be changed:" -ForegroundColor Yellow
    Write-Host "   -- Legend: " -ForegroundColor Gray
    Write-Host "   -- M     : This file has been Modified" -ForegroundColor Gray
    Write-Host "   -- A     : This file has been Added" -ForegroundColor Gray
    Write-Host "   -- D     : This file has been Deleted" -ForegroundColor Gray

    Write-Host " "
    Write-Host " "
    git status --porcelain
    Write-Host " "
    Write-Host "Press Y to publish these changes"
    
    $response = [Console]::ReadKey()

    if($response.Key -eq 'Y') {
        git commit -m "Push website"
        git push

        Write-Host " "
        Write-Host "If there are no errors above then the website is pushed."
        Write-Host "It may take up to 60 seconds to be visible online."
    } else {
        git restore --staged .
        Write-Host "Publish Cancelled"
    }
}
finally {
    git restore --staged .
}

read-host "Press [ENTER] to quit"