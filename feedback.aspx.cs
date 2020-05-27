using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Net.Mail;

public partial class feedback : System.Web.UI.Page
{
    protected void Page_PreInit(object sender, EventArgs e)
    {
        HttpRequest _httprequest = HttpContext.Current.Request;
        if (_httprequest.Browser.IsMobileDevice)
        {
            string _path = _httprequest.Url.PathAndQuery;
            bool _ismobiledevice = _path.StartsWith("/mobile", StringComparison.OrdinalIgnoreCase);
            if (!_ismobiledevice)
            {
                this.MasterPageFile = "~/mobile.Master";
            }
        }
    }
    protected void Page_Load(object sender, EventArgs e)
    {
        if (Session["uid"] != "")
        {
            string userid = Convert.ToString(Session["uid"]);
            string body = txtfeedback.Text;
            try
            {

                MailMessage mail = new MailMessage();

                SmtpClient SmtpServer = new SmtpClient("smtp.gmail.com");

                mail.From = new MailAddress("mayurrocksmayur@gmail.com");

                mail.To.Add(userid);

                mail.Subject = "Feedback";

                mail.Body = body;



                SmtpServer.Port = 587;

                SmtpServer.Credentials = new System.Net.NetworkCredential("mayurrocksmayur@gmail.com", "passwordmrw");

                SmtpServer.EnableSsl = true;



                SmtpServer.Send(mail);

                //MessageBox.Show("mail Send");

            }

            catch (Exception ex)
            {

                //MessageBox.Show(ex.ToString());

            }
        }

    }
    protected void btnsendfeedback_Click(object sender, EventArgs e)
    {

    }
}