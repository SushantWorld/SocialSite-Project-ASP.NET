using SocialNSite.Models;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace SocialNSite
{
    public partial class Main : System.Web.UI.Page
    {
        Models.dtregTableAdapters.USERMST_SELECT11TableAdapter radapter = new Models.dtregTableAdapters.USERMST_SELECT11TableAdapter();
        dtreg.USERMST_SELECT11DataTable rdt = new dtreg.USERMST_SELECT11DataTable();
        DS_POST.POSTMST2_SELECT11DataTable PDT = new DS_POST.POSTMST2_SELECT11DataTable();
        Models.DS_POSTTableAdapters.POSTMST2_SELECT11TableAdapter PAdapter = new Models.DS_POSTTableAdapters.POSTMST2_SELECT11TableAdapter();

        protected void Page_Load(object sender, EventArgs e)
        {
            if (Page.IsPostBack == false)
            {
                PDT = PAdapter.Select_POST(Session["email"].ToString());
                Datalistpost.DataSource = PDT;
                Datalistpost.DataBind();
            }
        }

        protected void txtpost_TextChanged(object sender, EventArgs e)
        {

        }

        protected void btnpst_Click(object sender, EventArgs e)
        {

        }

        protected void Datalistpost_ItemCommand(object source, DataListCommandEventArgs e)
        {
            if (e.CommandName == "like")
            {
                PAdapter.POSTMST2_update_like(Convert.ToInt32(e.CommandArgument.ToString()));
                PDT = PAdapter.Select_POST(Session["email"].ToString());
                Datalistpost.DataSource = PDT;
                Datalistpost.DataBind();

            }
            else if (e.CommandName == "share")
            {
                PDT = PAdapter.Select_By_PID(Convert.ToInt32(e.CommandArgument.ToString()));

                PAdapter.Insert(Session["email"].ToString(), Session["image"].ToString(), PDT.Rows[0]["text"].ToString(), 0, Session["fn"].ToString());



                PDT = PAdapter.Select_POST(Session["email"].ToString());
                Datalistpost.DataSource = PDT;
                Datalistpost.DataBind();

            }
        }
        protected void Button2_Click(object sender, EventArgs e)
        {

            PAdapter.Insert(Session["email"].ToString(), Session["image"].ToString(), txtpost.Text, 0, Session["fn"].ToString());
            txtpost.Text = "";


            PDT = PAdapter.Select_POST(Session["email"].ToString());
            Datalistpost.DataSource = PDT;
            Datalistpost.DataBind();

        }
    }
}