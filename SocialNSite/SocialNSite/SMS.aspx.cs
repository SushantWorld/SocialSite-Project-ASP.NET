using System;
using System.Collections.Generic;
using System.IO;
using System.Linq;
using System.Net;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace SocialNSite
{
    public partial class SMS : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            lbl.Text = "";
        }

        protected void Button1_Click(object sender, EventArgs e)
        {
            string strUrl = "http://api.mVaayoo.com/mvaayooapi/MessageCompose?user=jullyvasani3195@gmail.com:abc12345&senderID=TEST SMS&receipientno=" + txtmobile.Text + "&msgtxt=" + txtmsg.Text + "&state=4";
            WebRequest request = HttpWebRequest.Create(strUrl);
            HttpWebResponse response = (HttpWebResponse)request.GetResponse();
            Stream s = (Stream)response.GetResponseStream();
            StreamReader readStream = new StreamReader(s);
            string dataString = readStream.ReadToEnd();
            response.Close();
            s.Close();
            readStream.Close();
            lbl.Text = "Sms Sent !!";
            txtmsg.Text = "";
            txtmobile.Text = "";
        }

        protected void Button1_Click1(object sender, EventArgs e)
        {

        }
    }
}