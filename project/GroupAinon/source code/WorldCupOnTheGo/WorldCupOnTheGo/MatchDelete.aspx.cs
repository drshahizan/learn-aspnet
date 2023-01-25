using System;
using System.Collections.Generic;
using System.Globalization;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace WorldCupOnTheGo
{
    public partial class MatchDelete : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            if (!IsPostBack)
            {
                if (Session["email"] == null)
                {
                    Response.Redirect("NoPermission.aspx");
                }

                var Id = Request.QueryString["Id"];
                var model = Global.Class.GetMatch(Convert.ToInt64(Id));
                if (model != null)
                {
                    lblMessage.Text = "Are you sure you want to delete this record?";
                    ddlTeamA.DataSource = Global.Class.GetTeamDDL();
                    ddlTeamB.DataSource = Global.Class.GetTeamDDL();
                    ddlTeamA.DataBind();
                    ddlTeamB.DataBind();
                    ddlTeamA.SelectedValue = model.team_a;
                    ddlTeamB.SelectedValue = model.team_b;
                    ddlTeamA.Enabled = false;
                    ddlTeamB.Enabled = false;

                    txtTeamAScore.Text = model.team_a_score.ToString();
                    txtTeamAScore.Enabled = false;
                    txtTeamBScore.Text = model.team_b_score.ToString();
                    txtTeamBScore.Enabled = false;
                    txtMatchDateTime.Text = model.match_datetime.ToString();
                    txtMatchDateTime.Enabled = false;
                }
                else
                {
                    //invalid id
                    Response.Redirect("MatchList.aspx");
                }
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

            var Id = Request.QueryString["Id"];
            var model = Global.Class.GetMatch(Convert.ToInt64(Id));

            if (Global.Class.DeleteMatch(model))
            {
                //successfully created
                lblMessage.Text = "Record deleted successfully";
                //Response.Redirect("TeamList.aspx");
            }
            else
            {
                //failed to create new content
                lblMessage.Text = "Failed to delete record";
            }
        }
        protected void DateChange(object sender, EventArgs e)
        {
            txtMatchDateTime.Text = Calendar1.SelectedDate.ToShortDateString();

        }
    }
}