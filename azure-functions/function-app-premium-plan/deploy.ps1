$scriptPath = Split-Path -Parent $MyInvocation.MyCommand.Definition

$now = (Get-Date).ToString('yyyyMMddHHmmss')
$location = "eastus"
$rg = "lab-function-app-premium-plan-01"

az group create -n $rg -l $location

az deployment group create --name "demoDeploy-$now" --resource-group $rg --template-file "$scriptPath\azuredeploy.json" --parameters "$scriptPath\azuredeploy.parameters.json" --debug

