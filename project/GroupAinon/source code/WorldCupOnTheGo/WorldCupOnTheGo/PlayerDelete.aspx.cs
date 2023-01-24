using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace WorldCupOnTheGo
{
    public partial class PlayerDelete : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {   
            if (!IsPostBack)
            {
                lblMessage.Text = "Are you sure you want to delete this player?";
                var Id = Request.QueryString["Id"];
                if(Id == null)
                {
                    Response.Redirect("TeamList.aspx");
                }
                var player = Global.Class.GetPlayer(Convert.ToInt64(Id));
                txtName.Text = player.name;
                txtJercyNo.Text = player.jercy_no.ToString();

            }
        }
        protected void btnSubmit_Click(object sender, EventArgs e)
        {
            var name = txtName.Text;
            var Id = Request.QueryString["Id"];
            var Player = Global.Class.GetPlayer(Convert.ToInt64(Id));

            if (Global.Class.DeletePlayer(Player))
            {
                //successfully deleted
                lblMessage.Text = "Record deleted successfully";
                Response.Redirect("PlayerAdd.aspx?id=" + Player.team_id);
            }
            else
            {
                //failed to delete
                lblMessage.Text = "Failed to delete player";
            }
        }
    }
}