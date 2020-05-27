using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.Sql;
using System.Data;
using System.Data.SqlClient;
using System.Drawing;

public partial class availableseat : System.Web.UI.Page
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
    //SqlConnection con = new SqlConnection("Data Source=DESKTOP-AJAQJ62;Initial Catalog=bus;Integrated Security=True");
    SqlConnection con1 = new SqlConnection("Data Source=DESKTOP-AJAQJ62;Initial Catalog=userdetail;Integrated Security=True");
    protected void Page_Load(object sender, EventArgs e)
    {
        string doj=Convert.ToString(Session["depaturedate"]);
        Session["bus"] = Request.QueryString["id"];
        string[] seat = new string[40];
        con1.Open();
        string booked = "yes";
        string busid = Request.QueryString["id"];
        string query = "select seat_number from tickets where booked='" + booked + "'and bus_id='"+busid+"' and doj='"+doj+"'";
        SqlCommand cmd = new SqlCommand(query, con1);
        //SqlDataAdapter da =new SqlDataAdapter(cmd);
        SqlDataReader dr = cmd.ExecuteReader();
        DataTable dt = new DataTable();
        dt.Load(dr);
        int count = 0;
        foreach (DataRow row in dt.Rows)
        {
            seat[count] = row.Field<string>(0);
            count++;
        }
        con1.Close();
        for (int i = 0; i < seat.Length; i++)
        {
            if (seat[i] == "s1")
                s1.BackColor = Color.Red;
            if (seat[i] == "s2")
                s2.BackColor = Color.Red;
            if (seat[i] == "s3")
                s3.BackColor = Color.Red;
            if (seat[i] == "s4")
                s4.BackColor = Color.Red;
            if (seat[i] == "s5")
                s5.BackColor = Color.Red;
            if (seat[i] == "s6")
                s6.BackColor = Color.Red;
            if (seat[i] == "s7")
                s7.BackColor = Color.Red;
            if (seat[i] == "s8")
                s8.BackColor = Color.Red;
            if (seat[i] == "s9")
                s9.BackColor = Color.Red;
            if (seat[i] == "s10")
                s10.BackColor = Color.Red;
            if (seat[i] == "s11")
                s11.BackColor = Color.Red;
            if (seat[i] == "s12")
                s12.BackColor = Color.Red;
            if (seat[i] == "s13")
                s13.BackColor = Color.Red;
            if (seat[i] == "s14")
                s14.BackColor = Color.Red;
            if (seat[i] == "s15")
                s15.BackColor = Color.Red;
            if (seat[i] == "s16")
                s16.BackColor = Color.Red;
            if (seat[i] == "s17")
                s17.BackColor = Color.Red;
            if (seat[i] == "s18")
                s18.BackColor = Color.Red;
            if (seat[i] == "s19")
                s19.BackColor = Color.Red;
            if (seat[i] == "s20")
                s20.BackColor = Color.Red;
            if (seat[i] == "s21")
                s21.BackColor = Color.Red;
            if (seat[i] == "s22")
                s22.BackColor = Color.Red;
            if (seat[i] == "s23")
                s23.BackColor = Color.Red;
            if (seat[i] == "s24")
                s24.BackColor = Color.Red;
            if (seat[i] == "sa")
                sa.BackColor = Color.Red;
            if (seat[i] == "sb")
                sb.BackColor = Color.Red;
            if (seat[i] == "sc")
                sc.BackColor = Color.Red;
            if (seat[i] == "sd")
                sd.BackColor = Color.Red;
            if (seat[i] == "se")
                se.BackColor = Color.Red;
            if (seat[i] == "sf")
                sf.BackColor = Color.Red;
            if (seat[i] == "sg")
                sg.BackColor = Color.Red;
            if (seat[i] == "sh")
                sh.BackColor = Color.Red;
            if (seat[i] == "si")
                si.BackColor = Color.Red;
            if (seat[i] == "sj")
                sj.BackColor = Color.Red;
            if (seat[i] == "sk")
                sk.BackColor = Color.Red;
            if (seat[i] == "sl")
                sl.BackColor = Color.Red;
            if (seat[i] == "sm")
                sm.BackColor = Color.Red;
            if (seat[i] == "sn")
                sn.BackColor = Color.Red;
            
        }
    }
    protected void btnbook_Click(object sender, EventArgs e)
    {
        string[] seats = new string[6];
        string[] name = new string[6];
        string[] age = new string[6];
        string[] gender = new string[6];
        seats[0] = txtseat1.Text;
        seats[1] = txtseat2.Text;
        seats[2] = txtseat3.Text;
        seats[3] = txtseat4.Text;
        seats[4] = txtseat5.Text;
        seats[5] = txtseat6.Text;
        name[0] = txtname1.Text;
        name[1] = txtname2.Text;
        name[2] = txtname3.Text;
        name[3] = txtname4.Text;
        name[4] = txtname5.Text;
        name[5] = txtname6.Text;
        age[0] = txtage1.Text;
        age[1] = txtage2.Text;
        age[2] = txtage3.Text;
        age[3] = txtage4.Text;
        age[4] = txtage5.Text;
        age[5] = txtage6.Text;
        gender[0] = ddlgender1.SelectedValue;
        gender[1] = ddlgender2.SelectedValue;
        gender[2] = ddlgender3.SelectedValue;
        gender[3] = ddlgender4.SelectedValue;
        gender[4] = ddlgender5.SelectedValue;
        gender[5] = ddlgender6.SelectedValue;

        string[] booked = new string[6];
        string busname = Session["bus"].ToString();
        string userid = Session["uid"].ToString();
        for (int j = 0; j < 6; j++)
        {
            if (seats[j] != "")
            {
                booked[j] = "yes";
            }
            else
            {
                booked[j]="no";
            }
        }


        con1.Open();
        SqlCommand cmd1 = new SqlCommand("select count(booking_id) from tickets",con1);
        int a = Convert.ToInt32(cmd1.ExecuteScalar());
        con1.Close();
        a++;
        string booking_id = "b" + a;
        Session["booking_id"] = booking_id;

        int total = 0;
        con1.Open();
        string doj = Convert.ToString(Session["depaturedate"]);
        for (int i = 0; i < 6; i++)
        {
            if (seats[i] != "" && name[i] != "" && age[i] != "")
            {
                string query = "insert into tickets values('" + booking_id + "','s" + seats[i] + "','" + busname + "','" + name[i] + "','" + age[i] + "','" + gender[i] + "','" + booked[i] + "','" + userid + "','" + doj + "','no')";
                SqlCommand cmd = new SqlCommand(query, con1);
                cmd.ExecuteNonQuery();
                total++;
            }
       }
        Session["total_seat"] = total;
        total = 0;
        Session["seat1"] = seats[0].ToString();
        Session["name1"] = name[0].ToString();
        Session["age1"] = age[0].ToString();
        Session["gender1"] = gender[0].ToString();
        Session["seat2"] = seats[1].ToString();
        Session["name2"] = name[1].ToString();
        Session["age2"] = age[1].ToString();
        Session["gender2"] = gender[1].ToString();
        Session["seat3"] = seats[2].ToString();
        Session["name3"] = name[2].ToString();
        Session["age3"] = age[2].ToString();
        Session["gender3"] = gender[2].ToString();
        Session["seat4"] = seats[3].ToString();
        Session["name4"] = name[3].ToString();
        Session["age4"] = age[3].ToString();
        Session["gender4"] = gender[3].ToString();
        Session["seat5"] = seats[4].ToString();
        Session["name5"] = name[4].ToString();
        Session["age5"] = age[4].ToString();
        Session["gender5"] = gender[4].ToString();
        Session["seat6"] = seats[5].ToString();
        Session["name6"] = name[5].ToString();
        Session["age6"] = age[5].ToString();
        Session["gender6"] = gender[5].ToString();
        Response.Redirect("confirm.aspx");


                
    }
    protected void imgbtnaddseat1_Click(object sender, ImageClickEventArgs e)
    {
        txtseat2.Visible = true;
        txtname2.Visible = true;
        txtage2.Visible = true;
        ddlgender2.Visible = true;
        imgbtnaddseat2.Visible = true;
    }
    protected void imgbtnaddseat2_Click(object sender, ImageClickEventArgs e)
    {
        txtseat3.Visible = true;
        txtname3.Visible = true;
        txtage3.Visible = true;
        ddlgender3.Visible = true;
        imgbtnaddseat3.Visible = true;
    }
    protected void imgbtnaddseat3_Click(object sender, ImageClickEventArgs e)
    {
        txtseat4.Visible = true;
        txtname4.Visible = true;
        txtage4.Visible = true;
        ddlgender4.Visible = true;
        imgbtnaddseat4.Visible = true;
    }
    protected void imgbtnaddseat4_Click(object sender, ImageClickEventArgs e)
    {
        txtseat5.Visible = true;
        txtname5.Visible = true;
        txtage5.Visible = true;
        ddlgender5.Visible = true;
        imgbtnaddseat5.Visible = true;
    }
    protected void imgbtnaddseat5_Click(object sender, ImageClickEventArgs e)
    {
        txtseat6.Visible = true;
        txtname6.Visible = true;
        txtage6.Visible = true;
        ddlgender6.Visible = true;
    }
}