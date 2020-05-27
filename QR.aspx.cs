using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using QRCoder;
using System.IO;
using System.Drawing;

public partial class CS : System.Web.UI.Page
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
    protected void btnGenerate_Click(object sender, EventArgs e)
    {
        /*
        //Session["uid"] = txtCode.Text;
        String uid = Session["uid"].ToString();
        string code = "http://busbooking.somee.com/Default.aspx?userid=" + uid;
        lblstring.Text = code;
        //string code = txtCode.Text;
        QRCodeGenerator qrGenerator = new QRCodeGenerator();
        QRCodeGenerator.QRCode qrCode = qrGenerator.CreateQrCode(code, QRCodeGenerator.ECCLevel.Q);
        System.Web.UI.WebControls.Image imgBarCode = new System.Web.UI.WebControls.Image();
        imgBarCode.Height = 150;
        imgBarCode.Width = 150;
       // plBarCode.Controls.Add(imgBarCode);
        using (Bitmap bitMap = qrCode.GetGraphic(20))
        {
            using (MemoryStream ms = new MemoryStream())
            {
                bitMap.Save(ms, System.Drawing.Imaging.ImageFormat.Png);
                byte[] byteImage = ms.ToArray();
                imgBarCode.ImageUrl = "data:image/png;base64," + Convert.ToBase64String(byteImage);
            }
            plBarCode.Controls.Add(imgBarCode);
        }
       // Session.Clear();*/
    }
    protected void Page_Load(object sender, EventArgs e)
    {
        if (Convert.ToString(Session["trip"]) == "return")
        {
            btnreturnticket.Visible = true;
        }


        String bid = Session["booking_id"].ToString();
        string code = "http://busbooking.somee.com/up.aspx?bid=" + bid;
        lblstring.Text = code;
        //string code = txtCode.Text;
        QRCodeGenerator qrGenerator = new QRCodeGenerator();
        QRCodeGenerator.QRCode qrCode = qrGenerator.CreateQrCode(code, QRCodeGenerator.ECCLevel.Q);
        System.Web.UI.WebControls.Image imgBarCode = new System.Web.UI.WebControls.Image();
        imgBarCode.Height = 150;
        imgBarCode.Width = 150;
        // plBarCode.Controls.Add(imgBarCode);
        using (Bitmap bitMap = qrCode.GetGraphic(20))
        {
            using (MemoryStream ms = new MemoryStream())
            {
                bitMap.Save(ms, System.Drawing.Imaging.ImageFormat.Png);
                byte[] byteImage = ms.ToArray();
                imgBarCode.ImageUrl = "data:image/png;base64," + Convert.ToBase64String(byteImage);
            }
            plBarCode.Controls.Add(imgBarCode);
        }
    }
    protected void btnreturnticket_Click(object sender, EventArgs e)
    {
        Session["depaturedate"] = Session["returndate"];
        Session["trip"] = "single";
        string source = Convert.ToString(Session["to"]);
        string destination = Convert.ToString(Session["from"]);
        Response.Redirect("bus.aspx?source=" + source + "&destination=" + destination + "");
    }
    protected void btnupdate_Click1(object sender, EventArgs e)
    {
        String uid = Session["booking_id"].ToString();
        Response.Redirect("up.aspx?bid=" + uid);
    }
}