using SocialNSite.Models;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace SocialNSite
{
    public partial class Search : System.Web.UI.Page
    {
        Models.dtregTableAdapters.USERMST_SELECT11TableAdapter radapter = new Models.dtregTableAdapters.USERMST_SELECT11TableAdapter();
        dtreg.USERMST_SELECT11DataTable rdt = new dtreg.USERMST_SELECT11DataTable();
        DS_FRIEND.FRIENDMST2_SELECT1DataTable FDT = new DS_FRIEND.FRIENDMST2_SELECT1DataTable();
        Models.DS_FRIENDTableAdapters.FRIENDMST2_SELECT1TableAdapter FAdapter = new Models.DS_FRIENDTableAdapters.FRIENDMST2_SELECT1TableAdapter();

        protected void Page_Load(object sender, EventArgs e)
        {
            if (Page.IsPostBack == false)
            {

                ViewState["id"] = Request.QueryString["id"].ToString();
                rdt = radapter.Select_SEARCH(ViewState["id"].ToString() + "%", Session["email"].ToString());
                DlistUser.DataSource = rdt;
                DlistUser.DataBind();
                lblsearch.Text = DlistUser.Items.Count.ToString();
            }
        }

        protected void DlistUser_ItemCommand(object source, DataListCommandEventArgs e)
        {
            if (e.CommandName == "pro")
            {
                Session["vemail"] = e.CommandArgument.ToString();
                Response.Redirect("ViewProfile.aspx");
            }
            else if (e.CommandName == "frd")
            {
                FAdapter.Insert(Session["email"].ToString(), e.CommandArgument.ToString(), 0, System.DateTime.Now);

                rdt = radapter.Select_SEARCH(ViewState["id"].ToString() + "%", Session["email"].ToString());
                DlistUser.DataSource = rdt;
                DlistUser.DataBind();
            }

        }
    }
}