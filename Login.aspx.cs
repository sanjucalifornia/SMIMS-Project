using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using System.Data.SqlClient;

public partial class Login : System.Web.UI.Page
{
    string username;
    string password;
    SqlConnection conn;
    SqlCommand cmd;
    SqlDataAdapter da;
    DataTable dt;
    protected void Page_Load(object sender, EventArgs e)
    {

        Label1.Visible = false;
    }

    protected void Button1_Click(object sender, EventArgs e)
    {
        username = Request.Form["username"];
        password = Request.Form["pass"];
        String connection = System.Configuration.ConfigurationManager.ConnectionStrings["conString"].ToString();
        conn = new System.Data.SqlClient.SqlConnection(connection);
        conn.Open();
        string query = "select * from emplogin where empname='" + username + "' and emppass='" + password + "'";
        cmd = new SqlCommand(query, conn);
        da = new SqlDataAdapter(cmd);
        DataTable dt = new DataTable();
        da.Fill(dt);
        if (dt.Rows.Count > 0)
        {
            Session["empid"] = dt.Rows[0]["empname"].ToString();
            Response.Redirect("updates.aspx");
        }
        else
        {
            Label1.Visible = true;
            
        }
    }
}