using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace WorldCupOnTheGo
{
    public partial class Login : System.Web.UI.Page
    {
        //read db instance and set as WCOTG_DB
        static DatabaseEntities WCOTG_DB = new DatabaseEntities();

        protected void Page_Load(object sender, EventArgs e)
        {
            if (Session["email"] != null)
            {
                //user already logged in, redirect to default page
                Response.Redirect("default.aspx");
            }            
        }

        public void btnSignIn_Click(object sender, EventArgs e)
        {
            var email = txtEmail.Text;
            var password = txtPassword.Text;

            //check email and password from database
            var user = Global.Class.CheckLogin(email, password);
            if (user != null)
            {
                //record found, redirect to default page
                Session["email"] = user.email;
                Session["role"] = user.role;
                Session["userid"] = user.Id;
                Response.Redirect("default.aspx");
            }
            else
            {
                //record not found, show failed label
                txtEmail.Text = email;
                txtPassword.Text = password;
                lblMessage.Text = "Invalid login";
            }
        }
    }
}