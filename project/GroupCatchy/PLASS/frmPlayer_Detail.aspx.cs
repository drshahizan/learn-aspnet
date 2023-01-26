using System;
using System.Web;

namespace PLASS
{
    public partial class frmPlayerDetail : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            if (!HttpContext.Current.User.Identity.IsAuthenticated)
            {
                Response.Redirect("frmPlayer_Detail_Guest?id=" + Request.QueryString["id"], false);
            }
        }

        protected void DetailsView1_PageIndexChanging(object sender, System.Web.UI.WebControls.DetailsViewPageEventArgs e)
        {

        }
    }
}