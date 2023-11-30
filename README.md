# Azure SQL Database Resizer
This PowerShell script connects to Azure using a managed identity, disables warnings, and resizes a specified SQL database.

## Prerequisites
Ensure that you have the Azure PowerShell module installed.

## Usage
1. Open PowerShell and run the following commands to connect to Azure using a managed identity and disable warnings:

```powershell
Connect-AzAccount -Identity 
Update-AzConfig -DisplayBreakingChangeWarning $false
Import the required AzureRM.Sql module:
Import-Module Az.Sql
```

2. Set the necessary environment variables:

```powershell
$resourceGroupName = "homologresourcegroup"
$serverName = "homolog"
$databaseName = "homolog"
$edition = "Premium"
$requestedServiceObjectiveName = "P1"
```

3. Perform the database resize:

```powershell
Set-AzSqlDatabase -ResourceGroupName $resourceGroupName -ServerName $serverName -DatabaseName $databaseName -Edition $edition -RequestedServiceObjectiveName $requestedServiceObjectiveName
```

4. View the success message:

```powershell
Write-Host "The database $databaseName has been successfully resized to $edition/$requestedServiceObjectiveName"
```

## Notes
* Ensure you have the necessary permissions to resize the Azure SQL Database.
* Adjust the variables according to your specific environment.

## License
This project is licensed under the MIT License.
