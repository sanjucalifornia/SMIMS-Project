using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Data.SqlClient;
using System.Configuration;
using System.Data;

/// <summary>
/// Summary description for Prehospital
/// </summary>
public class Prehospital1
{
    SqlConnection conn;
    SqlCommand cmd;
    private string CareReceived;
    private string FirstResponsetime;
    private string ddInjuryTime;
    private string Responders;
    private string ResponseArea;
    private string ModeOfTransportPrehospital;
    private string CrewMemberLevel;
    private double pid;
    private string otherCrewMember;
    private string otherFirstResponder;
    private string otherModeOfTransport;
    private string facilityName;
    private string otherCareReceived;
    public Prehospital1()
    {
        //
        // TODO: Add constructor logic here
        //
    }
    

    public string CrewMemberLevel1 { get => CrewMemberLevel; set => CrewMemberLevel = value; }
    public string ModeOfTransportPrehospital1 { get => ModeOfTransportPrehospital; set => ModeOfTransportPrehospital = value; }
    public string Responders1 { get => Responders; set => Responders = value; }
   
    public string CareReceived1 { get => CareReceived; set => CareReceived = value; }
    public string ResponseArea1 { get => ResponseArea; set => ResponseArea = value; }
   
    public string FirstResponsetime2 { get => FirstResponsetime; set => FirstResponsetime = value; }
    public double Pid { get => pid; set => pid = value; }
    public string OtherCrewMember { get => otherCrewMember; set => otherCrewMember = value; }
    public string OtherFirstResponder { get => otherFirstResponder; set => otherFirstResponder = value; }
    public string FacilityName { get => facilityName; set => facilityName = value; }
    public string DdInjuryTime { get => ddInjuryTime; set => ddInjuryTime = value; }
    public string OtherCareReceived { get => otherCareReceived; set => otherCareReceived = value; }
    public string OtherModeOfTransport { get => otherModeOfTransport; set => otherModeOfTransport = value; }

    //insert function
    public void InsertData()
    {
        String connection = ConfigurationManager.ConnectionStrings["conString"].ToString();
        conn = new SqlConnection(connection);
        conn.Open();
        cmd = new SqlCommand("InsertPrehospital", conn);
        cmd.CommandType = System.Data.CommandType.StoredProcedure;
        cmd.Parameters.AddWithValue("@crewmember",CrewMemberLevel);
        cmd.Parameters.AddWithValue("@careid", CareReceived1);
        cmd.Parameters.AddWithValue("@timeofinjury",FirstResponsetime);
        cmd.Parameters.AddWithValue("@firstresponderid",Responders1 );
        cmd.Parameters.AddWithValue("@responsearea", ResponseArea);
        cmd.Parameters.AddWithValue("@othercrewmwmber", OtherCrewMember);
        cmd.Parameters.AddWithValue("@otherfirstresponder", OtherFirstResponder);
        cmd.Parameters.AddWithValue("@modeoftransportid", ModeOfTransportPrehospital);
        cmd.Parameters.AddWithValue("@othercarereceived", OtherCareReceived);
        cmd.Parameters.AddWithValue("@othermodetransport", OtherModeOfTransport);
        cmd.Parameters.AddWithValue("@pid", Pid);
        cmd.Parameters.AddWithValue("@ddinjurytime", DdInjuryTime);
        cmd.Parameters.AddWithValue("@facilityname", FacilityName);
        cmd.ExecuteNonQuery();
       
    }
    public void InsertBlankPrehospital()
    {
        String connection = ConfigurationManager.ConnectionStrings["conString"].ToString();
        conn = new SqlConnection(connection);
        conn.Open();
        cmd = new SqlCommand("BlankPrehospital", conn);
        cmd.CommandType = System.Data.CommandType.StoredProcedure;
        cmd.Parameters.AddWithValue("@pid", HttpContext.Current.Session["newpatient"]);
        cmd.Parameters.AddWithValue("@facilityname", HttpContext.Current.Session["facility"]);
        cmd.ExecuteNonQuery();

    }
    public void UpdateDB()
    {
        String connection = ConfigurationManager.ConnectionStrings["conString"].ToString();
        conn = new SqlConnection(connection);
        conn.Open();
        cmd = new SqlCommand("UpdatePrehospital", conn);
        cmd.CommandType = System.Data.CommandType.StoredProcedure;
        cmd.Parameters.AddWithValue("@crewmember", CrewMemberLevel);
        cmd.Parameters.AddWithValue("@careid", CareReceived1);
        cmd.Parameters.AddWithValue("@timeofinjury", FirstResponsetime);
        cmd.Parameters.AddWithValue("@firstresponderid", Responders1);
        cmd.Parameters.AddWithValue("@responsearea", ResponseArea);
        cmd.Parameters.AddWithValue("@othercrewmwmber", OtherCrewMember);
        cmd.Parameters.AddWithValue("@otherfirstresponder", OtherFirstResponder);
        cmd.Parameters.AddWithValue("@modeoftransportid", ModeOfTransportPrehospital);
        cmd.Parameters.AddWithValue("@othercarereceived", OtherCareReceived);
        cmd.Parameters.AddWithValue("@othermodetransport", OtherModeOfTransport);
        cmd.Parameters.AddWithValue("@pid", Pid);
        cmd.Parameters.AddWithValue("@ddinjurytime", DdInjuryTime);
        cmd.Parameters.AddWithValue("@facilityname", FacilityName);
        cmd.ExecuteNonQuery();
    }
    public void Update(DataTable dataTable)
    {
        CareReceived1 = dataTable.Rows[0]["carerecieved"].ToString();
        CrewMemberLevel1 = dataTable.Rows[0]["crewmember"].ToString();
        FirstResponsetime2= dataTable.Rows[0]["timeofinjury"].ToString();
        Responders1=dataTable.Rows[0]["firstresponderid"].ToString();
        ResponseArea1 = dataTable.Rows[0]["responsearea"].ToString();
        OtherCrewMember = dataTable.Rows[0]["othercrewmember"].ToString();
        OtherFirstResponder = dataTable.Rows[0]["otherfirstresponder"].ToString();
        
        DdInjuryTime = dataTable.Rows[0]["ddtimeinjury"].ToString();
        ModeOfTransportPrehospital1 = dataTable.Rows[0]["modeoftransportid"].ToString();
        OtherCareReceived = dataTable.Rows[0]["othercarereceived"].ToString();
        OtherModeOfTransport = dataTable.Rows[0]["othermodeoftransport"].ToString();





    }
}