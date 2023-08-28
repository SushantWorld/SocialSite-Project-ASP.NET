using SocialNSite.Models;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace SocialNSite
{
    public partial class FriendRqt : System.Web.UI.Page
    {
        Models.dtregTableAdapters.USERMST_SELECT11TableAdapter radapter = new Models.dtregTableAdapters.USERMST_SELECT11TableAdapter();
        dtreg.USERMST_SELECT11DataTable rdt = new dtreg.USERMST_SELECT11DataTable();

        DS_FRIEND.FRIENDMST2_SELECT1DataTable FDT = new DS_FRIEND.FRIENDMST2_SELECT1DataTable();
        Models.DS_FRIENDTableAdapters.FRIENDMST2_SELECT1TableAdapter FAdapter = new Models.DS_FRIENDTableAdapters.FRIENDMST2_SELECT1TableAdapter();

        protected void Page_Load(object sender, EventArgs e)
        {
            if (Page.IsPostBack == false)
            {
                rdt = radapter.Chek_Frd_Request(Session["email"].ToString());

                lblrqt.Text = rdt.Rows.Count.ToString();
                DataList1.DataSource = rdt;
                DataList1.DataBind();
            }

        }

        protected void DataList1_ItemCommand(object source, DataListCommandEventArgs e)
        {
            if (e.CommandName == "A")

            {
                FAdapter.FRIENDMST2_Accept_Request(Session["email"].ToString(), e.CommandArgument.ToString());
                rdt = radapter.Chek_Frd_Request(Session["email"].ToString());

                lblrqt.Text = rdt.Rows.Count.ToString();
                DataList1.DataSource = rdt;
                DataList1.DataBind();
            }
            else if (e.CommandName == "R")
            {
                FAdapter.FRIENDMST2_Reject_Request(Session["email"].ToString(), e.CommandArgument.ToString());
                rdt = radapter.Chek_Frd_Request(Session["email"].ToString());

                lblrqt.Text = rdt.Rows.Count.ToString();
                DataList1.DataSource = rdt;
                DataList1.DataBind();
            }
        }
    }
}