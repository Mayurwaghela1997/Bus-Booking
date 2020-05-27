using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Web.Mobile;

public partial class MasterPage2 : System.Web.UI.MasterPage
{
    protected void Page_Load(object sender, EventArgs e)
    {
        if (Convert.ToString(Session["uid"]) != "")
        {
            btnmybooking.Visible = true;
            btnlogout.Visible = true;
            imgbtnlogin.Visible = false;
            imgbtnregister.Visible = false;
        }
        
        string admin=Convert.ToString(Session["admin"]);
        if(admin!="" && admin=="True")
        {
            btnbusinfo.Visible = true;
            btnaddadmin.Visible = true;
            btnaddbus.Visible = true;
        }
    }
    protected void imgbtnlogin_Click(object sender, EventArgs e)
    {
        Response.Redirect("Login.aspx");
    }
    protected void imgbtnregister_Click(object sender, EventArgs e)
    {
        Response.Redirect("register.aspx");
    }
    protected void imgbtnhelp_Click(object sender, EventArgs e)
    {
        Response.Redirect("help.aspx");
    }
    protected void ImageButton1_Click(object sender, ImageClickEventArgs e)
    {
        Response.Redirect("https://www.facebook.com/mayur.waghela.7982");
    }
    protected void ImageButton2_Click(object sender, ImageClickEventArgs e)
    {
    }
    protected void btnbusinfo_Click(object sender, EventArgs e)
    {
        Response.Redirect("bus info.aspx");
    }
    protected void btnaddadmin_Click(object sender, EventArgs e)
    {
        Response.Redirect("add admin.aspx");
    }
    protected void btnlogout_Click1(object sender, EventArgs e)
    {
        Session.Abandon();
        Response.Redirect("login.aspx");
    }
    protected void btnaddbus_Click(object sender, EventArgs e)
    {
        Response.Redirect("addbus.aspx");
    }
    protected void btnmybooking_Click(object sender, EventArgs e)
    {
        Response.Redirect("mybooking.aspx");
    }
}
