using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class logout : System.Web.UI.Page
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
        Session.Abandon();
        Response.Redirect("login.aspx");
    }
}