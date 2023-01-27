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
    public partial class frmnews : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void btnSave_Click(object sender, EventArgs e)
        {
            SqlConnection con = new SqlConnection(ConfigurationManager.ConnectionStrings["ConnectionString"].ToString());
            SqlCommand cmd = new SqlCommand("insertNews", con);

            cmd.CommandType = CommandType.StoredProcedure;
            cmd.Parameters.AddWithValue("news", titleTxt.Text);
            cmd.Parameters.AddWithValue("article", contentTxt.Text);

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