using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Xml.Linq;

namespace WorldCupOnTheGo
{
    public partial class AddPlayer : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            var Id = Request.QueryString["Id"];
            var Team = Global.Class.GetTeam(Convert.ToInt64(Id));
            if (Team != null)
            {
                lblTeamName.Text = Team.name;
            }
            else
            {
                //invalid id
                Response.Redirect("TeamList.aspx");
            }            
        }
    }
}