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

        }

        protected void btnSubmit_Click(object sender, EventArgs e)
        {
            var title = txTitle.Text;
            var content = txtContent.Text;
            if(Global.Class.InsertContent(title, content, Convert.ToInt64(Session["userid"])))
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
    }
}