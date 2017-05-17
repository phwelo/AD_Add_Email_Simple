param(
    [Parameter(Mandatory=$true)]
    [string]$UserName
)

Import-Module ActiveDirectory

Try { $Result = Get-ADUser $UserName }
Catch { Throw "User was not found in Active Directory with SAMACCOUNTID of $UserName" }

Set-ADUser $UserName -EmailAddress $Result.UserPrincipalName