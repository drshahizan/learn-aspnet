using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace WorldCupOnTheGo
{
    public partial class TeamEdit : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            if (!IsPostBack)
            {
                var Id = Request.QueryString["Id"];
                var Post = Global.Class.GetTeam(Convert.ToInt64(Id));
                if (Post != null)
                {
                    txtName.Text = Post.name;
                }
                else
                {
                    //invalid id
                    Response.Redirect("TeamList.aspx");
                }
            }                
        }

        protected void btnSubmit_Click(object sender, EventArgs e)
        {
            var name = txtName.Text;
            var Id = Request.QueryString["Id"];
            var Team = Global.Class.GetTeam(Convert.ToInt64(Id));

            if (Global.Class.UpdateTeam(Team, name, Convert.ToInt64(Session["userid"])))
            {
                //successfully created
                lblMessage.Text = "Record updated successfully";
            }
            else
            {
                //failed to create new content
                lblMessage.Text = "Failed to update content";
            }
        }

        protected void btnTeamList_Click(object sender, EventArgs e)
        {
            Response.Redirect("TeamList.aspx");
        }
    }
}