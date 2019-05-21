using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Data;
using System.Data.SqlClient;
using System.Configuration;
using System.Data.SqlTypes;

/// <summary>
/// Summary description for OperationData
/// </summary>
public class OperationData
{
    SqlCommand cmd;
    SqlConnection conn;
    private string WasSurgeryPerformed;
    private string typeofsurgery1;
    private DateTime startdate1;
    private DateTime starttime1;
    private string ordispostion1;
    private double pid;
    private string facilityname;
    private string typeofsurgery2;
    private string typeofsurgery3;
    private DateTime startdate2;
    private DateTime startdate3;
    private  DateTime starttime2;
    private DateTime starttime3;
    private string ordispostion2;
    private string ordispostion3;
    public OperationData()
    {
        //
        // TODO: Add constructor logic here
        //
    }

    public string WasSurgeryPerformed1 { get => WasSurgeryPerformed; set => WasSurgeryPerformed = value; }
    public string Typeofsurgery1 { get => typeofsurgery1; set => typeofsurgery1 = value; }
    public DateTime Startdate1 { get => startdate1; set => startdate1 = value; }
    public DateTime Starttime1 { get => starttime1; set => starttime1 = value; }
    public string Ordispostion1 { get => ordispostion1; set => ordispostion1 = value; }
    public double Pid { get => pid; set => pid = value; }
    public string Facilityname { get => facilityname; set => facilityname = value; }
    public string Typeofsurgery2 { get => typeofsurgery2; set => typeofsurgery2 = value; }
    public string Typeofsurgery3 { get => typeofsurgery3; set => typeofsurgery3 = value; }
    public DateTime Startdate2 { get => startdate2; set => startdate2 = value; }
    public DateTime Startdate3 { get => startdate3; set => startdate3 = value; }
    public string Ordispostion2 { get => ordispostion2; set => ordispostion2 = value; }
    public string Ordispostion3 { get => ordispostion3; set => ordispostion3 = value; }
    public DateTime Starttime2 { get => starttime2; set => starttime2 = value; }
    public DateTime Starttime3 { get => starttime3; set => starttime3 = value; }

    public void InsertOperationalData()
    {
        string connection = ConfigurationManager.ConnectionStrings["connString"].ToString();
        conn = new SqlConnection(connection);
        cmd = new SqlCommand("InsertOperationData", conn);
        cmd.CommandType = System.Data.CommandType.StoredProcedure;

  

        cmd.Parameters.AddWithValue("@wassurgeryperformed",WasSurgeryPerformed);
        cmd.Parameters.AddWithValue("@typeofsurgery1", typeofsurgery1);
        cmd.Parameters.AddWithValue("@typeofsurgery2", typeofsurgery2);
        cmd.Parameters.AddWithValue("@typeofsurgery3", typeofsurgery2);

        if(Startdate2 < SqlDateTime.MinValue)
        {
            cmd.Parameters.AddWithValue("@startdate2", DBNull.Value);
            
        }
        else
        {
            cmd.Parameters.AddWithValue("@startdate2", startdate2);
        }
        if(Startdate3 < SqlDateTime.MinValue)
        {
            cmd.Parameters.AddWithValue("@startdate3", DBNull.Value);

        }
        else
        {
            cmd.Parameters.AddWithValue("@startdate3", startdate3);
        }
        cmd.Parameters.AddWithValue("@startdate1", startdate1);
        

        cmd.Parameters.AddWithValue("@starttime1", starttime1);
        cmd.Parameters.AddWithValue("@starttime2", starttime2);
        cmd.Parameters.AddWithValue("@starttime3", starttime3);


        cmd.Parameters.AddWithValue("@ordisposition1",ordispostion1);
        cmd.Parameters.AddWithValue("@ordisposition2", ordispostion2);
        cmd.Parameters.AddWithValue("@ordisposition3", ordispostion3);

        cmd.Parameters.AddWithValue("@pid", Pid);
        cmd.Parameters.AddWithValue("@facilityname", Facilityname);
        cmd.ExecuteScalar();

    }
    public void InsertBlankOperation()
    {
        String connection = ConfigurationManager.ConnectionStrings["conString"].ToString();
        conn = new SqlConnection(connection);
        conn.Open();
        cmd = new SqlCommand("BlankOperation", conn);
        cmd.CommandType = System.Data.CommandType.StoredProcedure;
        cmd.Parameters.AddWithValue("@pid", HttpContext.Current.Session["newpatient"]);
        cmd.Parameters.AddWithValue("@facilityname", HttpContext.Current.Session["facility"]);
        cmd.ExecuteNonQuery();

    }
    public void UpdateOperation(DataTable dataTable)
    {
   

        WasSurgeryPerformed = dataTable.Rows[0]["wassurgeryperformed"].ToString();
        typeofsurgery1 = dataTable.Rows[0]["typeofsurgery1"].ToString();
        typeofsurgery2 = dataTable.Rows[0]["typeofsurgery2"].ToString();
        typeofsurgery3 = dataTable.Rows[0]["typeofsurgery3"].ToString();
        if (dataTable.Rows[0]["startdate1"] != DBNull.Value)
            startdate1 = Convert.ToDateTime(dataTable.Rows[0]["startdate1"].ToString());
       
           
        if(dataTable.Rows[0]["startdate2"]!=DBNull.Value)
        startdate2 = Convert.ToDateTime(dataTable.Rows[0]["startdate2"].ToString());
        if(dataTable.Rows[0]["startdate3"]!=DBNull.Value)
        startdate3 = Convert.ToDateTime(dataTable.Rows[0]["startdate3"].ToString());
        if(dataTable.Rows[0]["starttime1"]!=DBNull.Value)
        starttime1 = Convert.ToDateTime(dataTable.Rows[0]["starttime1"].ToString());
        if (dataTable.Rows[0]["starttime2"] != DBNull.Value)
            starttime2 = Convert.ToDateTime(dataTable.Rows[0]["starttime2"].ToString());
        if (dataTable.Rows[0]["starttime3"] != DBNull.Value)
            starttime3 = Convert.ToDateTime(dataTable.Rows[0]["starttime3"].ToString());

        ordispostion1 = dataTable.Rows[0]["ordisposition1"].ToString();
        ordispostion2 = dataTable.Rows[0]["ordisposition2"].ToString();
        ordispostion3 = dataTable.Rows[0]["ordisposition3"].ToString();


    }
    public void UpdateOperation1()
    {
        string connection = ConfigurationManager.ConnectionStrings["conString"].ToString();
        conn = new SqlConnection(connection);
        conn.Open();
        cmd = new SqlCommand("UpdateOperation", conn);
        cmd.CommandType = System.Data.CommandType.StoredProcedure;


        cmd.Parameters.AddWithValue("@wassurgeryperformed", WasSurgeryPerformed);
        cmd.Parameters.AddWithValue("@typeofsurgery1", typeofsurgery1);
        cmd.Parameters.AddWithValue("@typeofsurgery2", typeofsurgery2);
        cmd.Parameters.AddWithValue("@typeofsurgery3", typeofsurgery2);

        if (Startdate2.Year < 1980)
        {
            cmd.Parameters.AddWithValue("@startdate2", DBNull.Value);

        }
        else
        {
            cmd.Parameters.AddWithValue("@startdate2", startdate2);
        }
        if (Startdate3.Year <1980)
        {
            cmd.Parameters.AddWithValue("@startdate3", DBNull.Value);

        }
        else
        {
            cmd.Parameters.AddWithValue("@startdate3", startdate3);
        }
        cmd.Parameters.AddWithValue("@startdate1", startdate1);


        cmd.Parameters.AddWithValue("@starttime1", starttime1);
        cmd.Parameters.AddWithValue("@starttime2", starttime2);
        cmd.Parameters.AddWithValue("@starttime3", starttime3);

        cmd.Parameters.AddWithValue("@ordisposition1", ordispostion1);
        cmd.Parameters.AddWithValue("@ordisposition2", ordispostion2);
        cmd.Parameters.AddWithValue("@ordisposition3", ordispostion3);

        cmd.Parameters.AddWithValue("@pid", Pid);
        cmd.Parameters.AddWithValue("@facilityname", Facilityname);
        cmd.ExecuteScalar();
    }
}