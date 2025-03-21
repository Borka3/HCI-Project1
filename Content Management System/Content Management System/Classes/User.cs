using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace Content_Management_System.Classes
{

    [Serializable]
    public enum UserRole
    {
        Visitor,
        Admin
    }
    public class User
    {
        

        public UserRole Role { get; set; }

        public string UserName {  get; set; }
        public string Password {  get; set; }
        public User() { }

        public User(string userName, string password,UserRole userRole)
        {
            UserName = userName;
            Password = password;
            Role = userRole;
        }
        


        
    }
}
