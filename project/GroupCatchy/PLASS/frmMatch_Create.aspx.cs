using System;
using System.Data.SqlClient;

namespace PLASS
{
    public partial class frmAddMatch : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void btnSubmit_Click(object sender, EventArgs e)
        {

            if (!Page.IsValid)
            {

            }

            using (SqlConnection con = new SqlConnection("Data Source=(LocalDB)\\MSSQLLocalDB;AttachDbFilename=|DataDirectory|\\aspnet-PLASS-20230117081004.mdf;Initial Catalog=aspnet-PLASS-20230117081004;Integrated Security=True;"))
            {
                con.Open();
                using (SqlTransaction trans = con.BeginTransaction())
                {
                    try
                    {
                        // Insert data into main table
                        string insertMainTableQuery = "INSERT INTO match (title, date, number_of_goal, number_of_assist, number_of_yellow_card, number_of_red_card, position_id, jersey_number, is_captain, team_id) VALUES (@title, @date, @number_of_goal, @number_of_assist, @number_of_yellow_card, @number_of_red_card, @position_id, @jersey_number, @is_captain, @team_id); SELECT SCOPE_IDENTITY();";
                        SqlCommand insertMainTableCommand = new SqlCommand(insertMainTableQuery, con, trans);
                        insertMainTableCommand.Parameters.AddWithValue("@title", txtTitle.Text);
                        insertMainTableCommand.Parameters.AddWithValue("@date", txtDate.Text);
                        insertMainTableCommand.Parameters.AddWithValue("@number_of_goal", txtGoal.Text);
                        insertMainTableCommand.Parameters.AddWithValue("@number_of_assist", txtAssist.Text);
                        insertMainTableCommand.Parameters.AddWithValue("@number_of_yellow_card", txtYellowCard.Text);
                        insertMainTableCommand.Parameters.AddWithValue("@number_of_red_card", txtRedCard.Text);
                        insertMainTableCommand.Parameters.AddWithValue("@position_id", ddPosition.SelectedValue);
                        insertMainTableCommand.Parameters.AddWithValue("@jersey_number", txtJerseyNumber.Text);
                        insertMainTableCommand.Parameters.AddWithValue("@is_captain", rbCaptain.SelectedValue);
                        insertMainTableCommand.Parameters.AddWithValue("@team_id", ddTeam.SelectedValue);
                        // Add parameters for other columns
                        int mainTableId = Convert.ToInt32(insertMainTableCommand.ExecuteScalar());

                        // Insert data into pivot table
                        string insertPivotTableQuery = "INSERT INTO player_has_match (player_id, match_id) VALUES (@player_id, @match_id);";
                        SqlCommand insertPivotTableCommand = new SqlCommand(insertPivotTableQuery, con, trans);
                        insertPivotTableCommand.Parameters.AddWithValue("@match_id", mainTableId);
                        insertPivotTableCommand.Parameters.AddWithValue("@player_id", ddPLayer.SelectedValue);
                        // Add parameters for other columns
                        insertPivotTableCommand.ExecuteNonQuery();


                        trans.Commit();
                        lblErrorMessage.Text = "Success";
                        lblErrorMessage.ForeColor = System.Drawing.Color.Green;

                    }
                    catch (Exception ex)
                    {
                        trans.Rollback();
                        lblErrorMessage.Text = ex.Message;
                        lblErrorMessage.ForeColor = System.Drawing.Color.Red;
                        // Log error
                    }
                }
                con.Close();
            }
        }
    }
}