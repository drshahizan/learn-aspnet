using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Xml.Linq;

namespace WorldCupOnTheGo
{
    public partial class MatchAdd : System.Web.UI.Page
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

                ddlTeamA.DataSource = Global.Class.GetTeamDDL();
                ddlTeamB.DataSource = Global.Class.GetTeamDDL();
                ddlTeamA.DataBind();
                ddlTeamB.DataBind();
            }
        }

        protected void btnMatchList_Click(object sender, EventArgs e)
        {
            Response.Redirect("MatchList.aspx");
        }

        protected void btnSubmit_Click(object sender, EventArgs e)
        {
            var teamA = ddlTeamA.SelectedItem.Value;
            var teamAScore = txtTeamAScore.Text;
            var teamB = ddlTeamB.SelectedItem.Value;
            var teamBScore = txtTeamBScore.Text;
            var matchDate = txtMatchDateTime.Text;

            if (IsValid)
            {
                //successfully created
                Global.Class.InsertMatch(teamA, teamAScore, teamB, teamBScore, matchDate, Convert.ToInt64(Session["userid"]));
                lblMessage.Text = "Record created successfully";
                //Response.Redirect("TeamList.aspx");
            }
            else
            {
                //failed to create new content
                lblMessage.Text = "Failed to create new match";
            }
        }
        protected void DateChange(object sender, EventArgs e)
        {
            txtMatchDateTime.Text = Calendar1.SelectedDate.ToShortDateString();
        }
    }
}