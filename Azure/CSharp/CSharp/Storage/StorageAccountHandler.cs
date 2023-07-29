using System;
using System.IO;
using System.Threading.Tasks;
using Azure.Storage.Blobs;

namespace CSharp.Storage
{
    public class StorageAccountHandler
    {
        public static void UploadFileToStorageAccount(string filePath,string connectionString ,string containerName, string blobFolderPath)
        {
            // Create connection to storage account 
            BlobServiceClient blobServiceClient = new BlobServiceClient(connectionString);
            
            // Select the container inside the storage account
            BlobContainerClient blobContainerClient = blobServiceClient.GetBlobContainerClient(containerName);
            
            // Select the folder inside the container 
            string fileName = Path.GetFileName(filePath);
            BlobClient blobClient = blobContainerClient.GetBlobClient($"{blobFolderPath}/{fileName}");
            
            // upload the file
            using (FileStream fileStream = File.OpenRead(filePath))
            {
                blobClient.Upload(fileStream, true);
            }
            
            Console.WriteLine("Upload successful");
        }
    }
}

