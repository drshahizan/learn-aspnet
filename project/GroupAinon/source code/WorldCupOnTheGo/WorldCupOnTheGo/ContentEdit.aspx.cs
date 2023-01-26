using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace WorldCupOnTheGo
{
    public partial class ContentEdit : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            if (!IsPostBack)
            {
                if (Session["email"] == null)
                {
                    Response.Redirect("NoPermission.aspx");
                }

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
            var title = txtTitle.Text;
            var content = txtContent.Text;
            var Id = Request.QueryString["Id"];
            var Post = Global.Class.GetPost(Convert.ToInt64(Id));

            if (Global.Class.UpdateContent(Post, title, content, fuImage, Convert.ToInt64(Session["userid"])))
            {
                //successfully created
                lblMessage.Text = "Record updated successfully";
            }
            else
            {
                //failed to create new content
                lblMessage.Text = "Failed to update content";
            }
        }

        protected void btnContentList_Click(object sender, EventArgs e)
        {
            Response.Redirect("ContentList.aspx");
        }
    }
}