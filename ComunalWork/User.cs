using MongoDB.Bson;
using MongoDB.Bson.Serialization.Attributes;

namespace ComunalWork
{
    public class User
    {
        private string login;
        private string password;
        private string FIO;
       
        private string email;
        private string role;
        private string post;
        private string phone;

        public User(string login, string password, string fio, string email, string role, string post, string phone)
        {
            this.login = login;
            this.password = password;
            this.Fio = fio;
            this.email = email;
            this.role = role;
            this.post = post;
            this.phone = phone;
        }

        [BsonId]
        public ObjectId Id { get; set; }
        public string Login { get => login; set => login = value; }
        public string Password { get => password; set => password = value; }
        public string Fio { get => FIO; set => FIO = value; }
        public string Email { get => email; set => email = value; }
        public string Role { get => role; set => role = value; }
        public string Post { get => post; set => post = value; }
        public string Phone { get => phone; set => phone = value; }
    }
}
