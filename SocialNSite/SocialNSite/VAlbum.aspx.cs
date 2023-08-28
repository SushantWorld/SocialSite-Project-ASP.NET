using SocialNSite.Models;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace SocialNSite
{
    public partial class VAlbum : System.Web.UI.Page
    {
        DS_Album.ALBUMMST2_SELECT11DataTable ADT = new DS_Album.ALBUMMST2_SELECT11DataTable();
        Models.DS_AlbumTableAdapters.ALBUMMST2_SELECT11TableAdapter AAdapter = new Models.DS_AlbumTableAdapters.ALBUMMST2_SELECT11TableAdapter();

        protected void Page_Load(object sender, EventArgs e)
        {
            if (Page.IsPostBack == false)
            {
                ADT = AAdapter.Select_By_EMAIL(Session["vemail"].ToString());
                gvalbum.DataSource = ADT;
                gvalbum.DataBind();

            }
        }

        protected void gvalbum_ItemCommand(object source, DataListCommandEventArgs e)
        {
            Response.Redirect("VGallary.aspx?&aid=" + e.CommandArgument.ToString());
        }
    }
 }
