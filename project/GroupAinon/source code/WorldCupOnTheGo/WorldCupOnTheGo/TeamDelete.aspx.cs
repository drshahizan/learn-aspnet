using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace WorldCupOnTheGo
{
    public partial class TeamDelete : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            if (!IsPostBack)
            {
                if (Session["email"] == null)
                {
                    Response.Redirect("Default.aspx");
                }

                var Id = Request.QueryString["Id"];
                var Post = Global.Class.GetTeam(Convert.ToInt64(Id));
                if (Post != null)
                {
                    lblMessage.Text = "Are you sure to delete this team?";
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

            if (Global.Class.DeleteTeam(Team))
            {
                //successfully deleted
                lblMessage.Text = "Record deleted successfully";
                Response.Redirect("TeamList.aspx");
            }
            else
            {
                //failed to delete
                lblMessage.Text = "Failed to delete team";
            }
        }

        protected void btnTeamList_Click(object sender, EventArgs e)
        {
            Response.Redirect("TeamList.aspx");
        }
    }
}