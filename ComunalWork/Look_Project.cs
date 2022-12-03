using MongoDB.Bson;
using MongoDB.Bson.Serialization.Attributes;
namespace ComunalWork
{
    public class Look_Project
    {
        private static ObjectId id;
       

        public static ObjectId Id { get => id; set => id = value; }

    }
}
