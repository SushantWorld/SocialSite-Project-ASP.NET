using SocialNSite.Models;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace SocialNSite
{
    public partial class Album : System.Web.UI.Page
    {
        DS_Album.ALBUMMST2_SELECT11DataTable ADT = new DS_Album.ALBUMMST2_SELECT11DataTable();
        Models.DS_AlbumTableAdapters.ALBUMMST2_SELECT11TableAdapter AAdapter = new Models.DS_AlbumTableAdapters.ALBUMMST2_SELECT11TableAdapter();
        protected void Page_Load(object sender, EventArgs e)
        {
            if (Page.IsPostBack == false)
            {
                ADT = AAdapter.Select_By_EMAIL(Session["email"].ToString());
                gvalbum.DataSource = ADT;
                gvalbum.DataBind();
            }
        }

        protected void btnaddalbum_Click(object sender, EventArgs e)
        {
            FileUpload2.SaveAs(Server.MapPath("~/Aimg/") + FileUpload2.FileName);

            AAdapter.Insert(txtaname.Text, "", "~/Aimg/" + FileUpload2.FileName, Session["email"].ToString());
            Label1.Text = "Album Created";
            txtaname.Text = "";

            ADT = AAdapter.Select_By_EMAIL(Session["email"].ToString());
            gvalbum.DataSource = ADT;
            gvalbum.DataBind();
        }

        protected void gvalbum_ItemCommand(object source, DataListCommandEventArgs e)
        {
            if (e.CommandName == "Del")
            {
                AAdapter.Delete(Convert.ToInt32(e.CommandArgument.ToString()));
                ADT = AAdapter.Select_By_EMAIL(Session["email"].ToString());
                gvalbum.DataSource = ADT;
                gvalbum.DataBind();
            }
            else if (e.CommandName == "View")
            {
                Response.Redirect("Gallay.aspx?&aid=" + e.CommandArgument.ToString());
            }
        }
    }
}