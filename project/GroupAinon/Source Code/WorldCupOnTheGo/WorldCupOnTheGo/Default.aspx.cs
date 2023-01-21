using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace WorldCupOnTheGo
{
    public partial class Default : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            if (Session["email"] == null)
            {
                lblDisplayEmail.Text = "";
                btnGoToContentList.Visible = false;
                btnGoToContentAdd.Visible = false;
            }
            else
            {
                lblDisplayEmail.Text = "Hello " + Session["email"];
                btnGoToContentList.Visible = true;
                btnGoToContentAdd.Visible = true;
            }
        }

        protected void btnGoToContentList_Click(object sender, EventArgs e)
        {
            Response.Redirect("ContentList.aspx");
        }

        protected void btnGoToContentAdd_Click(object sender, EventArgs e)
        {
            Response.Redirect("ContentAdd.aspx");
        }
    }
}