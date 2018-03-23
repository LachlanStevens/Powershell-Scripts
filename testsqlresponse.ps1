$dataSource = "sv-iscape-06"
$user = "workex"
$password = "workex"
$database = "cwwebapp_training"
$connectionString = "Server=$dataSource;uid=$user; password=$password;Database=$database;Integrated Security=False;"

$query = "SELECT TOP 1000 [Owner_ID] FROM [cwwebapp_training].[dbo].[SR_Service]"


$connection = New-Object System.Data.SqlClient.SqlConnection
$connection.ConnectionString = $connectionString
#$connection.ConnectionString = "Server=$dataSource;Database=$database;Integrated Security=True;"
$connection.Open()
$command = $connection.CreateCommand()
$command.CommandText  = $query

$result = $command.ExecuteReader()

$table = new-object “System.Data.DataTable”
$table.Load($result) 
Write-Output "$result" | Out-File C:\Users\workex\desktop\sql.txt
$format = @{Expression={$_.Id};Label="User Id";width=10},@{Expression={$_.Name};Label="Test"; width=30}
$table | Format-Table $format | Write-Output
#$table | Where-Object {$_.Surname -like "*sson" -and $_.Born -lt 1990} | format-table $format

#$table | Where-Object {$_.Surname -like "*sson" -and $_.Born -lt 1990} | format-table $format | Out-File C:\Users\workex\desktop\sql.txt

$connection.Close()