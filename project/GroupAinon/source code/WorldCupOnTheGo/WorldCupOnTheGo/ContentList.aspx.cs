using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace WorldCupOnTheGo
{
    public partial class ContentList : System.Web.UI.Page
    {
        //read db instance and set as WCOTG_DB
        static DatabaseEntities WCOTG_DB = new DatabaseEntities();

        protected void Page_Load(object sender, EventArgs e)
        {
            if (!IsPostBack)
            {
                lvContent.DataSource = WCOTG_DB.tblPosts.ToList();
                lvContent.DataBind();
            }
                
        }
        protected void ManageContent_Click(object sender, EventArgs e)
        {
            LinkButton lnkbtn = (LinkButton)sender;
            switch (lnkbtn.CommandName)
            {
                case "EditLink":
                    Response.Redirect("ContentEdit.aspx?id=" + lnkbtn.CommandArgument.ToString());
                    break;
                case "DeleteLink":
                    Response.Redirect("ContentDelete.aspx?id=" + lnkbtn.CommandArgument.ToString());
                    break;
            }
        }
        protected void btnAddContent_Click(object sender, EventArgs e)
        {
            Response.Redirect("ContentAdd.aspx");
        }
    }
}