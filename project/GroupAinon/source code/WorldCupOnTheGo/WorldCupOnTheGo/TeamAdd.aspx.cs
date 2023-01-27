using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace WorldCupOnTheGo
{
    public partial class TeamAdd : System.Web.UI.Page
    {
        //read db instance and set as WCOTG_DB
        static DatabaseEntities WCOTG_DB = new DatabaseEntities();
        protected void Page_Load(object sender, EventArgs e)
        {
            if (!IsPostBack)
            {
                if (Session["email"] == null)
                {
                    Response.Redirect("NoPermission.aspx");
                }
            }
        }

        protected void btnSubmit_Click(object sender, EventArgs e)
        {
            var name = txtName.Text;
            if (IsValid)
            {
                //successfully created
                Global.Class.InsertTeam(name, Convert.ToInt64(Session["userid"]));
                lblMessage.Text = "Record creaated successfully";
                Response.Redirect("TeamList.aspx");
            }
            else
            {
                //failed to create new content
                lblMessage.Text = "Failed to create new content";
            }
        }

        protected void btnTeamList_Click(object sender, EventArgs e)
        {
            Response.Redirect("TeamList.aspx");
        }        
    }
}