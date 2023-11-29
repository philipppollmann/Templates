import { BlobServiceClient, ContainerClient, BlockBlobClient } from "@azure/storage-blob";

async function UploadLocalFile(filePath: string, connectionString: string, containerName: string,blobName: string): Promise<void>{
    // Create a connection to storage account
    const blobServiceClient = BlobServiceClient.fromConnectionString(connectionString);

    // Create container client | Filter the container
    const containerClient = blobServiceClient.getContainerClient(containerName);
    await containerClient.createIfNotExists();

    // create blockblob-client
    const blockBlobClient = containerClient.getBlockBlobClient(blobName);

    const fs = require('fs');
    const readStream = fs.createReadStream(filePath);
    await blockBlobClient.uploadStream(readStream, readStream.bytesRead);

    console.log("Datei wurde hochgeladen");
}

