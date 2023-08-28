using SocialNSite.Models;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class ViewProfile : System.Web.UI.Page
{
    SocialNSite.Models.dtregTableAdapters.USERMST_SELECT11TableAdapter radapter = new SocialNSite.Models.dtregTableAdapters.USERMST_SELECT11TableAdapter();
    dtreg.USERMST_SELECT11DataTable rdt = new dtreg.USERMST_SELECT11DataTable();
    SocialNSite.Models.DS_MessageTableAdapters.MESSAGEMST2_SELECT11TableAdapter madapter = new SocialNSite.Models.DS_MessageTableAdapters.MESSAGEMST2_SELECT11TableAdapter();
    DS_Message.MESSAGEMST2_SELECT11DataTable mdt = new DS_Message.MESSAGEMST2_SELECT11DataTable();
    protected void Page_Load(object sender, EventArgs e)
    {
        //rdt = radapter.Select_By_EMAIL(Session["vemail"].ToString());

        //lblpfile.Text = rdt.Rows[0]["fname"].ToString();
        //lblname.Text = rdt.Rows[0]["fname"].ToString()+" " + rdt.Rows[0]["lname"].ToString();
        //lblemail.Text = rdt.Rows[0]["email"].ToString();
        //lblmobile.Text = rdt.Rows[0]["mobile"].ToString();
        //lblgender.Text = rdt.Rows[0]["gender"].ToString();
        //lbledu.Text = rdt.Rows[0]["education"].ToString();
        //lbldob.Text = rdt.Rows[0]["dateofbirth"].ToString();
        //lbladd.Text = rdt.Rows[0]["websitename"].ToString();
        //lblcity.Text = rdt.Rows[0]["city"].ToString();
        //lblpin.Text = rdt.Rows[0]["pincode"].ToString();
        //lblabout.Text = rdt.Rows[0]["fname"].ToString();
        //lbaboutus.Text = rdt.Rows[0]["aboutus"].ToString();
        //Image7.ImageUrl = rdt.Rows[0]["profilepic"].ToString();
        //lblto.Text = rdt.Rows[0]["fname"].ToString();
        
    }
    protected void Button5_Click(object sender, EventArgs e)
    {
        //madapter.Insert(Session["email"].ToString(), rdt.Rows[0]["email"].ToString(), TextBox2.Text, TextBox3.Text, 0);
        //TextBox3.Text = "";
        //TextBox2.Text = "";
        //lbsend.Text = "Message Sent !!";
    }
    protected void TextBox3_TextChanged(object sender, EventArgs e)
    {

    }
    protected void Button6_Click(object sender, EventArgs e)
    {

    }
}