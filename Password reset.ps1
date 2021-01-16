$newPassword = (Read-Host -Prompt "Provide New Password" -AsSecureString)
$users=Get-Content D:\List.txt
foreach ($i in $users)
{
Set-ADAccountPassword -Identity $i -NewPassword $newPassword -Reset
}