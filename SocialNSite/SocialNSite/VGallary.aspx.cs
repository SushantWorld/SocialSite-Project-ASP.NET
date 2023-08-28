using SocialNSite.Models;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace SocialNSite
{
    public partial class VGallary : System.Web.UI.Page
    {
        DS_GALL.GALLERYMST2_SELECT11DataTable GallDT = new DS_GALL.GALLERYMST2_SELECT11DataTable();
        Models.DS_GALLTableAdapters.GALLERYMST2_SELECT11TableAdapter GallAdapter = new Models.DS_GALLTableAdapters.GALLERYMST2_SELECT11TableAdapter();
        DS_Album.ALBUMMST2_SELECT11DataTable ADT = new DS_Album.ALBUMMST2_SELECT11DataTable();
        Models.DS_AlbumTableAdapters.ALBUMMST2_SELECT11TableAdapter AAdapter = new Models.DS_AlbumTableAdapters.ALBUMMST2_SELECT11TableAdapter();

        protected void Page_Load(object sender, EventArgs e)
        {
            string aid = Request.QueryString["aid"].ToString();
            if (Page.IsPostBack == false)
            {
                GallDT = GallAdapter.Select_By_AID(Convert.ToInt32(aid));
                dlImages.DataSource = GallDT;
                dlImages.DataBind();



                ADT = AAdapter.Select_By_AID(Convert.ToInt32(aid));


                lblalbum.Text = ADT.Rows[0]["Aname"].ToString();

            }
        }
    }
}