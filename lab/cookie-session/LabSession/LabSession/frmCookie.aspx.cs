using System;
using System.Collections.Generic;
using System.Linq;
using System.Reflection.Emit;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace LabSession
{
    public partial class frmCookie : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void btnCreate_Click(object sender, EventArgs e)
        {
            Response.Cookies["name"].Value = txtCreateCookie.Text;
            Response.Cookies["name"].Expires = DateTime.Now.AddMinutes(2);
            Label1.Text = "Cookie has been Created";
            txtCreateCookie.Text = "";
        }

        protected void btnRetrieve_Click(object sender, EventArgs e)
        {
            if (Request.Cookies["name"] == null)
            {
                txtRetrieve.Text = "We don’t found any Cookie";
            }
            else
            {
                txtRetrieve.Text = Request.Cookies["name"].Value;
            }
        }
    }
}