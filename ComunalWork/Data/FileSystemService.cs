using MongoDB.Driver;
using MongoDB.Driver.GridFS;

namespace ComunalWork.Data
{
    public static class FileSystemService
    {
        static public void UploadImageToDb(string filename, string path)
        {
            var client = new MongoClient();
            var database = client.GetDatabase("ComunalFiles");
            var gridFS = new GridFSBucket(database);
            using (FileStream fs = new FileStream(path, FileMode.Open))
            {
                gridFS.UploadFromStream(filename, fs);
            }

        }

       
    }
}