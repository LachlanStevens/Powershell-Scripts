<# setting DNS Options #>
$wmi = Get-WmiObject win32_networkadapterconfiguration -filter "ipenabled = 'true'"
                    <# IP         Subnet Mask #>
$wmi.EnableStatic("10.0.0.15", "255.255.255.0")
                <# Default Gateway #>
$wmi.SetGateways("10.0.0.1", 1)
                        <# Preffered DNS Server #>
$wmi.SetDNSServerSearchOrder("10.0.0.100", "10.0.0.1")