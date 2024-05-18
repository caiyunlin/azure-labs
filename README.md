# azure-labs
Azure Labs contains the templates used to create Azure test environment quickly.

## Instructions

1. Click folder enter and it will show the README.md content in the sub-folder
2. Click on "Deploy to Azure" button
3. Update the parameters accordingly 
4. Click on "Review + create" and then "Create" to deploy the related resources

## Convention
1. Each lab inside one resource group, once the lab test is completed, clean up the resource group
2. For conponent name, use prefix + uniqueString , e.g. `[concat('ContainerAppEnv-', uniqueString(resourceGroup().id))]`
3. Provide the Az CLI / PowerShell script to deploy the lab from local

## References 
- https://github.com/Azure/azure-quickstart-templates