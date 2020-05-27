using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using System.Data.SqlClient;
using System.Data.Sql;


public partial class ticketbooking : System.Web.UI.Page
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
        /*SqlConnection con = new SqlConnection("Data Source=DESKTOP-AJAQJ62;Initial Catalog=userdetail;Integrated Security=True");
        con.Open();
        SqlCommand cmd = new SqlCommand("select city from cities",con);
        SqlDataAdapter da = new SqlDataAdapter(cmd);
        DataSet ds = new DataSet();
        da.Fill(ds,"cities");
        ddlleaving.DataSource = ds.Tables["cities"];
        ddlleaving.DataValueField = "city";
        ddlleaving.DataBind();
        ddltravelling.DataSource = ds.Tables["cities"];
        ddltravelling.DataValueField = "city";
        ddltravelling.DataBind();
        con.Close();*/

       // string filepath = "~/cities.xml";
        /*DataSet ds = new DataSet();
        ds.ReadXml("F:\\tyit 564\\ty\\bus booking\\cities.xml");
        ddlleaving.DataSource = ds;
        ddlleaving.DataValueField = "value";
        ddlleaving.DataTextField = "name";
        ddlleaving.DataBind();
        ddltravelling.DataSource = ds;
        ddltravelling.DataTextField = "name";
        ddltravelling.DataValueField = "value";
        ddltravelling.DataBind();*/
    }
    protected void calender_Click(object sender, ImageClickEventArgs e)
    {
        caldepature.Visible = true;
    }
    protected void caldepature_SelectionChanged(object sender, EventArgs e)
    {
        txtdepaturedate.Text = caldepature.SelectedDate.ToShortDateString();
        caldepature.Visible = false;
    }
    protected void ddltrip_SelectedIndexChanged(object sender, EventArgs e)
    {
        if (ddltrip.SelectedIndex==1)
        {
            lblreturndate.Visible = true;
            txtreturndate.Visible = true;
            calander1.Visible = true;
        }
        else if (ddltrip.SelectedIndex == 0)
        {
            lblreturndate.Visible = false;
            txtreturndate.Visible = false;
            calander1.Visible = false;
        }
    }
    protected void calender1_Click(object sender, ImageClickEventArgs e)
    {
        calreturn.Visible = true;
    }
    protected void calreturn_SelectionChanged(object sender, EventArgs e)
    {
        txtreturndate.Text = calreturn.SelectedDate.ToShortDateString();
        calreturn.Visible = false;
    }
    protected void btnfindbus_Click(object sender, EventArgs e)
    {
        string source1 = ddlleaving.SelectedValue.ToString();
        string destination1 = ddltravelling.SelectedValue.ToString();
        Session["depaturedate"] = txtdepaturedate.Text;
        Session["returndate"] = txtreturndate.Text;
        Session["trip"] = ddltrip.SelectedValue;
        Session["from"] = source1;
        Session["to"] = destination1;
        Response.Redirect("bus.aspx?source="+source1+"&destination="+destination1+"");
    }
}