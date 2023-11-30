# Connects to Azure using a managed identity
Connect-AzAccount -Identity 

# Disables warnings
Update-AzConfig -DisplayBreakingChangeWarning $false

# Imports necessary modules
Import-Module Az.Sql

# Defines environment variables
$resourceGroupName = "homolog"
$serverName = "homolog"
$databaseName = "homolog"
$edition = "Premium"
$requestedServiceObjectiveName = "P1"

# Resizes the database
Set-AzSqlDatabase -ResourceGroupName $resourceGroupName -ServerName $serverName -DatabaseName $databaseName -Edition $edition -RequestedServiceObjectiveName $requestedServiceObjectiveName

# Prints a success message
Write-Host "The database $databaseName has been successfully resized to $edition/$requestedServiceObjectiveName"

