using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace LabSession
{
    public partial class frmSession : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void login_Click(object sender, EventArgs e)
        {
            if (password.Text == "mso123")
            {
                // Storing email to Session variable
                Session["email"] = email.Text;
            }
            //check for session variable which should not be empty
            if (Session["email"] != null)
            {
                // I will display the stored email
                Label1.Text = "Email is stored to the session.";
                Label2.Text = Session["email"].ToString();
            }
        }
    }
}