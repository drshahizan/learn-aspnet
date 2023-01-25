using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace WorldCupOnTheGo
{
    public partial class Default : System.Web.UI.Page
    {
        //read db instance and set as WCOTG_DB
        static DatabaseEntities WCOTG_DB = new DatabaseEntities();
        protected void Page_Load(object sender, EventArgs e)
        {
            var searchText = "";
            if (txtSearch.Text != null || txtSearch.Text.Length > 0)
            {
                searchText = txtSearch.Text;
            }
            if (!IsPostBack)
            {                                   
                if (Session["email"] == null)
                {
                    lblDisplayEmail.Text = "";
                    lbGoToContentList.Visible = false;
                    lbGoToMatchList.Visible = false;
                    lbGoToTeamList.Visible = false;
                    lbGoAuditList.Visible = false;
                }
                else
                {
                    lblDisplayEmail.Text = "Hello " + Session["email"];
                    lbGoToContentList.Visible = true;
                    lbGoToMatchList.Visible = true;
                    lbGoToTeamList.Visible = true;
                    lbGoAuditList.Visible = true;
                }
                lvContent.DataSource = Global.Class.GetContent(searchText);
                lvContent.DataBind();

                lvMatches.DataSource = Global.Class.GetMatch(searchText);
                lvMatches.DataBind();
            }
            else
            {
                lvContent.DataSource = Global.Class.GetContent(searchText);
                lvContent.DataBind();

                lvMatches.DataSource = Global.Class.GetMatch(searchText);
                lvMatches.DataBind();
            }

        }

        protected void lbGoToContentList_Click(object sender, EventArgs e)
        {
            Response.Redirect("ContentList.aspx");
        }

        protected void lbGoToContentAdd_Click(object sender, EventArgs e)
        {
            Response.Redirect("ContentAdd.aspx");
        }

        protected void lbGoToTeamList_Click(object sender, EventArgs e)
        {
            Response.Redirect("TeamList.aspx");
        }

        protected void lbGoToMatchList_Click(object sender, EventArgs e)
        {
            Response.Redirect("MatchList.aspx");
        }
        protected void ManageContent_Click(object sender, EventArgs e)
        {
            LinkButton lnkbtn = (LinkButton)sender;
            switch (lnkbtn.CommandName)
            {
                case "EditLink":
                    Response.Redirect("ContentEdit.aspx?id=" + lnkbtn.CommandArgument.ToString());
                    break;
                case "ViewLink":
                    Response.Redirect("ContentView.aspx?id=" + lnkbtn.CommandArgument.ToString());
                    break;
            }
        }

        protected void lbGoAuditList_Click(object sender, EventArgs e)
        {
            Response.Redirect("AuditList.aspx");
        }
    }
}