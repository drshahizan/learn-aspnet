using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace WorldCupOnTheGo
{
    public partial class MatchList : System.Web.UI.Page
    {
        //read db instance and set as WCOTG_DB
        static DatabaseEntities WCOTG_DB = new DatabaseEntities();
        protected void Page_Load(object sender, EventArgs e)
        {
            if (!IsPostBack)
            {
                if (Session["email"] == null)
                {
                    Response.Redirect("NoPermission.aspx");
                }

                lvMatch.DataSource = Global.Class.GetMatch("");
                lvMatch.DataBind();
            }
        }
        protected void ManageMatch_Click(object sender, EventArgs e)
        {
            LinkButton lnkbtn = (LinkButton)sender;
            switch (lnkbtn.CommandName)
            {
                case "EditLink":
                    Response.Redirect("MatchEdit.aspx?id=" + lnkbtn.CommandArgument.ToString());
                    break;
                case "DeleteLink":
                    Response.Redirect("MatchDelete.aspx?id=" + lnkbtn.CommandArgument.ToString());
                    break;
            }
        }
        protected void btnAddMatch_Click(object sender, EventArgs e)
        {
            Response.Redirect("MatchAdd.aspx");
        }
    }
}