using System;
using System.Collections.Generic;
using System.Linq;
using System.Data;//used for dataset
using System.Data.SqlClient;//used for SQL command Object
using System.Configuration;//used for accessing web.config file
using System.Web;

/// <summary>
/// Summary description for DatabaseConnection
/// </summary>
public class DatabaseConnection
{
     private SqlConnection scn;
    private SqlCommand scmd;
    private SqlDataReader sdr;
    private DataSet ds;
    private SqlDataAdapter da;
	public DatabaseConnection()
	{
        
        scn = new SqlConnection();//creating a new connection or collection of connection..which is accessble for all files

    }
    public SqlDataReader getSQLReader(String strSQL)
    {
        scn = new SqlConnection();
        scn.Open();
        scmd = new SqlCommand(strSQL, scn);
        sdr = scmd.ExecuteReader();
        return sdr;
    }
    public DataSet getDataSet(String strSQL, String tablename)
    {
        ds = new DataSet();
        scmd = new SqlCommand(strSQL, scn);
        da = new SqlDataAdapter(scmd);
        da.Fill(ds);
        return ds;
    }
    public int InsertData(String tablename, String fields, String values)
    {
        scn = new SqlConnection();
        scn.Open();
        scmd = new SqlCommand("Insert into " + tablename + "(" + fields + ")" + " values(" + values + ")", scn);
        return scmd.ExecuteNonQuery();// return no of rows inserted
    }
    public int UpdateData(String tablename, String Qry, String whr)
    {
        scmd.CommandText = "Update" + tablename + "set" + Qry + "where" + whr;
        return scmd.ExecuteNonQuery();
    }
	
}