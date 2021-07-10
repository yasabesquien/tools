$pass = Read-Host "Enter password" -AsSecureString

New-ADUser -Name "Ansible Service" -AccountPassword $pass -UserPrincipalName ansible -DisplayName "Ansible Service Account" -SamAccountName ansible

Add-ADGroupMember -Identity "Domain admins" -Members ansible

Get-ADGroupMember -Identity "domain admins" | Select-Object name
