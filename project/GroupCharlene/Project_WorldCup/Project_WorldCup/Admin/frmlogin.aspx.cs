using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient; 
using System.Configuration; 

namespace Project_WorldCup.Admin
{
    public partial class frmlogin : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void btnLogin_Click(object sender, EventArgs e)
        {
            SqlConnection con = new SqlConnection(ConfigurationManager.ConnectionStrings["ConnectionString"].ToString());

            try
            {
                string uid = txtname.Text;
                string pass = txtpw.Text;
                con.Open();
                string qry = "select * from loginID where UserName='" + uid + "' and Pwd='" + pass + "'";
                string userType = "";

                SqlCommand cmd = new SqlCommand(qry, con);
                SqlDataReader sdr = cmd.ExecuteReader();
                if (sdr.Read())
                {
                    userType = sdr.GetString(5);
                    Session["UserName"] = txtname.Text;

                    if (userType == "admin")
                    {
                        Response.Redirect("Dashboard.aspx");
                    } else
                    {
                        Response.Redirect("../User/frmnews.aspx");
                    }
                }
                else
                {
                    invLbl.Text = "Username and password does not match. Please try again or contact the admin.";
                }
                con.Close();
            }
            catch (Exception ex)
            {
                Response.Write(ex.Message);
            }
        }
    }
}