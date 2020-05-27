using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.Sql;
using System.Data;
using System.Data.SqlClient;


public partial class payment : System.Web.UI.Page
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
    SqlConnection con = new SqlConnection("Data Source=DESKTOP-AJAQJ62;Initial Catalog=bus;Integrated Security=True");
    protected void Page_Load(object sender, EventArgs e)
    {
        //lblamount.Text = Session["amount"].ToString();
        if (Session["seat1"].ToString() != "")
        {
            lblseat1.Text = Session["seat1"].ToString();
            lblname1.Text = Session["name1"].ToString();
            lblage1.Text = Session["age1"].ToString();
            lblgender1.Text = Session["gender1"].ToString();
        }
        if (Session["seat2"].ToString() != "")
        {
            lblseat2.Text = Session["seat2"].ToString();
            lblname2.Text = Session["name2"].ToString();
            lblage2.Text = Session["age2"].ToString();
            lblgender2.Text = Session["gender2"].ToString();
        }
        if (Session["seat3"].ToString() != "")
        {
            lblseat3.Text = Session["seat3"].ToString();
            lblname3.Text = Session["name3"].ToString();
            lblage3.Text = Session["age3"].ToString();
            lblgender3.Text = Session["gender3"].ToString();
        }
        if (Session["seat4"].ToString() != "")
        {
            lblseat4.Text = Session["seat4"].ToString();
            lblname4.Text = Session["name4"].ToString();
            lblage4.Text = Session["age4"].ToString();
            lblgender4.Text = Session["gender4"].ToString();
        }
        if (Session["seat5"].ToString() != "")
        {
            lblseat5.Text = Session["seat5"].ToString();
            lblname5.Text = Session["name5"].ToString();
            lblage5.Text = Session["age5"].ToString();
            lblgender5.Text = Session["gender5"].ToString();
        }
        if (Session["seat6"].ToString() != "")
        {
            lblseat6.Text = Session["seat6"].ToString();
            lblname6.Text = Session["name6"].ToString();
            lblage6.Text = Session["age6"].ToString();
            lblgender6.Text = Session["gender6"].ToString();
        }
        string totals = Session["total_seat"].ToString();
        int total_seat = Convert.ToInt32(totals);
        //lblamount.Text = totals;
        SqlConnection con1 = new SqlConnection("Data Source=DESKTOP-AJAQJ62;Initial Catalog=userdetail;Integrated Security=True");
        con1.Open();
        string query1 = "select rate from businfo where bus='" + Session["bus"] + "'";
        SqlCommand cmd1 = new SqlCommand(query1, con1);
        string r = cmd1.ExecuteScalar().ToString();
        //lblamount.Text = r;
        con.Close();
        int rate = Convert.ToInt32(r);
        int amount = (total_seat * rate);
        lblamount.Text = amount.ToString();
    }
    protected void  btnnext_Click(object sender, EventArgs e)
    {
        Response.Redirect("payment.aspx");   
    }
}
