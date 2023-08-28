using System;
using System.Collections.Generic;
using System.Drawing.Imaging;
using System.Drawing;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace SocialNSite
{
    public partial class Meme : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void btnmemegenerate_Click(object sender, EventArgs e)
        {
            string iimg = "";
            if (r1.Checked == true)
            {
                iimg = "r1.jpg";

            }
            else if (r2.Checked == true)
            {
                iimg = "r2.jpg";
            }
            else if (r3.Checked == true)
            {
                iimg = "r22.jpg";
            }
            else if (r4.Checked == true)
            {
                iimg = "r3.jpg";
            }
            else if (r5.Checked == true)
            {
                iimg = "r4.jpg";

            }
            else if (r6.Checked == true)
            {
                iimg = "r5.jpg";
            }
            else if (r7.Checked == true)
            {
                iimg = "r6.jpg";
            }
            else if (r8.Checked == true)
            {
                iimg = "r7.jpg";
            }
            else if (r9.Checked == true)
            {
                iimg = "r8.jpg";
            }
            else if (r10.Checked == true)
            {
                iimg = "r9.jpg";
            }
            else if (r11.Checked == true)
            {
                iimg = "r10.jpg";
            }
            else if (r12.Checked == true)
            {
                iimg = "r11.jpg";
            }
            else if (r13.Checked == true)
            {
                iimg = "r13.jpg";
            }
            else if (r14.Checked == true)
            {
                iimg = "r14.jpg";
            }
            else if (r15.Checked == true)
            {
                iimg = "r15.jpg";

            }

            else if (r111.Checked == true)
            {
                iimg = "1.jpg";

            }
            else if (r122.Checked == true)
            {
                iimg = "2.jpg";
            }
            else if (r133.Checked == true)
            {
                iimg = "3.jpg";
            }

            else if (r144.Checked == true)
            {
                iimg = "4.jpg";
            }
            else if (r155.Checked == true)
            {
                iimg = "5.jpg";

            }

            else if (r16.Checked == true)
            {
                iimg = "6.jpg";
            }
            else if (r17.Checked == true)
            {
                iimg = "7.jpg";
            }
            else if (r18.Checked == true)
            {
                iimg = "8.jpg";
            }

            else if (r19.Checked == true)
            {
                iimg = "9.jpg";
            }
            else if (r20.Checked == true)
            {
                iimg = "10.jpg";

            }
            else if (r21.Checked == true)
            {
                iimg = "11.jpg";
            }
            else if (r22.Checked == true)
            {
                iimg = "12.jpg";
            }
            else if (r23.Checked == true)
            {
                iimg = "13.jpg";
            }
            else if (r24.Checked == true)
            {
                iimg = "14.jpg";
            }

            else if (r25.Checked == true)
            {
                iimg = "15.jpg";
            }
            else if (r26.Checked == true)
            {
                iimg = "16.jpg";
            }
            else if (r27.Checked == true)
            {
                iimg = "17.jpg";
            }
            else if (r28.Checked == true)
            {
                iimg = "18.jpg";
            }
            else if (r29.Checked == true)
            {
                iimg = "19.jpg";

            }
            else if (r30.Checked == true)
            {
                iimg = "20.jpg";

            }
            // string stringMasterImageName = @"D:\mm.jpg";
            string stringMasterImageName = @Server.MapPath("~\\meme\\" + iimg.ToString());
            Bitmap bitmapMasterImage = new System.Drawing.Bitmap(stringMasterImageName);
            Graphics graphicsMasterImage = Graphics.FromImage(bitmapMasterImage);

            //Set the alignment based on the coordinates 
            StringFormat stringformatWriteTextFormat = new StringFormat();
            stringformatWriteTextFormat.Alignment = StringAlignment.Center;

            //Set the font color
            Color colorStringColor = System.Drawing.Color.Black;
            if (drpcolor.SelectedIndex == 0)
            {
                colorStringColor = System.Drawing.Color.Black;

            }
            else if (drpcolor.SelectedIndex == 1)
            {
                colorStringColor = System.Drawing.Color.White;
            }
            else if (drpcolor.SelectedIndex == 2)
            {
                colorStringColor = System.Drawing.Color.Red;
            }
            else if (drpcolor.SelectedIndex == 3)
            {
                colorStringColor = System.Drawing.Color.Blue;
            }
            else if (drpcolor.SelectedIndex == 4)
            {
                colorStringColor = System.Drawing.Color.Maroon;
            }
            else if (drpcolor.SelectedIndex == 5)
            {
                colorStringColor = System.Drawing.Color.Yellow;
            }
            else if (drpcolor.SelectedIndex == 6)
            {
                colorStringColor = System.Drawing.Color.Green;
            }
            else if (drpcolor.SelectedIndex == 7)
            {
                colorStringColor = System.Drawing.Color.Indigo;
            }
            else if (drpcolor.SelectedIndex == 8)
            {
                colorStringColor = System.Drawing.Color.Orange;
            }
            else if (drpcolor.SelectedIndex == 9)
            {
                colorStringColor = System.Drawing.Color.Pink;
            }
            else if (drpcolor.SelectedIndex == 10)
            {
                colorStringColor = System.Drawing.Color.Gray;
            }
            else if (drpcolor.SelectedIndex == 11)
            {
                colorStringColor = System.Drawing.Color.Lavender;
            }


            //Color colorStringColor = System.Drawing.ColorTranslator.FromHtml("#ff6600");
            string stringText = txttilte.Text;
            graphicsMasterImage.DrawString(stringText, new Font(drpfont.SelectedItem.Text, Convert.ToInt32(drpsize.SelectedItem.Text),
            FontStyle.Bold), new SolidBrush(colorStringColor),
            new Point(Convert.ToInt32(drpx.SelectedItem.Text), Convert.ToInt32(drpy.SelectedItem.Text)), stringformatWriteTextFormat);
            Response.ContentType = "image/jpeg";
            //graphicsMasterImage.DrawArc(new Pen(Color.Red, 3), 90, 235, 150, 50, 0, 360);
            bitmapMasterImage.Save(Response.OutputStream, ImageFormat.Jpeg);

            //Save the new image in a physical location

            // string stringOutPutFileName = @"D:\\OutPut.jpg";
            string stringOutPutFileName = @Server.MapPath("~\\meme\\img\\" + Session["uid"].ToString() + "img.jpg");
            bitmapMasterImage.Save(stringOutPutFileName);
            Response.Redirect("Memeoutput.aspx");
        }
    }
}