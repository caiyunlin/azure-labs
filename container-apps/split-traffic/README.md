# Split Traffic

This page describe the steps to create a lab environment to test Traffic splitting in Azure Container Apps
Public document : https://learn.microsoft.com/en-us/azure/container-apps/traffic-splitting?pivots=azure-cli

## 1. Create Container App Environment
Follow the document https://github.com/azureossd/Container-Apps/tree/master/ContainerAppEnvironment/deploy to create a container app environment

## 2. Create Container App
Use below powershell command to 
```powershell
$rg = "TestResourceGroup"
$loc = "eastus"
$envName = "aca-env"
$appName = "split-traffic-01"
$vnet = "aca-vnet"
$subnet = "infra-subnet"

az containerapp up -n $appName --resource-group $rg -l $loc --environment $envName --image cylin2000/node-app --target-port 8080 --ingress external --query properties.configuration.ingress.fqdn

$revision = $(az containerapp revision list --name $appName -g $rg --query "[0].name" -o tsv)

az containerapp revision set-mode -n $appName -g $rg --mode multiple

az containerapp revision copy -n $appName -g $rg --from-revision $revision --revision-suffix "blue"
az containerapp revision copy -n $appName -g $rg --from-revision $revision --revision-suffix "green"

az containerapp revision deactivate --name $appName --resource-group $rg --revision $revision

$revision = $(az containerapp revision list --name $appName -g $rg --query "[0].name" -o tsv)
az containerapp ingress traffic set --name $appName --resource-group $rg --revision-weight "$revision=20" 

```

## 3. Test Traffic
```powershell
for ($i = 0; $i -lt 10; $i++) {
  1..10 | % -Parallel {Invoke-WebRequest https://split-traffic-01.whitemoss-815e8757.eastus.azurecontainerapps.io}
  Start-Sleep -Seconds 1
}
```