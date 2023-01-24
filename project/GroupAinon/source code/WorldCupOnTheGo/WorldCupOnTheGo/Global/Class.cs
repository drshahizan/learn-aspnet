using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI.WebControls;

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
        public static bool InsertContent(string title, string content, FileUpload fuImage, long createdby)
        {
            try
            {
                //store file
                string savePath = "";
                string folderPath = "";
                if (fuImage.HasFile)
                {
                    folderPath = "Upload_Folder\\" + DateTime.Now.ToString("yyyy-dd-M--HH-mm-ss") + "_" + fuImage.FileName;
                    savePath = AppDomain.CurrentDomain.BaseDirectory + folderPath;
                    fuImage.SaveAs(savePath);
                }

                //insert record to model
                var post = new tblPost
                {
                    title = title,
                    content = content,
                    created_date = DateTime.Now,
                    status = "published",
                    created_by = createdby,
                    published_date = DateTime.Now,
                    file_path = folderPath
                };

                //bind record to table post
                WCOTG_DB.tblPosts.Add(post);

                //store record to database
                WCOTG_DB.SaveChanges();
                return true;
            }
            catch (Exception ex)
            {
                return false;
            }

        }
        public static bool UpdateContent(tblPost Post, string title, string content, FileUpload fuImage, long updatedBy)
        {
            try
            {
                //store file
                string savePath = "";
                string folderPath = "";
                if (fuImage.HasFile)
                {
                    folderPath = "Upload_Folder\\" + DateTime.Now.ToString("yyyy-dd-M--HH-mm-ss") + "_" + fuImage.FileName;
                    savePath = AppDomain.CurrentDomain.BaseDirectory + folderPath;
                    fuImage.SaveAs(savePath);
                }

                //update record to model
                Post.title = title;
                Post.content = content;
                Post.updated_date = DateTime.Now;
                Post.status = "published";
                Post.updated_by = updatedBy;
                Post.published_date = DateTime.Now;
                Post.file_path = folderPath;

                //store record to database
                WCOTG_DB.SaveChanges();
                return true;
            }
            catch (Exception ex)
            {
                return false;
            }

        }
        public static bool UpdateTeam(tblTeam Team, string name, long updatedBy)
        {
            try
            {
                
                //update record to model
                Team.name = name;
                Team.updated_date = DateTime.Now;
                Team.updated_by = updatedBy;
                
                //store record to database
                WCOTG_DB.SaveChanges();
                return true;
            }
            catch (Exception ex)
            {
                return false;
            }

        }
        public static bool DeleteTeam(tblTeam Team)
        {
            try
            {

                WCOTG_DB.tblTeams.Remove(Team);
                //store record to database
                WCOTG_DB.SaveChanges();
                return true;
            }
            catch (Exception ex)
            {
                return false;
            }

        }
        public static bool DeletePlayer(tblPlayer Player)
        {
            try
            {

                WCOTG_DB.tblPlayers.Remove(Player);
                //store record to database
                WCOTG_DB.SaveChanges();
                return true;
            }
            catch (Exception ex)
            {
                return false;
            }

        }
        public static bool InsertTeam(string name, long createdby)
        {
            try
            {
                //insert record to model
                var team = new tblTeam
                {
                    name = name,
                    created_date = DateTime.Now,
                    created_by = createdby,
                };

                //bind record to table post
                WCOTG_DB.tblTeams.Add(team);

                //store record to database
                WCOTG_DB.SaveChanges();
                return true;
            }
            catch (Exception ex)
            {
                return false;
            }

        }
        public static bool InsertPlayer(string name, int jercy_no, long teamId, long createdby)
        {
            try
            {
                //insert record to model
                var team = new tblPlayer
                {
                    name = name,
                    jercy_no = jercy_no,
                    created_date = DateTime.Now,
                    created_by = createdby,
                    team_id = teamId
                };

                //bind record to table post
                WCOTG_DB.tblPlayers.Add(team);

                //store record to database
                WCOTG_DB.SaveChanges();
                return true;
            }
            catch (Exception ex)
            {
                return false;
            }

        }
        public static tblTeam GetTeam(long Id)
        {
            try
            {
                //get team
                return WCOTG_DB.tblTeams.Where(d => d.Id == Id).FirstOrDefault();
            }
            catch (Exception ex)
            {
                return null;
            }

        }
        public static List<tblPlayer> GetPlayersInTeam(long Id)
        {
            try
            {
                //get team
                return WCOTG_DB.tblPlayers.Where(d => d.team_id == Id).ToList();
            }
            catch (Exception ex)
            {
                return null;
            }

        }
        public static tblPlayer GetPlayer(long Id)
        {
            try
            {
                //get team
                return WCOTG_DB.tblPlayers.Where(d => d.Id == Id).FirstOrDefault();
            }
            catch (Exception ex)
            {
                return null;
            }

        }
        public static tblPost GetPost(long Id)
        {
            try
            {
                //get post
                return WCOTG_DB.tblPosts.Where(d => d.Id == Id).FirstOrDefault();
            }
            catch (Exception ex)
            {
                return null;
            }

        }
        public static bool DeletePost(long Id)
        {
            try
            {
                //get post
                var post = WCOTG_DB.tblPosts.Where(d => d.Id == Id).FirstOrDefault();

                //delete post
                WCOTG_DB.tblPosts.Remove(post);
                WCOTG_DB.SaveChanges();
                return true;
            }
            catch (Exception ex)
            {
                return false;
            }

        }
    }
}