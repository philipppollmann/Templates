param location string = 'westeurope'
param storageAccountName string = 'myStorageAccount'
param container1Name string = 'container1'
param container2Name string = 'container2'
param container3Name string = 'container3'
param folder1Name string = 'folder1'
param folder2Name string = 'folder2'


// Storage Account 
resource storageAccount 'Microsoft.Storage/storageAccounts@2021-04-01' = {
  name: storageAccountName
  location: location
  kind: 'StorageV2'
  sku: {
    name: 'Standard_LRS'
  }
}

resource blobService 'Microsoft.Storage/storageAccounts/blobServices@2021-04-01' = {
  name: 'default'
  parent: storageAccount
  properties: {
    cors: []
  }
}

resource container1 'Microsoft.Storage/storageAccounts/blobServices/containers@2021-04-01' = {
  parent: blobService
  name: container1Name
  properties: {
    publicAccess: 'None'
  }
}

resource container2 'Microsoft.Storage/storageAccounts/blobServices/containers@2021-04-01' = {
  parent: blobService
  name: container2Name
  properties: {
    publicAccess: 'None'
  }
}

resource container3 'Microsoft.Storage/storageAccounts/blobServices/containers@2021-04-01' = {
  parent: blobService
  name: container3Name
  properties: {
    publicAccess: 'None'
  }
}


resource folder1 'Microsoft.Storage/storageAccounts/blobServices/containers/directories@2021-04-01' = {
  parent: container1
  name: folder1Name
}

resource folder2 'Microsoft.Storage/storageAccounts/blobServices/containers/directories@2021-04-01' = {
  parent: container1
  name: '${folder1Name}${folder2Name}'
}

output storageAccountName string = storageAccount.name
output container1Name string = container1.name
output container2Name string = container2.name
output container3Name string = container3.name
