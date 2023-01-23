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
        protected void Page_Load(object sender, EventArgs e)
        {
            if (!IsPostBack)
            {

            }
        }

        protected void btnSubmit_Click(object sender, EventArgs e)
        {
            var name = txtName.Text;
            if (Global.Class.InsertTeam(name, Convert.ToInt64(Session["userid"])))
            {
                //successfully created
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