using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace SocialNSite
{
    public partial class Memeoutput : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            Image1.ImageUrl = "~/meme/img/" + Session["uid"].ToString() + "img.jpg";
        }

        protected void Button1_Click(object sender, EventArgs e)
        {
            Response.Redirect("~\\meme\\img\\" + Session["uid"].ToString() + "img.jpg");
            //Response.Redirect(Server.MapPath("~\\meme\\img\\" + Session["uid"].ToString() +"img.jpg"));

        }
    }
}