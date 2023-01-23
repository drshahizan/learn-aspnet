using System;
using System.Data.SqlClient;

namespace PLASS
{
    public partial class frmAddPlayer : System.Web.UI.Page
    {


        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void btnSubmit_Click(object sender, EventArgs e)
        {

            SqlConnection con = new SqlConnection("Data Source=(LocalDB)\\MSSQLLocalDB;AttachDbFilename=|DataDirectory|\\aspnet-PLASS-20230117081004.mdf;Initial Catalog=aspnet-PLASS-20230117081004;Integrated Security=True; ");

            con.Open();

            string sqlInsertPlayer = "insert into player (Name, date_of_birth, height_cm, weight_kg, country_id, dominant_foot, estimated_value) values (@Name, @date_of_birth, @height_cm, @weight_kg, @country_id, @dominant_foot,@estimated_value)";

            SqlCommand cmdInsertPlayer = new SqlCommand(sqlInsertPlayer, con);

            cmdInsertPlayer.Parameters.AddWithValue("@Name", txtName.Text);
            cmdInsertPlayer.Parameters.AddWithValue("@date_of_birth", txtDob.Text);
            cmdInsertPlayer.Parameters.AddWithValue("@height_cm", txtHeight.Text);
            cmdInsertPlayer.Parameters.AddWithValue("@weight_kg", txtWeight.Text);
            cmdInsertPlayer.Parameters.AddWithValue("@country_id", ddCountry.SelectedValue);
            cmdInsertPlayer.Parameters.AddWithValue("@dominant_foot", ddDominantFoot.SelectedValue);
            cmdInsertPlayer.Parameters.AddWithValue("@estimated_value", txtEstimatedValue.Text);

            cmdInsertPlayer.ExecuteNonQuery();
            cmdInsertPlayer.Parameters.Clear();

            string country_id = ddCountry.SelectedValue;

            Response.Redirect("frmPlayerListing?id=" + country_id, false);

            con.Close();



        }
    }
}