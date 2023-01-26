using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using System.Data.SqlClient;
using System.Configuration;

namespace Project_WorldCup.Admin
{
    public partial class frmadduser : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            if (Session["UserName"] == null)
            {
                Response.Redirect("frmlogin.aspx");
            }
            else
            {
                // Do whatever you were going to do.
            }
        }

        protected void btnSave_Click(object sender, EventArgs e)
        {
            SqlConnection con = new SqlConnection(ConfigurationManager.ConnectionStrings["ConnectionString"].ToString());
            SqlCommand cmd = new SqlCommand("insertUser", con);

            cmd.CommandType = CommandType.StoredProcedure;
            cmd.Parameters.AddWithValue("UserName", txtName.Text);
            cmd.Parameters.AddWithValue("Pwd", txtPw.Text);
            cmd.Parameters.AddWithValue("user_Role", DropDownList1.SelectedValue);

            con.Open();

            int k = cmd.ExecuteNonQuery();
            if (k != 0)
            {
                statusLbl.Text = "Successfully added into Database!";
                statusLbl.ForeColor = System.Drawing.Color.DarkViolet;
            } else
            {
                statusLbl.Text = "Adding user not successful. Please try again.";
                statusLbl.ForeColor = System.Drawing.Color.DarkRed;
            }

            con.Close();
        }
    }
}