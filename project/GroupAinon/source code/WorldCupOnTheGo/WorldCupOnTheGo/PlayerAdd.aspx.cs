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
            if (!IsPostBack)
            {
                var Id = Request.QueryString["Id"];
                var Team = Global.Class.GetTeam(Convert.ToInt64(Id));
                var test = Global.Class.GetPlayersInTeam(Convert.ToInt64(Id)); ;
                lvlPlayerList.DataSource = Global.Class.GetPlayersInTeam(Convert.ToInt64(Id));
                lvlPlayerList.DataBind();

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
        protected void ManageContent_Click(object sender, EventArgs e)
        {
            LinkButton lnkbtn = (LinkButton)sender;
            switch (lnkbtn.CommandName)
            {
                case "EditLink":
                    Response.Redirect("PlayerEdit.aspx?id=" + lnkbtn.CommandArgument.ToString());
                    break;
                case "DeleteLink":
                    Response.Redirect("PlayerDelete.aspx?id=" + lnkbtn.CommandArgument.ToString());
                    break;
            }
        }

        protected void btnAddPlayer_Click(object sender, EventArgs e)
        {
            var name = txtName.Text;
            var jercy_no = Convert.ToInt32(txtJercyNo.Text);
            var Id = Request.QueryString["Id"];

            if (Global.Class.InsertPlayer(name, jercy_no, Convert.ToInt32(Id), Convert.ToInt64(Session["userid"])))
            {
                //successfully created
                lblMessage.Text = "Record creaated successfully";

                //redirect
                Response.Redirect("PlayerAdd.aspx?id=" + Id);
            }
            else
            {
                //failed to create new content
                lblMessage.Text = "Failed to create new content";
            }
        }
    }
}