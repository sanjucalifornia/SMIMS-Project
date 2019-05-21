using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Data;
using System.Data.SqlClient;
using System.Configuration;

/// <summary>
/// Summary description for diagnosis
/// </summary>
public class Diagnosis
{
    SqlConnection conn;
    SqlCommand cmd;
    private string bodyregionid1;
    private string bodyregionid2;
    private string bodyregionid3;
    private string bodyregionid4;

    private string typeofinjuryid1;
    private string typeofinjuryid2;
    private string typeofinjuryid3;
    private string typeofinjuryid4;
    private string anatomicalpart1;
    private string anatomicalpart2;
    private string anatomicalpart3;
    private string anatomicalpart4;
    private string level1;
    private string level2;
    private string level3;
    private string level4;
    private string icd10codeid1;
    private string icd10codeid2;
    private string icd10codeid3;
    private string icd10codeid4;
    private string injurynarrative;
    private double pid;
    private string facilityname;
    
    public Diagnosis()
    {
        //
        // TODO: Add constructor logic here
        //
    }

    public string Bodyregionid2 { get => bodyregionid2; set => bodyregionid2 = value; }
    public string Bodyregionid3 { get => bodyregionid3; set => bodyregionid3 = value; }
    public string Bodyregionid4 { get => bodyregionid4; set => bodyregionid4 = value; }
    public string Typeofinjuryid1 { get => typeofinjuryid1; set => typeofinjuryid1 = value; }
    public string Bodyregionid1 { get => bodyregionid1; set => bodyregionid1 = value; }
    public string Typeofinjuryid2 { get => typeofinjuryid2; set => typeofinjuryid2 = value; }
    public string Typeofinjuryid3 { get => typeofinjuryid3; set => typeofinjuryid3 = value; }
    public string Typeofinjuryid4 { get => typeofinjuryid4; set => typeofinjuryid4 = value; }
    public string Anatomicalpart1 { get => anatomicalpart1; set => anatomicalpart1 = value; }
    public string Anatomicalpart2 { get => anatomicalpart2; set => anatomicalpart2 = value; }
    public string Anatomicalpart3 { get => anatomicalpart3; set => anatomicalpart3 = value; }
    public string Anatomicalpart4 { get => anatomicalpart4; set => anatomicalpart4 = value; }
    public string Level1 { get => level1; set => level1 = value; }
    public string Level2 { get => level2; set => level2 = value; }
    public string Level3 { get => level3; set => level3 = value; }
    public string Level4 { get => level4; set => level4 = value; }
    public string Icd10codeid1 { get => icd10codeid1; set => icd10codeid1 = value; }
    public string Icd10codeid2 { get => icd10codeid2; set => icd10codeid2 = value; }
    public string Icd10codeid3 { get => icd10codeid3; set => icd10codeid3 = value; }
    public string Icd10codeid4 { get => icd10codeid4; set => icd10codeid4 = value; }
    public string Injurynarrative { get => injurynarrative; set => injurynarrative = value; }
    
    public string Facilityname { get => facilityname; set => facilityname = value; }
    public double Pid1 { get => pid; set => pid = value; }

    public void InsertDiagnosis()
    {
        conn=new SqlConnection(ConfigurationManager.ConnectionStrings["conString"].ToString());
        conn.Open();
        cmd = new SqlCommand("InsertDiagnosis", conn);
        cmd.CommandType= System.Data.CommandType.StoredProcedure;

      
        cmd.Parameters.AddWithValue("@bodyregionid1", bodyregionid1);
        cmd.Parameters.AddWithValue("@bodyregionid2", bodyregionid2);
        cmd.Parameters.AddWithValue("@bodyregionid3", bodyregionid3);
        cmd.Parameters.AddWithValue("@bodyregionid4", bodyregionid4);

        cmd.Parameters.AddWithValue("@typeofinjuryid1", typeofinjuryid1);
        cmd.Parameters.AddWithValue("@typeofinjuryid2", typeofinjuryid2);
        cmd.Parameters.AddWithValue("@typeofinjuryid3", typeofinjuryid3);
        cmd.Parameters.AddWithValue("@typeofinjuryid4", typeofinjuryid4);

        cmd.Parameters.AddWithValue("@anatomicalpart1", anatomicalpart1);
        cmd.Parameters.AddWithValue("@anatomicalpart2", anatomicalpart2);
        cmd.Parameters.AddWithValue("@anatomicalpart3", anatomicalpart3);
        cmd.Parameters.AddWithValue("@anatomicalpart4", anatomicalpart4);

        cmd.Parameters.AddWithValue("@level1", level1);
        cmd.Parameters.AddWithValue("@level2", level2);
        cmd.Parameters.AddWithValue("@level3", level3);
        cmd.Parameters.AddWithValue("@level4", level4);

        cmd.Parameters.AddWithValue("@icd10codeid1", icd10codeid1);
        cmd.Parameters.AddWithValue("@icd10codeid2", icd10codeid2);
        cmd.Parameters.AddWithValue("@icd10codeid3", icd10codeid3);
        cmd.Parameters.AddWithValue("@icd10codeid4", icd10codeid4);

        cmd.Parameters.AddWithValue("@injurynarrative", injurynarrative);
        cmd.Parameters.AddWithValue("@pid", Pid1);
        cmd.Parameters.AddWithValue("@facilityname", Facilityname);

        cmd.ExecuteScalar();
    }
    public void InsertBlankDiagnosis()
    {
        String connection = ConfigurationManager.ConnectionStrings["conString"].ToString();
        conn = new SqlConnection(connection);
        conn.Open();
        cmd = new SqlCommand("BlankDiagnosis", conn);
        cmd.CommandType = System.Data.CommandType.StoredProcedure;
        cmd.Parameters.AddWithValue("@pid", HttpContext.Current.Session["newpatient"]);
        cmd.Parameters.AddWithValue("@facilityname", HttpContext.Current.Session["facility"]);
        cmd.ExecuteNonQuery();

    }
    public  void Update(DataTable datatable)
    {
        

        Bodyregionid1 = datatable.Rows[0]["bodyregionid1"].ToString();
        Bodyregionid2 = datatable.Rows[0]["bodyregionid2"].ToString();
        Bodyregionid3 = datatable.Rows[0]["bodyregionid3"].ToString();
        Bodyregionid4 = datatable.Rows[0]["bodyregionid4"].ToString();

        Typeofinjuryid1 = datatable.Rows[0]["typeofinjuryid1"].ToString();
        Typeofinjuryid2 = datatable.Rows[0]["typeofinjuryid2"].ToString();
        Typeofinjuryid3 = datatable.Rows[0]["typeofinjuryid3"].ToString();
        Typeofinjuryid4 = datatable.Rows[0]["typeofinjuryid4"].ToString();

        Anatomicalpart1 = datatable.Rows[0]["anatomicalpart1"].ToString();
        Anatomicalpart2 = datatable.Rows[0]["anatomicalpart2"].ToString();
        Anatomicalpart3 = datatable.Rows[0]["anatomicalpart3"].ToString();
        Anatomicalpart4 = datatable.Rows[0]["anatomicalpart4"].ToString();

        Level1 = datatable.Rows[0]["level1"].ToString();
        Level2 = datatable.Rows[0]["level2"].ToString();
        Level3 = datatable.Rows[0]["level3"].ToString();
        Level4 = datatable.Rows[0]["level4"].ToString();

        Icd10codeid1 = datatable.Rows[0]["icd10codeid1"].ToString();
        Icd10codeid2 = datatable.Rows[0]["icd10codeid2"].ToString();
        Icd10codeid3= datatable.Rows[0]["icd10codeid3"].ToString();
        Icd10codeid4 = datatable.Rows[0]["icd10codeid4"].ToString();

        Injurynarrative = datatable.Rows[0]["injurynarrative"].ToString();
    }
    public void UpdateDiagnosis()
    {
        String connection = ConfigurationManager.ConnectionStrings["conString"].ToString();
        conn = new SqlConnection(connection);
        conn.Open();
        cmd = new SqlCommand("UpdateDiagnosis", conn);
        cmd.CommandType = System.Data.CommandType.StoredProcedure;

        cmd.Parameters.AddWithValue("@bodyregionid1", bodyregionid1);
        cmd.Parameters.AddWithValue("@bodyregionid2", bodyregionid2);
        cmd.Parameters.AddWithValue("@bodyregionid3", bodyregionid3);
        cmd.Parameters.AddWithValue("@bodyregionid4", bodyregionid4);

        cmd.Parameters.AddWithValue("@typeofinjuryid1", typeofinjuryid1);
        cmd.Parameters.AddWithValue("@typeofinjuryid2", typeofinjuryid2);
        cmd.Parameters.AddWithValue("@typeofinjuryid3", typeofinjuryid3);
        cmd.Parameters.AddWithValue("@typeofinjuryid4", typeofinjuryid4);

        cmd.Parameters.AddWithValue("@anatomicalpart1", anatomicalpart1);
        cmd.Parameters.AddWithValue("@anatomicalpart2", anatomicalpart2);
        cmd.Parameters.AddWithValue("@anatomicalpart3", anatomicalpart3);
        cmd.Parameters.AddWithValue("@anatomicalpart4", anatomicalpart4);


        cmd.Parameters.AddWithValue("@level1", level1);
        cmd.Parameters.AddWithValue("@level2", level2);
        cmd.Parameters.AddWithValue("@level3", level3);
        cmd.Parameters.AddWithValue("@level4", level4);

        cmd.Parameters.AddWithValue("@icd10codeid1", icd10codeid1);
        cmd.Parameters.AddWithValue("@icd10codeid2", icd10codeid2);
        cmd.Parameters.AddWithValue("@icd10codeid3", icd10codeid3);
        cmd.Parameters.AddWithValue("@icd10codeid4", icd10codeid4);

        cmd.Parameters.AddWithValue("@injurynarrative", injurynarrative);
        cmd.Parameters.AddWithValue("@pid", Pid1);
        //cmd.Parameters.AddWithValue("@facilityname", Facilityname);
        cmd.ExecuteScalar();

    }
}