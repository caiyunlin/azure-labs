$scriptPath = Split-Path -Parent $MyInvocation.MyCommand.Definition

$location = "eastus"
$rg = "lab-function-app-premium-plan-01"

az group create -n $rg -l $location

az deployment group create --name "demoDeploy-$(Get-Date).ToString('yyyyMMddHHmmss')" --resource-group $rg --template-file "$scriptPath\azuredeploy.json" 

