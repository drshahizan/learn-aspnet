using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace WorldCupOnTheGo
{
    public partial class ContentAdd : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            if (!IsPostBack)
            {
                if (Session["email"] == null)
                {
                    Response.Redirect("Default.aspx");
                }
            }
        }

        protected void btnSubmit_Click(object sender, EventArgs e)
        {
            var title = txtTitle.Text;
            var content = txtContent.Text;

            if (Global.Class.InsertContent(title, content, fuImage, Convert.ToInt64(Session["userid"])))
            {
                //successfully created
                lblMessage.Text = "Record creaated successfully";
            }
            else
            {
                //failed to create new content
                lblMessage.Text = "Failed to create new content";
            }
        }
        protected void btnContentList_Click(object sender, EventArgs e)
        {
            Response.Redirect("ContentList.aspx");
        }
    }
}