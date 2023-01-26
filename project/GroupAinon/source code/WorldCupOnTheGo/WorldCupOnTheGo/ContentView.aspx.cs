using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace WorldCupOnTheGo
{
    public partial class ContentView : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            if (!IsPostBack)
            {
                if (Session["email"] == null)
                {
                    Response.Redirect("Default.aspx");
                }

                var Id = Request.QueryString["Id"];
                var Post = Global.Class.GetPost(Convert.ToInt64(Id));
                if (Post != null)
                {
                    lblTitle.Text = Post.title;
                    lblContent.Text = Post.content;
                    imgFile.ImageUrl = Post.file_path;
                    //txtTitle.Text = Post.title;
                    //txtContent.Text = Post.content;
                    //imCurrentImage.ImageUrl = Post.file_path;
                    //imCurrentImage.Width = 150;
                    //imCurrentImage.Height = 150;
                }
                else
                {
                    //invalid id
                    Response.Redirect("ContentList.aspx");
                }
            }
                
        }

        protected void GoToMainPage_Click(object sender, EventArgs e)
        {
            Response.Redirect("Default.aspx");
        }
    }
}