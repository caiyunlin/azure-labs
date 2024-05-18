$scriptPath = Split-Path -Parent $MyInvocation.MyCommand.Definition

$location = "eastus"
$rg = "lab-logic-app-function-app-premium-plan-06"

az group create -n $rg -l $location

$params = '{\"packageUri\":{\"value\":\"https://mystorage0322.blob.core.windows.net/shared/functionapp-dotnet8-http.zip\"}}'
az deployment group create --name "demoDeploy-$((Get-Date).ToString('yyyyMMddHHmmss'))" --resource-group $rg --template-file "$scriptPath\main.bicep" --parameters $params --debug 

# Clean up
# az group delete -n $rg -y --no-wait