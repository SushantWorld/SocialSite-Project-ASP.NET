using SocialNSite.Models;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace SocialNSite
{
    public partial class MyMessage : System.Web.UI.Page
    {
        Models.DS_MessageTableAdapters.MESSAGEMST2_SELECT11TableAdapter MAdapter = new Models.DS_MessageTableAdapters.MESSAGEMST2_SELECT11TableAdapter();
        DS_Message.MESSAGEMST2_SELECT11DataTable MDT = new DS_Message.MESSAGEMST2_SELECT11DataTable();

        protected void Page_Load(object sender, EventArgs e)
        {
            if (Page.IsPostBack == true)
            {

                MDT = MAdapter.Select_Email_Status(Session["email"].ToString(), 0);
                GVNew.DataSource = MDT;
                GVNew.DataBind();
                Label1.Text = GVNew.Rows.Count.ToString();
                MultiView1.ActiveViewIndex = 0;
            }
        }

        protected void btnnew_Click(object sender, EventArgs e)
        {
            MDT = MAdapter.Select_Email_Status(Session["email"].ToString(), 0);
            GVNew.DataSource = MDT;
            GVNew.DataBind();
            Label1.Text = GVNew.Rows.Count.ToString();
            MultiView1.ActiveViewIndex = 0;
        }

        protected void btnoold_Click(object sender, EventArgs e)
        {
            MDT = MAdapter.Select_Email_Status(Session["email"].ToString(), 1);
            GVRead.DataSource = MDT;
            GVRead.DataBind();
            Label2.Text = GVRead.Rows.Count.ToString();
            MultiView1.ActiveViewIndex = 1;
        }

        protected void GVNew_SelectedIndexChanged(object sender, EventArgs e)
        {

        }

        protected void GVRead_RowCommand(object sender, GridViewCommandEventArgs e)
        {

            if (e.CommandName == "Read")
            {
                MAdapter.MESSAGEMST2_UPDATE_STATUS(Convert.ToInt32(e.CommandArgument.ToString()), 1);
                MultiView1.ActiveViewIndex = 2;

                MDT = MAdapter.Select_By_ID(Convert.ToInt32(e.CommandArgument.ToString()));

                lblfrom.Text = MDT.Rows[0]["fromuid"].ToString();
                txtsub.Text = MDT.Rows[0]["Subject"].ToString();
                txtmsg.Text = MDT.Rows[0]["Message"].ToString();

            }
            else if (e.CommandName == "Remove")
            {

                MAdapter.Delete(Convert.ToInt32(e.CommandArgument.ToString()));
                MDT = MAdapter.Select_Email_Status(Session["email"].ToString(), 1);
                GVRead.DataSource = MDT;
                GVRead.DataBind();
                Label2.Text = GVRead.Rows.Count.ToString();
                MultiView1.ActiveViewIndex = 1;
            }
        }
        protected void GVNew_RowCommand(object sender, GridViewCommandEventArgs e)
        {
            MAdapter.MESSAGEMST2_UPDATE_STATUS(Convert.ToInt32(e.CommandArgument.ToString()), 1);
            MultiView1.ActiveViewIndex = 2;

            MDT = MAdapter.Select_By_ID(Convert.ToInt32(e.CommandArgument.ToString()));

            lblfrom.Text = MDT.Rows[0]["fromuid"].ToString();
            txtsub.Text = MDT.Rows[0]["Subject"].ToString();
            txtmsg.Text = MDT.Rows[0]["Message"].ToString();
        }
        protected void btnreply_Click(object sender, EventArgs e)
        {
            MAdapter.Insert(Session["email"].ToString(), lblfrom.Text, txtsub.Text, txtreply.Text, 0);
            txtreply.Text = "";
            MultiView1.ActiveViewIndex = 0;
        }
    }
}