using System;

namespace PLASS
{
    public partial class frmPlayer_Search : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void btnCreate_Click(object sender, EventArgs e)
        {
            Response.Redirect("frmAddPlayer", false);
        }
    }
}