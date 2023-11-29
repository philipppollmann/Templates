param location string = 'westeurope'
param functionAppName string = 'DotNETFunctionApp'
param runtimeVersion string = 'dotnet-isolated/7.0'
param storageAccountName string = 'functionAppStorageAccount'

resource storageAccount 'Microsoft.Storage/storageAccounts@2021-04-01' = {
  name: storageAccountName
  location: location
  kind: 'StorageV2'
  sku: {
    name: 'Standard_LRS'
  }
}

resource functionApp 'Microsoft.Web/sites@2021-06-01' = {
  name: functionAppName
  location: location
  properties: {
    serverFarmId: '/subscriptions/<subscription-id>/resourceGroups/<resource-group-name>/providers/Microsoft.Web/serverfarms/<app-service-plan-name>'
    siteConfig: {
      appSettings: [
        {
          name: 'FUNCTIONS_WORKER_RUNTIME'
          value: runtimeVersion
        }
      ]
    }
  }
  dependsOn: [
    storageAccount
  ]
}

output functionAppEndpoint string = functionApp.properties.defaultHostName
