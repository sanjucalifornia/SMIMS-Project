using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Data.SqlClient;
using System.Data;
using System.Configuration;

/// <summary>
/// Summary description for Outcome
/// </summary>
public class Outcome
{
    SqlConnection conn;
    SqlCommand cmd;
    private DateTime dischargedate;//outcomedate
    private DateTime dischargetime;//outcometime
    private string hospitalduration;
  
    private string icuduration;
    private string ventilatordays;
    private string prbc;
    private string ffp;
    private string cyroprecipitate;
    private string platelate;
    private string dischargedisposition;
    private string complication;
    private string eyeopening;
    private string verbalresponse;
    private string motorresponse;
    private string glassglowoutcomescale;
    private string consults;

    private string braindeath;
    private string lifesupport;
    private string autopsy;
    private string resultsrequested;
    private string resultsreceived;
    private string organdonated;
    private string organdonation;
    private string ddoutcome;
    private double pid;
    private string faciityname;
    private string hostipalduration2;
    private string other1;
     private string   other ;
    private string    total;

    public Outcome()
    {
        //
        // TODO: Add constructor logic here
        //
    }
   

    public DateTime Dischargedate { get => dischargedate; set => dischargedate = value; }
    public DateTime Dischargetime { get => dischargetime; set => dischargetime = value; }
    public string Hospitalduration { get => hospitalduration; set => hospitalduration = value; }
    public string Ventilatordays { get => ventilatordays; set => ventilatordays = value; }
    public string Icuduration { get => icuduration; set => icuduration = value; }
    public string Prbc { get => prbc; set => prbc = value; }
    public string Ffp { get => ffp; set => ffp = value; }
    public string Cyroprecipitate { get => cyroprecipitate; set => cyroprecipitate = value; }
    public string Other { get => other; set => other = value; }
    public string Dischargedisposition { get => dischargedisposition; set => dischargedisposition = value; }
    public string Eyeopening { get => eyeopening; set => eyeopening = value; }
    public string Complication { get => complication; set => complication = value; }
    public string Verbalresponse { get => verbalresponse; set => verbalresponse = value; }
    public string Motorresponse { get => motorresponse; set => motorresponse = value; }
    public string Glassglowoutcomescale { get => glassglowoutcomescale; set => glassglowoutcomescale = value; }
    public string Consults { get => consults; set => consults = value; }
    public string Braindeath { get => braindeath; set => braindeath = value; }
    public string Lifesupport { get => lifesupport; set => lifesupport = value; }
    public string Autopsy { get => autopsy; set => autopsy = value; }
    public string Resultsrequested { get => resultsrequested; set => resultsrequested = value; }
    public string Resultsreceived { get => resultsreceived; set => resultsreceived = value; }
    public string Organdonated { get => organdonated; set => organdonated = value; }
    public string Organdonation { get => organdonation; set => organdonation = value; }
    public string Ddoutcome { get => ddoutcome; set => ddoutcome = value; }
    public string Hostipalduration2 { get => hostipalduration2; set => hostipalduration2 = value; }
    public string Platelate { get => platelate; set => platelate = value; }
    public string Total { get => total; set => total = value; }
    public double Pid { get => pid; set => pid = value; }
    public string Faciityname { get => faciityname; set => faciityname = value; }
    public string Other1 { get => other1; set => other1 = value; }

    public void InsertOutcome()
    {
        String connection = ConfigurationManager.ConnectionStrings["conString"].ToString();
        conn = new SqlConnection(connection);
        conn.Open();
        cmd = new SqlCommand("InsertOutcome", conn);
        cmd.CommandType = System.Data.CommandType.StoredProcedure;
        cmd.Parameters.AddWithValue("@deathdischargedate", Dischargedate);
        cmd.Parameters.AddWithValue("@deathdischargetime", Dischargetime);
        cmd.Parameters.AddWithValue("@hospitalduration", Hospitalduration);
        cmd.Parameters.AddWithValue("@icuduration", Icuduration);
        cmd.Parameters.AddWithValue("@ventilatorduration", Ventilatordays);
        cmd.Parameters.AddWithValue("@prbc", Prbc);
        cmd.Parameters.AddWithValue("@ffp", Ffp);
        cmd.Parameters.AddWithValue("@cryoprecipitate", Cyroprecipitate );
        cmd.Parameters.AddWithValue("@other", Other);
        cmd.Parameters.AddWithValue("@dischargedispositionid", Dischargedisposition);
        cmd.Parameters.AddWithValue("@complicationid",Complication);
        cmd.Parameters.AddWithValue("@dischargeaadulteye", Eyeopening);
        cmd.Parameters.AddWithValue("@dischargeadultverbal", Verbalresponse);
        cmd.Parameters.AddWithValue("@dischargeadultmotor",Motorresponse);
        cmd.Parameters.AddWithValue("@glasgowoutcomescale", Glassglowoutcomescale);
        cmd.Parameters.AddWithValue("@consults", Consults);
        cmd.Parameters.AddWithValue("@braindeath", Braindeath);
        cmd.Parameters.AddWithValue("@lifesupport", Lifesupport);
        cmd.Parameters.AddWithValue("@autopsydone", Autopsy);
        cmd.Parameters.AddWithValue("@resultsrequested", Resultsrequested);
        cmd.Parameters.AddWithValue("@resultsreceived",Resultsreceived);
        cmd.Parameters.AddWithValue("@organdonated", Organdonated);
        cmd.Parameters.AddWithValue("@dddeathordischarge", Ddoutcome);
        cmd.Parameters.AddWithValue("@ddhospitalduration", Dischargedate);
        cmd.Parameters.AddWithValue("@platelate", Platelate);
        cmd.Parameters.AddWithValue("@total", Total);
        cmd.Parameters.AddWithValue("@organdonation", Organdonation);
        cmd.Parameters.AddWithValue("@pid", Pid);
        cmd.Parameters.AddWithValue("@facilityname", Faciityname);
        cmd.Parameters.AddWithValue("@other1", Other1);

        cmd.ExecuteNonQuery();
    }
    public void InsertBlankOutcome()
    {
        String connection = ConfigurationManager.ConnectionStrings["conString"].ToString();
        conn = new SqlConnection(connection);
        conn.Open();
        cmd = new SqlCommand("BlankOutcome", conn);
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
        cmd = new SqlCommand("UpdateOutcome", conn);
        cmd.CommandType = System.Data.CommandType.StoredProcedure;
        cmd.Parameters.AddWithValue("@deathdischargedate", Dischargedate);
        cmd.Parameters.AddWithValue("@deathdischargetime", Dischargetime);
        cmd.Parameters.AddWithValue("@hospitalduration", Hospitalduration);
        cmd.Parameters.AddWithValue("@icuduration", Icuduration);
        cmd.Parameters.AddWithValue("@ventilatorduration", Ventilatordays);
        cmd.Parameters.AddWithValue("@prbc", Prbc);
        cmd.Parameters.AddWithValue("@ffp", Ffp);
        cmd.Parameters.AddWithValue("@cryoprecipitate", Cyroprecipitate);
        cmd.Parameters.AddWithValue("@other", Other);
        cmd.Parameters.AddWithValue("@dischargedispositionid", Dischargedisposition);
        cmd.Parameters.AddWithValue("@complicationid", Complication);
        cmd.Parameters.AddWithValue("@dischargeaadulteye", Eyeopening);
        cmd.Parameters.AddWithValue("@dischargeadultverbal", Verbalresponse);
        cmd.Parameters.AddWithValue("@dischargeadultmotor", Motorresponse);
        cmd.Parameters.AddWithValue("@glasgowoutcomescale", Glassglowoutcomescale);
        cmd.Parameters.AddWithValue("@consults", Consults);
        cmd.Parameters.AddWithValue("@braindeath", Braindeath);
        cmd.Parameters.AddWithValue("@lifesupport", Lifesupport);
        cmd.Parameters.AddWithValue("@autopsydone", Autopsy);
        cmd.Parameters.AddWithValue("@resultsrequested", Resultsrequested);
        cmd.Parameters.AddWithValue("@resultsreceived", Resultsreceived);
        cmd.Parameters.AddWithValue("@organdonated", Organdonated);
        cmd.Parameters.AddWithValue("@dddeathordischarge", Ddoutcome);
        cmd.Parameters.AddWithValue("@ddhospitalduration", Dischargedate);
        cmd.Parameters.AddWithValue("@platelate", Platelate);
        cmd.Parameters.AddWithValue("@total", Total);
        cmd.Parameters.AddWithValue("@organdonation", Organdonation);
        cmd.Parameters.AddWithValue("@pid", Pid);
        cmd.Parameters.AddWithValue("@facilityname", Faciityname);
        cmd.Parameters.AddWithValue("@other1", Other1);
        cmd.ExecuteNonQuery();
    }
    public void Update(DataTable dataTable)
    {
        if(dataTable.Rows[0]["deathdischargedate"]!=DBNull.Value)
        Dischargedate = Convert.ToDateTime(dataTable.Rows[0]["deathdischargedate"].ToString());
        if(dataTable.Rows[0]["deathdischargedate"]!=DBNull.Value)
        Dischargetime = Convert.ToDateTime(dataTable.Rows[0]["deathdischargetime"].ToString());
        Hospitalduration = dataTable.Rows[0]["hospitalduration"].ToString();
        Icuduration = dataTable.Rows[0]["icuduration"].ToString();
        Ventilatordays = dataTable.Rows[0]["ventilatorduration"].ToString();
        Prbc = dataTable.Rows[0]["prbc"].ToString();
        Ffp=dataTable.Rows[0]["ffp"].ToString();
        Cyroprecipitate=dataTable.Rows[0]["cryoprecipitate"].ToString();
        Dischargedisposition = dataTable.Rows[0]["dischargedispositionid"].ToString();
        Complication = dataTable.Rows[0]["complicationid"].ToString();
        Eyeopening = dataTable.Rows[0]["dischargeaadulteye"].ToString();
        Verbalresponse = dataTable.Rows[0]["dischargeadultverbal"].ToString();
        Motorresponse = dataTable.Rows[0]["dischargeadultmotor"].ToString();
        Glassglowoutcomescale = dataTable.Rows[0]["glasgowoutcomescale"].ToString();
        Consults = dataTable.Rows[0]["consults"].ToString();
        Braindeath = dataTable.Rows[0]["braindeath"].ToString();
        Lifesupport = dataTable.Rows[0]["lifesupport"].ToString();
        Autopsy = dataTable.Rows[0]["autopsydone"].ToString();
        Resultsrequested = dataTable.Rows[0]["resultsrequested"].ToString();
        Resultsreceived = dataTable.Rows[0]["resultsreceived"].ToString();
        Organdonated = dataTable.Rows[0]["organdonated"].ToString();
        Organdonation = dataTable.Rows[0]["organdonation"].ToString();
        Other = dataTable.Rows[0]["other"].ToString();
        Ddoutcome = dataTable.Rows[0]["dddeathordischarge"].ToString();
        Hostipalduration2 = dataTable.Rows[0]["ddhospitalduration"].ToString();
        Platelate = dataTable.Rows[0]["platelate"].ToString();
        Total = dataTable.Rows[0]["total"].ToString();
        Other1 = dataTable.Rows[0]["other1"].ToString();

    }
}