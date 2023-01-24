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
                InsertLog("User login success for " + "email : " + email);
                return user;
            }
            else
            {
                //record not found, show failed label
                InsertLog("User login failed for " + "email : " + email);
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

                InsertLog("Insert content");

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
                InsertLog("Update content");
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
                InsertLog("Update team");
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
                InsertLog("Delete team");
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
                InsertLog("Delete player");
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
                InsertLog("Insert team");
                return true;
            }
            catch (Exception ex)
            {
                return false;
            }

        }
        public static List<ListItem> GetTeamDDL()
        {
            var ret = new List<ListItem>();
            var model = WCOTG_DB.tblTeams.ToList();
            foreach (var item in model)
            {
                ret.Add(new ListItem
                {
                    Text = item.name.ToString(),
                    Value = item.Id.ToString()
                });
            }
            return ret;
        }
        public static List<tblPost> GetContent()
        {
            var ret = new List<ListItem>();
            var model = WCOTG_DB.tblPosts.ToList();
            InsertLog("Get content");
            return model;
        }
        public static List<tblMatch> GetMatch()
        {
            var ret = new List<ListItem>();
            var model = WCOTG_DB.tblMatches.ToList();
            InsertLog("Get match");

            return model;
        }
        public static List<tblAudit> GetAudit()
        {
            var ret = new List<ListItem>();
            var model = WCOTG_DB.tblAudits.ToList();
            InsertLog("Get audit");
            return model;
        }

        public static bool InsertMatch(string teamA, string teamAScore, string teamB, string teamBScore, string matchDate, long createdby)
        {
            try
            {
                //insert record to model
                var match = new tblMatch
                {
                    team_a = teamA,
                    team_b = teamB,
                    team_a_score=Convert.ToInt32(teamAScore),
                    team_b_score= Convert.ToInt32(teamBScore),
                    match_datetime = Convert.ToDateTime(matchDate),
                    created_date = DateTime.Now,
                    created_by = createdby,
                };

                //bind record to table
                WCOTG_DB.tblMatches.Add(match);

                //store record to database
                WCOTG_DB.SaveChanges();
                InsertLog("Insert match");
                return true;
            }
            catch (Exception ex)
            {
                return false;
            }

        }
        public static bool UpdateMatch(tblMatch model, string teamA, string teamAScore, string teamB, string teamBScore, string matchDate, long createdby)
        {
            try
            {
                //update record to model
                model.team_a = teamA;
                model.team_b = teamB;
                model.team_a_score = Convert.ToInt32(teamAScore);
                model.team_b_score = Convert.ToInt32(teamBScore);
                model.match_datetime = Convert.ToDateTime(matchDate);
                model.updated_date = DateTime.Now;
                model.updated_by = createdby;

                //store record to database
                WCOTG_DB.SaveChanges();
                InsertLog("Update match");
                return true;
            }
            catch (Exception ex)
            {
                return false;
            }

        }
        public static bool DeleteMatch(tblMatch model)
        {
            try
            {
                //delete record
                WCOTG_DB.tblMatches.Remove(model);

                //update database
                WCOTG_DB.SaveChanges();
                InsertLog("Delete match");
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
                InsertLog("Insert player");
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
                InsertLog("Get team");
                return WCOTG_DB.tblTeams.Where(d => d.Id == Id).FirstOrDefault();

            }
            catch (Exception ex)
            {
                return null;
            }

        }
        public static tblMatch GetMatch(long Id)
        {
            try
            {
                InsertLog("Get match");
                //get match
                return WCOTG_DB.tblMatches.Where(d => d.Id == Id).FirstOrDefault();
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
                InsertLog("Get player in team");
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
                InsertLog("Get player");
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
                InsertLog("Get post");
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
                InsertLog("Delete post");
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
        public static bool InsertLog(string Action)
        {
            try
            {
                var model = new tblAudit
                {
                    Ip_Address = GetIPAddress(),
                    Action = Action,
                    created_date = DateTime.Now,
                };

                WCOTG_DB.tblAudits.Add(model);
                WCOTG_DB.SaveChanges();
                return true;
            }
            catch (Exception ex)
            {
                return false;
            }

        }
        protected static string GetIPAddress()
        {
            System.Web.HttpContext context = System.Web.HttpContext.Current;
            string ipAddress = context.Request.ServerVariables["HTTP_X_FORWARDED_FOR"];

            if (!string.IsNullOrEmpty(ipAddress))
            {
                string[] addresses = ipAddress.Split(',');
                if (addresses.Length != 0)
                {
                    return addresses[0];
                }
            }

            return context.Request.ServerVariables["REMOTE_ADDR"];
        }
    }
}