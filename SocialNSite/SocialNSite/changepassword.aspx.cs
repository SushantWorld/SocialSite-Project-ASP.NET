using SocialNSite.Models;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace SocialNSite
{
    public partial class changepassword : System.Web.UI.Page
    {
        Models.dtregTableAdapters.USERMST_SELECT11TableAdapter radapter = new Models.dtregTableAdapters.USERMST_SELECT11TableAdapter();
        dtreg.USERMST_SELECT11DataTable rdt = new dtreg.USERMST_SELECT11DataTable();
        protected void Page_Load(object sender, EventArgs e)
        {
            lblchnge.Text = "";
        }

        protected void btnchange_Click(object sender, EventArgs e)
        {
            rdt = radapter.Getdatabyid(Convert.ToUInt16(Session["uid"]));
            if (rdt.Rows[0]["Password"].ToString() == txtopswd.Text)
            {

                if (txtnpswd.Text == txtcpswd.Text)
                {
                    radapter.CHANGE_PASSWORD(Convert.ToInt16(rdt.Rows[0]["UID"].ToString()), txtcpswd.Text);
                    lblchnge.Text = "Password changed !!";
                }
                else
                {
                    lblchnge.Text = "Password not same";
                }

            }
            else

            {

                lblchnge.Text = "Invalid Current Password";
            }
        }
    }
}