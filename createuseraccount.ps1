Write-Output “Welcome, Creating user account."
Write-Output "."
$computername = $env:computername   # place computername here for remote access
$username = "rmmadmin"
$password = "Passw0rd"
$desc = "Admin User"


$computer = [ADSI]"WinNT://$computername,computer"
Write-Output ".."
$user = $computer.Create("user", $username)
Write-Output "..."
$user.SetPassword($password)
Write-Output "...."
$user.Setinfo()
Write-Output "....."
$user.description = $desc
$user.setinfo()
Write-Output "......"
$user.UserFlags = 65536
$user.SetInfo()
Write-Output "......."
$group = [ADSI]("WinNT://$computername/administrators,group")
Write-Output "........"
$group.add("WinNT://$username,user")
Write-Output "User account's created. Setting Region and Time Zones."