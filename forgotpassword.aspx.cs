using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;
using System.Data;

public partial class forgotpassword : System.Web.UI.Page
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
    protected void btnforgotpassword_Click(object sender, EventArgs e)
    {
        string question = ddlsecurityquestion.SelectedValue;
        string answer = txtsecurityanswer.Text;
        string userid = txtuid.Text;
        string pass;
        SqlConnection con = new SqlConnection("Data Source=DESKTOP-AJAQJ62;Initial Catalog=userdetail;Integrated Security=True");
        con.Open();
        string query = "select password from userinformation where user_id='"+userid+"'and s_q='"+question+"' and s_a='"+answer+"'";
        SqlCommand cmd = new SqlCommand(query, con);
        pass = cmd.ExecuteScalar().ToString();
        con.Close();
        lblpassword.Text = "your password is : " + pass;
    }
}