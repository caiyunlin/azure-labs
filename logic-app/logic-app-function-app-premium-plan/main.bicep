@description('The name of the Azure Function app.')
param functionAppName string = 'functionapp0510'

@description('Storage Account type')
@allowed([
  'Standard_LRS'
  'Standard_GRS'
  'Standard_RAGRS'
])
param storageAccountType string = 'Standard_LRS'

@description('Location for all resources.')
param location string = resourceGroup().location

@description('Location for Application Insights')
param appInsightsLocation string = resourceGroup().location

@description('The language worker runtime to load in the function app.')
@allowed([
  'dotnet'
  'node'
  'python'
  'java'
])
param functionWorkerRuntime string = 'python'

@description('Required for Linux app to represent runtime stack in the format of \'runtime|runtimeVersion\'. For example: \'python|3.9\'')
param linuxFxVersion string = 'python|3.11'

@description('The zip content url.')
param packageUri string = 'https://mystorage0322.blob.core.windows.net/shared/python-function2.zip'

var hostingPlanName = functionAppName
var applicationInsightsName = functionAppName
var storageAccountName = '${uniqueString(resourceGroup().id)}azfunctions'

resource storageAccount 'Microsoft.Storage/storageAccounts@2022-05-01' = {
  name: storageAccountName
  location: location
  sku: {
    name: storageAccountType
  }
  kind: 'Storage'
}

resource hostingPlan 'Microsoft.Web/serverfarms@2022-03-01' = {
  name: hostingPlanName
  location: location
  sku: {
    name: 'Y1'
    tier: 'Dynamic'
    size: 'Y1'
    family: 'Y'
  }
  properties: {
    reserved: true
  }
}

resource applicationInsight 'Microsoft.Insights/components@2020-02-02' = {
  name: applicationInsightsName
  location: appInsightsLocation
  tags: {
    'hidden-link:${resourceId('Microsoft.Web/sites', functionAppName)}': 'Resource'
  }
  properties: {
    Application_Type: 'web'
  }
  kind: 'web'
}

resource functionApp 'Microsoft.Web/sites@2022-03-01' = {
  name: functionAppName
  location: location
  kind: 'functionapp,linux'
  properties: {
    reserved: true
    serverFarmId: hostingPlan.id
    siteConfig: {
      linuxFxVersion: linuxFxVersion
      appSettings: [
        {
          name: 'APPINSIGHTS_INSTRUMENTATIONKEY'
          value: reference(resourceId('Microsoft.Insights/components', functionAppName), '2020-02-02').InstrumentationKey
        }
        {
          name: 'AzureWebJobsStorage'
          value: 'DefaultEndpointsProtocol=https;AccountName=${storageAccountName};EndpointSuffix=${environment().suffixes.storage};AccountKey=${storageAccount.listKeys().keys[0].value}'
        }
        {
          name: 'FUNCTIONS_EXTENSION_VERSION'
          value: '~4'
        }
        {
          name: 'FUNCTIONS_WORKER_RUNTIME'
          value: functionWorkerRuntime
        }
        // {
        //   name: 'WEBSITE_RUN_FROM_PACKAGE'
        //   value: packageUri
        // }
        {
          name: 'SCM_DO_BUILD_DURING_DEPLOYMENT'
          value: 'true'
        }
        {
          name:'ENABLE_ORYX_BUILD'
          value:'true'
        }
      ]
    }
  }
  dependsOn: [
    applicationInsight
  ]
}

resource zipDeploy 'Microsoft.Web/sites/extensions@2022-09-01' = {
  parent: functionApp
  name: 'MSDeploy'
  properties: {
    packageUri: packageUri
    appOffline: true
  }
}


resource functionAppHost 'Microsoft.Web/sites/host@2022-09-01' existing = {
  name: 'default'
  parent: functionApp
}

@description('The name of the logic app to create.')
param logicAppName string = 'logicapptest0510'

@description('A test URI')
var testUri  = 'https://${functionApp.name}.azurewebsites.net/api/HttpTrigger1?code=${functionAppHost.listKeys().masterKey}'

var frequency = 'Hour'
var interval = '1'
var type = 'recurrence'
var actionType = 'http'
var method = 'GET'
var workflowSchema = 'https://schema.management.azure.com/providers/Microsoft.Logic/schemas/2016-06-01/workflowdefinition.json#'

resource stg 'Microsoft.Logic/workflows@2019-05-01' = {
  name: logicAppName
  location: location
  tags: {
    displayName: logicAppName
  }
  properties: {
    definition: {
      '$schema': workflowSchema
      contentVersion: '1.0.0.0'
      parameters: {
        testUri: {
          type: 'string'
          defaultValue: testUri
        }
      }
      triggers: {
        recurrence: {
          type: type
          recurrence: {
            frequency: frequency
            interval: interval
          }
        }
      }
      actions: {
        actionType: {
          type: actionType
          inputs: {
            method: method
            uri: testUri
          }
        }
      }
    }
  }
}




output name string = stg.name
output resourceId string = stg.id
output resourceGroupName string = resourceGroup().name
output location string = location
