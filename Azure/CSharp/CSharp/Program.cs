using System;
using CSharp.Storage;

namespace CSharp
{
    public class Program
    {
        public static void Main(string[] args)
        {
            Console.WriteLine("Hello World");
            StorageAccountHandler.UploadFileToStorageAccount("", "DefaultEndpointsProtocol=https;AccountName=gitlabdemophil;AccountKey=+hFKkoRxSqvvsgghWbRNNMFA6vxLvMx7ax3FR7aTtSqKSj/Qh/3r3OGTNtWzqS1PBQiEwiHWTEkU+AStfCy17w==;EndpointSuffix=core.windows.net", "", "");
        }
    }
    
}   