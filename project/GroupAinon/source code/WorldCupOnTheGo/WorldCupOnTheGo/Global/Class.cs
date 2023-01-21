using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;

namespace WorldCupOnTheGo.Global
{
    public class Class
    {
        //read db instance and set as WCOTG_DB
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
        public static bool InsertContent(string title, string content, long createdby)
        {
            try
            {
                //insert record to model
                var post = new tblPost
                {
                    title = title,
                    content = content,                    
                    created_date = DateTime.Now,
                    status = "published",
                    created_by = createdby,
                    published_date = DateTime.Now,
                };

                //bind record to table post
                WCOTG_DB.tblPosts.Add(post);

                //store record to database
                WCOTG_DB.SaveChanges();
                return true;
            }
            catch(Exception ex)
            {
                return false;
            }
            
        }
    }
}