using System;
using System.Collections.Generic;
using System.Configuration;
using System.Data.SqlClient;
using System.Data;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace WorldCupOnTheGo
{
    public partial class AuditList : System.Web.UI.Page
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
            }
            BindListView();
        }
        private void BindListView()
        {
            var textSearch = "";
            if (txtSearch.Text != "") textSearch = txtSearch.Text;

            lvAudit.DataSource = Global.Class.GetAudit(null, SortDirection.Descending, textSearch);
            lvAudit.DataBind();
        }
        protected void OnPagePropertiesChanging(object sender, PagePropertiesChangingEventArgs e)
        {
            (lvAudit.FindControl("DataPager1") as DataPager).SetPageProperties(e.StartRowIndex, e.MaximumRows, false);
            this.BindListView();
        }
        protected void lvAudit_Sorting(object sender, ListViewSortEventArgs e)
        {
            var textSearch = "";
            if (txtSearch.Text != "") textSearch = txtSearch.Text;

            e.SortDirection = lvAuditSortDirection(e.SortExpression);

            // Rebind data
            //ProductListView.DataSource =
            //    GetListViewContent(e.SortExpression, e.SortDirection);
            //ProductListView.DataBind();
            lvAudit.DataSource = Global.Class.GetAudit(e.SortExpression, e.SortDirection, textSearch);
            lvAudit.DataBind();
        }
        private SortDirection lvAuditSortDirection(string sortExpression)
        {
            // Store sort expression in viewstate
            SortDirection listViewSortDirection = SortDirection.Ascending;
            if (ViewState["SortExpression"] != null
                && ViewState["SortExpression"].ToString() == sortExpression)
            {
                ViewState["SortExpression"] = null;
                listViewSortDirection = SortDirection.Descending;
            }
            else
            {
                ViewState["SortExpression"] = sortExpression;
            }

            return listViewSortDirection;
        }
    }
}