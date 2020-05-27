using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using System.Data.SqlClient;

public partial class _Default : System.Web.UI.Page
{
    SqlConnection con = new SqlConnection("Data Source=DESKTOP-AJAQJ62;Initial Catalog=userdetail;Integrated Security=True");
    protected void Page_Load(object sender, EventArgs e)
    {
        String bid=Request.QueryString["bid"];
        //l1.Text = uid;
        //string yes = "yes";
        //String query = "update reached set reach='yes' where user_id='"+uid+"'";
        //l1.Text = query;
        con.Open();
        SqlCommand cmd=new SqlCommand("update tickets set reached='yes' where booking_id='"+bid+"'", con);
        int r=cmd.ExecuteNonQuery();
        //SqlDataSource1.DataBind();
        con.Close();
        //l1.Text = "Record Inserted Successfully";
        //if (r != 1)
        //{
          //  l1.Text = "Record Inserted Successfully";
        //}
        //else
        //{
          //  l1.Text = "Insert Failed";
        //}   
    }
}