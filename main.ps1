$host.ui.RawUI.WindowTitle = "Creating user accounts"
Write-Output ""
Write-Output “Welcome, Creating user accounts."

$strAdmins = @("companyadmin", "serviceadmin", "Companyadmin", "rmmaadmin")
$strAdminpasswords = @("password", "password", "password", "password")
$strAdmindesc = @("Administrative Account", "Services Administrative Account", "Company Administative account", "NCentral Account for Monitoring use")
$strUsers = @("companyuser", "administrator")
$struserspasswords = @("password", "password")
$strUserdesc = @("Company Techs User Account", "Standard Administator Account")

$totalusers = $strAdmins.Length + $strUsers.Length
Write-Output ""

for ($i=1; $i -lt $strAdmins.length+1; $i++) {
    
    $currentuser = $strAdmins[$i-1]
    $currentpassword = $strAdminpasswords[$i-1]
    $currentdescription = $strAdmindesc[$i-1]

    $percentage = $i / $totalusers * 100
    $percentage = [decimal]::Round($percentage)

    <# Insert creation of admin here #>

    <# Create "SupportIT" Security Group #>
    
    switch($currentuser){

        <# Do different tasks based on user #>
         
        "iscapeadmin" {

            <# Standard Domain Administrator. Assigned to "SupportIT" Security Group created above. #>



        }

        "serviceadmin" {

            <# Standard Domain Administrator to be used by all local services. Assigned to "SupportIT" Security Group created above. #>



        }

        "Companyadmin" {

            <# Domain and Local Adminstator. Assigned to "SupportIT" Security Group created above. #>


        }

        "rmmaadmin" {
            <# Domain Admin without password expiration #>
        }

        default {
            <# Do nothing #>
        }

    }

    Write-Output "User account $i created. $percentage% complete."


}

for ($j=1; $j -lt $strUsers.length+1; $j++) {
    
    $currentuser = $strUsers[$j-1]
    $currentpassword = $struserspasswords[$j-1]
    $currentdescription = $strUserdesc[$j-1]
    
    $percentage = $i / $totalusers * 100
    $percentage = [decimal]::Round($percentage)

    <# Insert creation of user here #>

    switch($currentuser){

        <# Do different tasks based on user #>
         
        "iscapeuser" {
            <# Standard User. Standard Permissions. #>
        }

        "administrator" {
            <# Limited User. No Permissions. #>
        }

        default {
            <# Do nothing #>
        }
            
    }

    Write-Output "User account $i created. $percentage% complete."

    $i++

}
Write-Output ""
$host.ui.RawUI.WindowTitle = "Setting Region and Time Zones"
Write-Output "User account's created. Setting Region and Time Zones."

<# Insert Code to set region and time zone #>

Write-Output ""
$host.ui.RawUI.WindowTitle = "Installing SNMP"
Write-Output "Time Zone and Region Set. Installing SNMP."
Write-Output ""

<# Insert code to install SNMP #>

$host.ui.RawUI.WindowTitle = "Setting Shares"
Write-Output "SNMP Installed. Setting Drive Shares."
Write-Output ""
while(1 -lt 3){
$driveletter = Read-Host “Which Drive Letter would you like to use?”
Write-Output ""
if(!$driveletter.EndsWith(":")){
    $driveletter = $driveletter.Insert(1,":")
}

Write-Output "The Drive Letter you have chosen is: $driveletter "
Write-Output ""
$response1 = Read-Host "Is this correct? (Y/N)"

    if($response1.Equals("Y") -or $response1.Equals("y")){

        $DriveletterExists = Test-Path -Path $driveletter 
        if (-not ($DriveletterExists)) {
            break;
        }
        Write-Output ""
        Write-Output "Drive in Use. Please Select another Drive letter."
        }
       
    Write-Output ""
}

<# Code to set drive #>
Write-Output ""
$host.ui.RawUI.WindowTitle = "Installing N-Able Agent"
Write-Output "Shares Mapped. Installing N-Able Agent"

<# Code to install N-Able Agent #>

Write-Output ""
$host.ui.RawUI.WindowTitle = "Setting DNS Server Information"
Write-Output "Installed N-Able Agent. Setting DNS Server Information"

<# Code to set DNS Server Information #>

Write-Output ""
$host.ui.RawUI.WindowTitle = "Configuring Desktop"
Write-Output "Set DNS Server Information. Configuring Desktop."

<# Code to set up desktop icons. #>
<# C:\Users\workex\AppData\Roaming\Microsoft\Windows\Start Menu\Programs\System Tools #>
<# Code to set up taskbar shortcuts #>


Write-Output ""
Write-Output "Finished setting up desktop. Moving onto setting up VM's"

<# Code to set up VM's #>

Write-Output ""
$host.ui.RawUI.WindowTitle = "Finished"
Write-Output "Finished Installing VM's. Script Exiting."
Write-Output ""