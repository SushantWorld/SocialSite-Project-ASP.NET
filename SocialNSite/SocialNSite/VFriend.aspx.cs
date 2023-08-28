using SocialNSite.Models;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace SocialNSite
{
    public partial class VFriend : System.Web.UI.Page
    {
        Models.dtregTableAdapters.USERMST_SELECT11TableAdapter radapter = new Models.dtregTableAdapters.USERMST_SELECT11TableAdapter();
        dtreg.USERMST_SELECT11DataTable rdt = new dtreg.USERMST_SELECT11DataTable();
        DS_FRIEND.FRIENDMST2_SELECT1DataTable FDT = new DS_FRIEND.FRIENDMST2_SELECT1DataTable();
        Models.DS_FRIENDTableAdapters.FRIENDMST2_SELECT1TableAdapter FAdapter = new Models.DS_FRIENDTableAdapters.FRIENDMST2_SELECT1TableAdapter();

        protected void Page_Load(object sender, EventArgs e)
        {
            if (Page.IsPostBack == false)
            {
                rdt = radapter.Select_Friend_List(Session["vemail"].ToString());
                DataList1.DataSource = rdt;
                DataList1.DataBind();
                lblfcnt.Text = DataList1.Items.Count.ToString();

                rdt = radapter.Select_By_EMAIL(Session["vemail"].ToString());
                lblname.Text = rdt.Rows[0]["fname"].ToString();
            }

        }

        protected void DataList1_ItemCommand(object source, DataListCommandEventArgs e)
        {

        }
    }
}