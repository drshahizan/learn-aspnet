using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using System.Data.SqlClient;
using System.Configuration;

namespace Project_WorldCup.User
{
    public partial class Group : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            if (Session["UserName"] == null)
            {
                Response.Redirect("../Admin/frmlogin.aspx");
            }
            else if (Session["UserRole"].Equals("admin"))
            {
                Response.Redirect("../Admin/Dashboard.aspx");
            }
        }

        protected void btnSave_Click(object sender, EventArgs e)
        {
            SqlConnection con = new SqlConnection(ConfigurationManager.ConnectionStrings["ConnectionString"].ToString());
            SqlCommand cmd = new SqlCommand("insertGroup", con);

            cmd.CommandType = CommandType.StoredProcedure;
            cmd.Parameters.AddWithValue("teamGroup", DropDownList1.SelectedValue);
            cmd.Parameters.AddWithValue("Country", DropDownList2.SelectedValue);

            con.Open();

            int k = cmd.ExecuteNonQuery();
            if (k != 0)
            {
                statusLbl.Text = "Successfully added into Database!";
                statusLbl.ForeColor = System.Drawing.Color.DarkViolet;
            }
            else
            {
                statusLbl.Text = "Adding user not successful. Please try again.";
                statusLbl.ForeColor = System.Drawing.Color.DarkRed;
            }

            con.Close();
        }
    }
}