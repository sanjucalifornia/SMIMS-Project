using System;
using System.Collections.Generic;
using System.Configuration;
using System.Data;
using System.Data.SqlClient;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class search_1 : System.Web.UI.Page
{
    SqlConnection conn;
    SqlCommand cmd;
    SqlDataReader dr;
    protected void Page_Load(object sender, EventArgs e)
    {
        String connection = ConfigurationManager.ConnectionStrings["conString"].ToString();
        conn = new SqlConnection(connection);
        
        
    }

    protected void Search_btn_Click(object sender, EventArgs e)
    {
        if (TextBox1.Text != "")
        {
            double pid = Convert.ToDouble(TextBox1.Text);


            string query = "select pid,firstname,lastname  from demographic where pid = '" + pid + "'";
            conn.Open();
            cmd = new SqlCommand(query, conn);
            dr = cmd.ExecuteReader();
        }
        if (dr.HasRows is false)
        {
            Label1.Visible = true;
            GridView2.Visible = false;
        }
        else
        {
            Label1.Visible = false;
            GridView2.Visible = true;
            GridView2.DataSource = dr;
            GridView2.DataBind();
        }
    }

    protected void Search_btn2_Click(object sender, EventArgs e)
    {
       string query="";
       if (DropDownList1.SelectedValue == "fname")
       {
            query = "select pid,firstname,lastname from demographic where firstname = '" + TextBox1.Text + "' ";
       }
       if(DropDownList1.SelectedValue == "lname")
        {
            query = "select pid,firstname,lastname from demographic where lastname = '" + TextBox1.Text + "'";
        }
        if (DropDownList1.SelectedValue == "police")
        {
            query = "select pid,firstname,lastname from demographic where currentpolicestation = '" + TextBox1.Text + "'";
        }
        if (DropDownList1.SelectedValue == "gcs")
        {
            query = "select pid,total from emergency where total = '" + Convert.ToDouble(TextBox1.Text) + "'";
        }

        conn.Open();
        cmd = new SqlCommand(query, conn);
        dr = cmd.ExecuteReader();
        if (dr.HasRows is false)
        {
            Label1.Visible =true;
            GridView2.Visible = false;
        }
        else
        {
            Label1.Visible = false;
            GridView2.Visible = true;
            GridView2.DataSource = dr;
            GridView2.DataBind();
        }
        
    }

    protected void Lbl_Click(object sender, EventArgs e)
    {
        string pid = Convert.ToString((sender as LinkButton).CommandArgument);
        Session["searchid"] = pid;
        Response.Redirect("Update.aspx");
    }



    
}