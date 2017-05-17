$ActiveDirectoryUsers = get-aduser -SearchBase "OU={Org Unit},DC={Domain},DC={com}" -filter *
foreach($User in $ActiveDirectoryUsers) {
    ./addemail.ps1 $User.samaccountname
}
