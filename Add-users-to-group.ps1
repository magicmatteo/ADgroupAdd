
Import-Csv -Path ".\data.csv" | % {

    $group = $_.class
    $user = Get-ADUser $_.user

    Add-ADGroupMember -Identity $group -Members $user
    Write-Host "Added $user to group $group"
}