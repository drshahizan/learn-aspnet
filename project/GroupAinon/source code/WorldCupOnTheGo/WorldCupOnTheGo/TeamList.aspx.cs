using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace WorldCupOnTheGo
{
    public partial class TeamList : System.Web.UI.Page
    {
        //read db instance and set as WCOTG_DB
        static DatabaseEntities WCOTG_DB = new DatabaseEntities();
        protected void Page_Load(object sender, EventArgs e)
        {
            if (!IsPostBack)
            {
                lvTeam.DataSource = WCOTG_DB.tblTeams.ToList();
                lvTeam.DataBind();
            }                
        }

        protected void ManageTeam_Click(object sender, EventArgs e)
        {
            LinkButton lnkbtn = (LinkButton)sender;
            switch (lnkbtn.CommandName)
            {
                case "AddPlayerLink":
                    Response.Redirect("PlayerAdd.aspx?id=" + lnkbtn.CommandArgument.ToString());
                    break;
                case "EditLink":
                    Response.Redirect("TeamEdit.aspx?id=" + lnkbtn.CommandArgument.ToString());
                    break;
                case "DeleteLink":
                    Response.Redirect("TeamDelete.aspx?id=" + lnkbtn.CommandArgument.ToString());
                    break;
            }
        }

        protected void btnAddTeam_Click(object sender, EventArgs e)
        {
            Response.Redirect("TeamAdd.aspx");
        }
    }
}