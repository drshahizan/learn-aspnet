using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace WorldCupOnTheGo
{
    public partial class ContentDelete : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            if (!IsPostBack) {

                if (Session["email"] == null)
                {
                    Response.Redirect("NoPermission.aspx");
                }

                lblMessage.Text = "Are your sure you want to delete this record?";
                var Id = Request.QueryString["Id"];
                var Post = Global.Class.GetPost(Convert.ToInt64(Id));
                if (Post != null)
                {
                    txtTitle.Text = Post.title;
                    txtContent.Text = Post.content;
                    imCurrentImage.ImageUrl = Post.file_path;
                    imCurrentImage.Width = 150;
                    imCurrentImage.Height = 150;
                }
                else
                {
                    //invalid id
                    Response.Redirect("ContentList.aspx");
                }
            }
        }

        protected void btnSubmit_Click(object sender, EventArgs e)
        {
            var Id = Request.QueryString["Id"];
            if(Global.Class.DeletePost(Convert.ToInt64(Id)))
            {
                Response.Redirect("ContentList.aspx");
            }
            else
            {
                lblMessage.Text = "Failed to delete record.";
            }
        }

        protected void btnContentList_Click(object sender, EventArgs e)
        {
            Response.Redirect("ContentList.aspx");
        }
    }
}