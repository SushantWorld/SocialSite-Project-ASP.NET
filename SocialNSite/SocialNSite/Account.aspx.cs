using SocialNSite.Models;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace SocialNSite
{
    public partial class Account : System.Web.UI.Page
    {
        Models.dtregTableAdapters.USERMST_SELECT11TableAdapter radapter = new Models.dtregTableAdapters.USERMST_SELECT11TableAdapter();
        dtreg.USERMST_SELECT11DataTable rdt = new dtreg.USERMST_SELECT11DataTable();

        protected void Page_Load(object sender, EventArgs e)
        {
            rdt = radapter.Select_By_EMAIL(Session["email"].ToString());
            MultiView1.ActiveViewIndex = 0;

            lblfname.Text = rdt.Rows[0]["fname"].ToString();
            lbllname.Text = rdt.Rows[0]["lname"].ToString();
            lblemail.Text = rdt.Rows[0]["email"].ToString();
            lblmobile.Text = rdt.Rows[0]["mobile"].ToString();
            lblgndr.Text = rdt.Rows[0]["gender"].ToString();
            lbledu.Text = rdt.Rows[0]["education"].ToString();

            lblwebsite.Text = rdt.Rows[0]["websitename"].ToString();
            lblcity.Text = rdt.Rows[0]["city"].ToString();
            lblpin.Text = rdt.Rows[0]["pincode"].ToString();

            lblabout.Text = rdt.Rows[0]["aboutus"].ToString();

        }

        protected void bteit_Click(object sender, EventArgs e)
        {
            MultiView1.ActiveViewIndex = 1;
            rdt = radapter.Select_By_EMAIL(Session["email"].ToString());
            txtfname.Text = rdt.Rows[0]["fname"].ToString();
            txtlname.Text = rdt.Rows[0]["lname"].ToString();
            lblemail0.Text = rdt.Rows[0]["email"].ToString();
            txtmobile.Text = rdt.Rows[0]["mobile"].ToString();
            // lblgndr.Text = rdt.Rows[0]["gender"].ToString();
            txtedu.Text = rdt.Rows[0]["education"].ToString();

            txtweb.Text = rdt.Rows[0]["websitename"].ToString();
            txtcity.Text = rdt.Rows[0]["city"].ToString();
            txtpin.Text = rdt.Rows[0]["pincode"].ToString();

            txtabout.Text = rdt.Rows[0]["aboutus"].ToString();
            ViewState["IDD"] = rdt.Rows[0]["UID"].ToString();
        }

        protected void btnupdate_Click(object sender, EventArgs e)
        {

            string gen = "FEMALE";
            if (RadioButton1.Checked == true)
            {
                gen = "MALE";
            }
            radapter.USERMST2_UPDATE_detail(Convert.ToInt32(ViewState["IDD"].ToString()), txtfname.Text, txtlname.Text, txtmobile.Text, txtedu.Text, txtcity.Text, txtpin.Text, gen, txtweb.Text, txtabout.Text);


            rdt = radapter.Select_By_EMAIL(Session["email"].ToString());
            MultiView1.ActiveViewIndex = 0;

            lblfname.Text = rdt.Rows[0]["fname"].ToString();
            lbllname.Text = rdt.Rows[0]["lname"].ToString();
            lblemail.Text = rdt.Rows[0]["email"].ToString();
            lblmobile.Text = rdt.Rows[0]["mobile"].ToString();
            lblgndr.Text = rdt.Rows[0]["gender"].ToString();
            lbledu.Text = rdt.Rows[0]["education"].ToString();

            lblwebsite.Text = rdt.Rows[0]["websitename"].ToString();
            lblcity.Text = rdt.Rows[0]["city"].ToString();
            lblpin.Text = rdt.Rows[0]["pincode"].ToString();

            lblabout.Text = rdt.Rows[0]["aboutus"].ToString();
        }
    }
}