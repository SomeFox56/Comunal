using MongoDB.Bson;
using MongoDB.Bson.Serialization.Attributes;

namespace ComunalWork
{
    public class Project
    {
        private string title;
        private string author;
        private string human1;
       
        private string human2;
        private bool[] documents;
        private string[] uploaded_Documents;
        private string[] confirmed_Documents;
        private string[] rejected_Documents;

        public Project(string title, string human1, string human2, bool[] documents, string author, string[] uploaded_Documents = null, string[] confirmed_Documents = null, string[] rejected_Documents = null)
        {
            this.title = title;
            this.author = author;
            this.human1 = human1;
            this.human2 = human2;
            this.documents = documents;
            this.author = author;
            this.uploaded_Documents = uploaded_Documents;
            this.confirmed_Documents = confirmed_Documents;
            this.rejected_Documents = rejected_Documents;
        }
        [BsonId]
        public ObjectId Id { get; set; }
        public string Title { get => title; set => title = value; }
        public string Human1 { get => human1; set => human1 = value; }
        public string Human2 { get => human2; set => human2 = value; }
        public bool[] Documents { get => documents; set => documents = value; }
        public string Author { get => author; set => author = value; }
        public string[] Uploaded_Documents { get => uploaded_Documents; set => uploaded_Documents = value; }
        public string[] Confirmed_Documents { get => confirmed_Documents; set => confirmed_Documents = value; }
        public string[] Rejected_Documents { get => rejected_Documents; set => rejected_Documents = value; }
    }
}
