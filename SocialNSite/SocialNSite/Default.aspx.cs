using SocialNSite.Models;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace SocialNSite
{
    public partial class Default : System.Web.UI.Page
    {
        Models.dtregTableAdapters.USERMST_SELECT11TableAdapter radapter = new Models.dtregTableAdapters.USERMST_SELECT11TableAdapter();
        dtreg.USERMST_SELECT11DataTable rdt = new dtreg.USERMST_SELECT11DataTable();

        protected void Page_Load(object sender, EventArgs e)
        {
            for (int i = 1; i < 33; i++)
            {
                drpday.Items.Add(i.ToString());
            }
            for (int i = 1950; i < 2018; i++)
            {
                drpyear.Items.Add(i.ToString());
            }
        }

        protected void btnlgn_Click(object sender, EventArgs e)
        {

            rdt = radapter.Select_Login(txtun.Text, txtpswd.Text);


            if (rdt.Rows.Count == 1)
            {
                Session["uname"] = rdt.Rows[0]["UName"].ToString();
                Session["email"] = rdt.Rows[0]["email"].ToString();
                Session["uid"] = rdt.Rows[0]["UID"].ToString();
                Session["image"] = rdt.Rows[0]["ProfilePic"].ToString();
                Session["fn"] = rdt.Rows[0]["FName"].ToString();


                Response.Redirect("Main.aspx");
            }
            else { Label2.Text = "Wrong input"; }
        }

        protected void drpday_SelectedIndexChanged(object sender, EventArgs e)
        {

        }

        protected void drpmnth_SelectedIndexChanged(object sender, EventArgs e)
        {

        }

        protected void txtpswd2_TextChanged(object sender, EventArgs e)
        {

        }

        protected void btnregister_Click(object sender, EventArgs e)
        {
            Label2.Text = "";
            DateTime db = Convert.ToDateTime(drpday.SelectedItem.Text + "" + drpmnth.SelectedItem.Text + "" + drpyear.SelectedItem.Text);
            if (txtpswd1.Text == txtpswd2.Text)
            {
                 radapter.Insert(txtfn.Text, txtln.Text, txtemail.Text, txtmo.Text, null, db, txtcty.Text, "", null, txtun1.Text, txtpswd2.Text, null, null, "~/logo/pfile.jpg", null);

                txtfn.Text = "";
                txtln.Text = "";
                txtemail.Text = "";
                txtmo.Text = "";
                txtcty.Text = "";
                txtun1.Text = "";
                txtpswd2.Text = "";
                Label1.Text = "Registration Done !!";
            }
            else
            {
                Label1.Text = "Plz Enter re-enter password !!";

            }
        }

        protected void txtpswd2_TextChanged1(object sender, EventArgs e)
        {

        }
    }
}