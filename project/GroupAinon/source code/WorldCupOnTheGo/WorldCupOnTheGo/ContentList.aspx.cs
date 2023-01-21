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
            lvContent.DataSource = WCOTG_DB.tblPosts.ToList();
            lvContent.DataBind();
        }
    }
}