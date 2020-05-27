using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;
using System.Data;
using System.Data.Sql;

public partial class login : System.Web.UI.Page
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
    protected void btnlogin_Click1(object sender, EventArgs e)
    {
        
        string username = txtid.Text;
        string password = txtpass.Text;
        SqlConnection con = new SqlConnection("Data Source=DESKTOP-AJAQJ62;Initial Catalog=userdetail;Integrated Security=True");
        /*con.Open();
        string query = "select password from userinformation where user_id='" + username + "'";
        SqlCommand cmd = new SqlCommand(query, con);
        string pass = cmd.ExecuteScalar().ToString();
        con.Close();*/
        try
        {
            con.Open();
            string query1 = "select admin from userinformation where user_id='" + username + "' and password='"+password+"'";
            SqlCommand cmd1 = new SqlCommand(query1, con);
            string admin = cmd1.ExecuteScalar().ToString();
            con.Close();
            Session["uid"] = username;
            Session["admin"] = admin;
            Response.Redirect("ticketbooking.aspx");
        }
        catch (Exception ae)
        {
            l1.Text = "enter valid id and password";
        }
        /*if (password == pass)
        {
            Session["uid"] = txtid.Text;
            Response.Redirect("ticketbooking.aspx");
        }
        else
            l1.Text = "PLEASE ENTER VALLID EMAIL ID AND PASSWORD";*/
    }
}