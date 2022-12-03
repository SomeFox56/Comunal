using MongoDB.Bson.Serialization.Attributes;
using MongoDB.Driver;
using MongoDB.Bson;


namespace ComunalWork
{
    public class Database
    {
        public static string AddDocuments(ObjectId id,string[] ids)
        {
            
            var client = new MongoClient();
            var database = client.GetDatabase("Comunal");
            var collection = database.GetCollection<Project>("Projects");
            var one = collection.Find(x => x.Id == id).FirstOrDefault();
            var first = one.Uploaded_Documents;
            if (first!= null)
            {
                Array.Resize(ref first, first.Length + ids.Length);
                Array.Copy(ids, 0, first, first.Length - ids.Length, ids.Length);
                var update = Builders<Project>.Update.Set("Uploaded_Documents", first);
                collection.UpdateMany(x => x.Id == id, update);
            }
            else
            {
                var update = Builders<Project>.Update.Set("Uploaded_Documents", ids);
                collection.UpdateMany(x => x.Id == id, update);
            }
           

            return "";

        }

        public static string AddConfDocuments(ObjectId id, string[] ids)
        {

            var client = new MongoClient();
            var database = client.GetDatabase("Comunal");
            var collection = database.GetCollection<Project>("Projects");
            var one = collection.Find(x => x.Id == id).FirstOrDefault();
            var first = one.Confirmed_Documents;
            if (first != null)
            {
                Array.Resize(ref first, first.Length + ids.Length);
                Array.Copy(ids, 0, first, first.Length - ids.Length, ids.Length);
                var update = Builders<Project>.Update.Set("Confirmed_Documents", first);
                collection.UpdateMany(x => x.Id == id, update);
            }
            else
            {
                var update = Builders<Project>.Update.Set("Confirmed_Documents", ids);
                collection.UpdateMany(x => x.Id == id, update);
            }
            var result = collection.UpdateOne(
            new BsonDocument("Uploaded_Documents", ids[0]),
            new BsonDocument("$pull", new BsonDocument("Uploaded_Documents", ids[0])));
            


            return "";

        }
        public static string AddRejDocuments(ObjectId id, string[] ids)
        {

            var client = new MongoClient();
            var database = client.GetDatabase("Comunal");
            var collection = database.GetCollection<Project>("Projects");
            var one = collection.Find(x => x.Id == id).FirstOrDefault();
            var first = one.Rejected_Documents;
            if (first != null)
            {
                Array.Resize(ref first, first.Length + ids.Length);
                Array.Copy(ids, 0, first, first.Length - ids.Length, ids.Length);
                var update = Builders<Project>.Update.Set("Rejected_Documents", first);
                collection.UpdateMany(x => x.Id == id, update);
            }
            else
            {
                var update = Builders<Project>.Update.Set("Rejected_Documents", ids);
                collection.UpdateMany(x => x.Id == id, update);
            }
            
            var result = collection.UpdateOne(
           new BsonDocument("Uploaded_Documents", ids[0]),
           new BsonDocument("$pull", new BsonDocument("Uploaded_Documents", ids[0])));


            return "";

        }




        public static string AddToDB(User user)
        {
            var client = new MongoClient();
            var database = client.GetDatabase("Comunal");
            var collection = database.GetCollection<User>("Users");
            var one = collection.Find(x => x.Login == user.Login).FirstOrDefault();


            if (one == null)
            {

                collection.InsertOne(user);
            }
            else
            {
                return "Такой Логин уже существует";
            }
            return "";

        }

        public static string AddProject(Project project)
        {
            var client = new MongoClient();
            var database = client.GetDatabase("Comunal");
            var collection = database.GetCollection<Project>("Projects");
            


           
           collection.InsertOne(project);
           
           
            return "";

        }
        public static User FindOne(string login)
        {
            var client = new MongoClient();
            var database = client.GetDatabase("Comunal");
            var collection = database.GetCollection<User>("Users");
            var one = collection.Find(x => x.Login == login).FirstOrDefault();


            if (one == null)
            {
                return null;

            }
            else
            {
                return one;
            }


        }

        public static List<User> FindForProject1()
        {
            var client = new MongoClient();
            var database = client.GetDatabase("Comunal");
            var collection = database.GetCollection<User>("Users");
            var one = collection.Find(x => x.Role == "Проектировщик").ToList();


            if (one == null)
            {
                return null;

            }
            else
            {
                return one;
            }


        }
        public static List<User> FindForProject2()
        {
            var client = new MongoClient();
            var database = client.GetDatabase("Comunal");
            var collection = database.GetCollection<User>("Users");
            var one = collection.Find(x => x.Role == "Застройщик").ToList();


            if (one == null)
            {
                return null;

            }
            else
            {
                return one;
            }


        }

        public static List<Project> FindProjects(string author)
        {
            var client = new MongoClient();
            var database = client.GetDatabase("Comunal");
            var collection = database.GetCollection<Project>("Projects");
            var one = collection.Find(x => x.Author == author).ToList();


            if (one == null)
            {
                return null;

            }
            else
            {
                return one;
            }


        }

        public static List<Project> FindMyProjects(string human2)
        {
            var client = new MongoClient();
            var database = client.GetDatabase("Comunal");
            var collection = database.GetCollection<Project>("Projects");
            var one = collection.Find(x => x.Human2 == human2).ToList();


            if (one == null)
            {
                return null;

            }
            else
            {
                return one;
            }


        }
        public static List<Project> FindMyProjects1(string human1)
        {
            var client = new MongoClient();
            var database = client.GetDatabase("Comunal");
            var collection = database.GetCollection<Project>("Projects");
            var one = collection.Find(x => x.Human1 == human1).ToList();


            if (one == null)
            {
                return null;

            }
            else
            {
                return one;
            }


        }


        public static Project FindOneProject(ObjectId id)
        {
            var client = new MongoClient();
            var database = client.GetDatabase("Comunal");
            var collection = database.GetCollection<Project>("Projects");
            var one = collection.Find(x => x.Id == id).FirstOrDefault();


            if (one == null)
            {
                return null;

            }
            else
            {
                return one;
            }


        }

    }
}
