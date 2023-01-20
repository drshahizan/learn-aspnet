using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;

namespace WorldCupOnTheGo.Global
{
    public class Class
    {
        static DatabaseEntities WCOTG_DB = new DatabaseEntities();
        public static tblUser CheckLogin(string email, string password)
        {
            var user = WCOTG_DB.tblUsers.Where(d => d.email == email && d.password == password).FirstOrDefault();
            if (user != null)
            {
                //record found, redirect to default page
                return user;
            }
            else
            {
                //record not found, show failed label
                return null;
            }
            
        }
    }
}