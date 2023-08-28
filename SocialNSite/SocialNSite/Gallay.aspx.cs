using SocialNSite.Models;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace SocialNSite
{
    public partial class Gallay : System.Web.UI.Page
    {
        DS_GALL.GALLERYMST2_SELECT11DataTable GallDT = new DS_GALL.GALLERYMST2_SELECT11DataTable();
        Models.DS_GALLTableAdapters.GALLERYMST2_SELECT11TableAdapter GallAdapter = new Models.DS_GALLTableAdapters.GALLERYMST2_SELECT11TableAdapter();

        protected void Page_Load(object sender, EventArgs e)
        {
            string aid = Request.QueryString["aid"].ToString();
            if (Page.IsPostBack == false)
            {
                GallDT = GallAdapter.Select_By_AID(Convert.ToInt32(aid));
                dlImages.DataSource = GallDT;
                dlImages.DataBind();

                MultiView1.ActiveViewIndex = 0;
                txtname.Text = "";

            }
            Label1.Text = "";
        }

        protected void Button4_Click(object sender, EventArgs e)
        {
            string aid = Request.QueryString["aid"].ToString();
            MultiView1.ActiveViewIndex = 1;

            GallDT = GallAdapter.Select_By_AID(Convert.ToInt32(aid));
            dgmysell.DataSource = GallDT;
            dgmysell.DataBind();

        }

        protected void btnupload_Click(object sender, EventArgs e)
        {
            string aid = Request.QueryString["aid"].ToString();
            FileUpload2.SaveAs(Server.MapPath("~/Gallary/") + FileUpload2.FileName);
            GallAdapter.Insert(Convert.ToInt32(aid), "~/Gallary/" + FileUpload2.FileName, txtname.Text, System.DateTime.Now);

            GallDT = GallAdapter.Select_By_AID(Convert.ToInt32(aid));
            dlImages.DataSource = GallDT;
            dlImages.DataBind();
            Label1.Text = "Image Uploaded";
            MultiView1.ActiveViewIndex = 0;
            txtname.Text = "";

        }

        protected void dgmysell_RowCommand(object sender, GridViewCommandEventArgs e)
        {
            string aid = Request.QueryString["aid"].ToString();
            GallAdapter.Delete(Convert.ToInt32(e.CommandArgument.ToString()));
            GallDT = GallAdapter.Select_By_AID(Convert.ToInt32(aid));
            dgmysell.DataSource = GallDT;
            dgmysell.DataBind(); MultiView1.ActiveViewIndex = 1;

        }
    }
}