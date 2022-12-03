namespace ComunalWork
{

    
     public static class Session
        {
            private static string login = "";
            private static string FIO = "";
           
            private static string email = "";

            public static string Login { get => login; set => login = value; }
            public static string fio { get => FIO; set => FIO = value; }
           
            public static string Email { get => email; set => email = value; }
        }
}
