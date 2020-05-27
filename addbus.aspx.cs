using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.Sql;
using System.Data;
using System.Data.SqlClient;

public partial class addbus : System.Web.UI.Page
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
    protected void btninsert_Click(object sender, EventArgs e)
    {
        SqlConnection con = new SqlConnection("Data Source=DESKTOP-AJAQJ62;Initial Catalog=userdetail;Integrated Security=True");
        try
        {
            con.Open();
            string busno = txtbusname.Text + "_" + txtbusno.Text;
            string query = "insert into businfo values('" + busno + "','" + txtsource.Text + "','" + txtdestination.Text + "','" + txtrate.Text + "','" + txttime.Text + "','" + ddlac.SelectedValue + "')";
            SqlCommand cmd = new SqlCommand(query, con);
            cmd.ExecuteNonQuery();
            con.Close();
        }
        catch (Exception ex)
        {
            lbl.Text = ex.Message;
        }
    }
}