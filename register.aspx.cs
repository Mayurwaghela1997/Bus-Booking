using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.Sql;
using System.Data.SqlClient;
using System.Data;

public partial class register : System.Web.UI.Page
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

    }
    protected void btnregister_Click1(object sender, EventArgs e)
    {
        SqlConnection con = new SqlConnection("Data Source=DESKTOP-AJAQJ62;Initial Catalog=userdetail;Integrated Security=True");
        string query1 = "insert into userinformation values('" + txtname.Text + "','" + txtid.Text + "','" + txtpass.Text + "'," + txtphone.Text + ",'" + ddlsecurityquestion.SelectedValue + "','" + txtsecurityanswer.Text + "','false')";
        con.Open();
        SqlCommand cmd = new SqlCommand(query1, con);
        cmd.ExecuteNonQuery();
        con.Close();
        Response.Redirect("login.aspx");
    }
}