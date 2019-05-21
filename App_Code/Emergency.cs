using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Data.SqlClient;
using System.Configuration;
using System.Data;
/// <summary>
/// Summary description for Emergency
/// </summary>
public class Emergency
{

    SqlConnection conn;
    SqlCommand cmd;
    SqlDataAdapter adptr;


    private string DirectAdmit;
    private string ReAdmission;
    private DateTime DateTimeE;
    private DateTime DateTimeED;
    private string TriageLevel;
    private string SignsOfLife;
    private string EdDead;
    private string TroumaTeam;
    private DateTime dateTraumaActivation;
    private DateTime timeTraumaActivation;

    private string ResponseLevel;
    private string Speciality;
    private string OtherSpeciality;
    private DateTime TimeCalled;
    private DateTime AvailiableCare;
    private string FirstPulseRate;
    private DateTime vitalsAtDate;
    private DateTime vitalsAtTime;

    private string FirstSystoliBP;
    private string FirstSpontaneous;
    private string LowestSystolicBP;
    private string RespiratoryControlled;
    private string Temperature;
    private string ddTemp;

    private string OxygenAir;
    private string OxygenSat;
    private DateTime gcsAtDate;
    private DateTime gcsAtTime;

    private string FirstHemcrott;
    private string RevisedScore;
    private string PediactricTscore;
     private string EDProcedureDone;
    private string Preexisting;
    private string CareIssuedFaced;
    private string CareIssuesFaced1;
    private string CareIssuesFaced2;
    private string EdDischarged;
    private string AdmittingService;
    private string AlcoholUse;
    private string DrugUse;
    private string Eye;
    private string Verbal;
    private string Motor;
    private string Total;
    private double totalGCS;
    private double Pid;
    private string Facilityname;
    private string OtherPreExisting;
    private string OtherDischarge;

    public Emergency()
    {
        //
        // TODO: Add constructor logic here
        //
    }

    public string DirectAdmit1 { get => DirectAdmit; set => DirectAdmit = value; }
    public string ReAdmission1 { get => ReAdmission; set => ReAdmission = value; }
    public DateTime DateTimeE1 { get => DateTimeE; set => DateTimeE = value; }
   
    public string TriageLevel1 { get => TriageLevel; set => TriageLevel = value; }
    public string SignsOfLife1 { get => SignsOfLife; set => SignsOfLife = value; }
    public string EdDead1 { get => EdDead; set => EdDead = value; }
    public string TroumaTeam1 { get => TroumaTeam; set => TroumaTeam = value; }
  
    public string ResponseLevel1 { get => ResponseLevel; set => ResponseLevel = value; }
    public string Speciality1 { get => Speciality; set => Speciality = value; }
    public DateTime AvailiableCare1 { get => AvailiableCare; set => AvailiableCare = value; }
    public DateTime TimeCalled1 { get => TimeCalled; set => TimeCalled = value; }
    public string FirstSystoliBP1 { get => FirstSystoliBP; set => FirstSystoliBP = value; }
    public string FirstPulseRate1 { get => FirstPulseRate; set => FirstPulseRate = value; }
    public string FirstSpontaneous1 { get => FirstSpontaneous; set => FirstSpontaneous = value; }
    public string LowestSystolicBP1 { get => LowestSystolicBP; set => LowestSystolicBP = value; }
    public string RespiratoryControlled1 { get => RespiratoryControlled; set => RespiratoryControlled = value; }
    public string Temperature1 { get => Temperature; set => Temperature = value; }
    public string OxygenAir1 { get => OxygenAir; set => OxygenAir = value; }
    public string OxygenSat1 { get => OxygenSat; set => OxygenSat = value; }
    public string FirstHemcrott1 { get => FirstHemcrott; set => FirstHemcrott = value; }
    public string RevisedScore1 { get => RevisedScore; set => RevisedScore = value; }
    public string PediactricTscore1 { get => PediactricTscore; set => PediactricTscore = value; }
    public string EDProcedureDone1 { get => EDProcedureDone; set => EDProcedureDone = value; }
    public string Preexisting1 { get => Preexisting; set => Preexisting = value; }
    public string CareIssuedFaced1 { get => CareIssuedFaced; set => CareIssuedFaced = value; }
    public string EdDischarged1 { get => EdDischarged; set => EdDischarged = value; }
    public string AdmittingService1 { get => AdmittingService; set => AdmittingService = value; }
    public string AlcoholUse1 { get => AlcoholUse; set => AlcoholUse = value; }
    public string DrugUse1 { get => DrugUse; set => DrugUse = value; }
    public DateTime DateTimeED1 { get => DateTimeED; set => DateTimeED = value; }
    public DateTime DateTraumaActivation { get => dateTraumaActivation; set => dateTraumaActivation = value; }
    public DateTime TimeTraumaActivation { get => timeTraumaActivation; set => timeTraumaActivation = value; }
    public DateTime VitalsAtDate { get => vitalsAtDate; set => vitalsAtDate = value; }
    public DateTime VitalsAtTime { get => vitalsAtTime; set => vitalsAtTime = value; }
    public string DdTemp { get => ddTemp; set => ddTemp = value; }
    public DateTime GcsAtDate { get => gcsAtDate; set => gcsAtDate = value; }
    public DateTime GcsAtTime { get => gcsAtTime; set => gcsAtTime = value; }
    public string CareIssuesFaced11 { get => CareIssuesFaced1; set => CareIssuesFaced1 = value; }
    public string CareIssuesFaced21 { get => CareIssuesFaced2; set => CareIssuesFaced2 = value; }
    public string Eye1 { get => Eye; set => Eye = value; }
    public string Verbal1 { get => Verbal; set => Verbal = value; }
    public string Motor1 { get => Motor; set => Motor = value; }
    public string Total1 { get => Total; set => Total = value; }
    public double Pid1 { get => Pid; set => Pid = value; }
    public string Facilityname1 { get => Facilityname; set => Facilityname = value; }
    public string OtherSpeciality1 { get => OtherSpeciality; set => OtherSpeciality = value; }
    public string OtherPreExisting1 { get => OtherPreExisting; set => OtherPreExisting = value; }
    public string OtherDischarge1 { get => OtherDischarge; set => OtherDischarge = value; }
    public double TotalGCS { get => totalGCS; set => totalGCS = value; }

    //lets insert data 
    public void InsertData()
    {
        conn = new SqlConnection(ConfigurationManager.ConnectionStrings["conString"].ToString());
        conn.Open();
        cmd = new SqlCommand("InsertEmergency", conn);
        cmd.CommandType = System.Data.CommandType.StoredProcedure;
        
        cmd.Parameters.AddWithValue("@directadmit", DirectAdmit1);
        cmd.Parameters.AddWithValue("@readmission", ReAdmission1);
        cmd.Parameters.AddWithValue("@eddate", DateTimeE1);
        cmd.Parameters.AddWithValue("@edtime", DateTimeED1);

        cmd.Parameters.AddWithValue("@triagelevel", TriageLevel1);
        cmd.Parameters.AddWithValue("@signsoflife", SignsOfLife1);
        cmd.Parameters.AddWithValue("@eddeath", EdDead1);

        cmd.Parameters.AddWithValue("@traumateamactivated", TroumaTeam1);
        if(DateTraumaActivation == null)
        {
            cmd.Parameters.AddWithValue("@dateofTroumamateamactiv", DBNull.Value);
        }
        else
        {
            cmd.Parameters.AddWithValue("@dateofTroumamateamactiv", DateTraumaActivation);
        }
        if(TimeTraumaActivation == null)
        {
            cmd.Parameters.AddWithValue("@timeofTroumamateamactiv", DBNull.Value);
        }
        else
        {
            cmd.Parameters.AddWithValue("@timeofTroumamateamactiv", TimeTraumaActivation);
        }
        
        cmd.Parameters.AddWithValue("@responselevel",ResponseLevel1);

        cmd.Parameters.AddWithValue("@speciality", Speciality1);
        cmd.Parameters.AddWithValue("@timecalled", TimeCalled1);
        cmd.Parameters.AddWithValue("@availforcare",AvailiableCare1);

        cmd.Parameters.AddWithValue("@vitalsatdate", VitalsAtDate);
        cmd.Parameters.AddWithValue("@vitalsattime", VitalsAtTime);
        cmd.Parameters.AddWithValue("@firstsystolicbp", FirstSystoliBP1);

        cmd.Parameters.AddWithValue("@firstspontaneousresprate", FirstSpontaneous1);

        cmd.Parameters.AddWithValue("@lowestsystolicbp", LowestSystolicBP1);
        cmd.Parameters.AddWithValue("@respiratoryratecontrol", RespiratoryControlled1);
        cmd.Parameters.AddWithValue("@temperature", Temperature1);

        cmd.Parameters.AddWithValue("@ddtemperature",DdTemp);

        cmd.Parameters.AddWithValue("@oxygensatroom", OxygenAir1);
        cmd.Parameters.AddWithValue("@oxygensatsupplement", OxygenSat1);
        cmd.Parameters.AddWithValue("@firsthematrocrit", FirstHemcrott1);
        cmd.Parameters.AddWithValue("@gcsatdate", GcsAtDate );

        cmd.Parameters.AddWithValue("@gcsattime", GcsAtTime);
        cmd.Parameters.AddWithValue("@eye", Eye1);
        cmd.Parameters.AddWithValue("@verbal", Verbal1);
        cmd.Parameters.AddWithValue("@motor", Motor1);
        cmd.Parameters.AddWithValue("@total", TotalGCS);

        cmd.Parameters.AddWithValue("@totalgcs", Total1);
        

        cmd.Parameters.AddWithValue("@revisedTroumamascore", RevisedScore1);

        cmd.Parameters.AddWithValue("@pediatricTroumamascore", PediactricTscore1);
        cmd.Parameters.AddWithValue("@edprocedureid", EDProcedureDone1);

        cmd.Parameters.AddWithValue("@preexistingid", Preexisting1);
        cmd.Parameters.AddWithValue("@careissuesfaceid1", CareIssuedFaced1);
        cmd.Parameters.AddWithValue("@careissuesfaceid2", CareIssuesFaced11);
        cmd.Parameters.AddWithValue("@careissuesfaceid3", CareIssuesFaced21);
        cmd.Parameters.AddWithValue("@eddischargedispositionid", EdDischarged1);

        cmd.Parameters.AddWithValue("@admittingservice", AdmittingService1);
        cmd.Parameters.AddWithValue("@alcoholuseindicator", AlcoholUse1);

        cmd.Parameters.AddWithValue("@druguseindicator", DrugUse1);
       
        cmd.Parameters.AddWithValue("@otherspeciality", OtherSpeciality1 );
        cmd.Parameters.AddWithValue("@otherpreexisting", OtherPreExisting1);
      

       cmd.Parameters.AddWithValue("@othereddischargedispositon", OtherDischarge1);
       
        cmd.Parameters.AddWithValue("@pid", Pid1);
        cmd.Parameters.AddWithValue("@facilityname", Facilityname1);

        cmd.ExecuteScalar();
    }
    public void InsertBlankEmergency()
    {
        String connection = ConfigurationManager.ConnectionStrings["conString"].ToString();
        conn = new SqlConnection(connection);
        conn.Open();
        cmd = new SqlCommand("BlankEmergency", conn);
        cmd.CommandType = System.Data.CommandType.StoredProcedure;
        cmd.Parameters.AddWithValue("@pid", HttpContext.Current.Session["newpatient"]);
        cmd.Parameters.AddWithValue("@facilityname", HttpContext.Current.Session["facility"]);
        cmd.ExecuteNonQuery();

    }
    public void UpdateDB()
    {
        conn = new SqlConnection(ConfigurationManager.ConnectionStrings["conString"].ToString());
        conn.Open();
        cmd = new SqlCommand("UpdateEmergency", conn);
        cmd.CommandType = System.Data.CommandType.StoredProcedure;

        cmd.Parameters.AddWithValue("@directadmit", DirectAdmit1);
        cmd.Parameters.AddWithValue("@readmission", ReAdmission1);
        cmd.Parameters.AddWithValue("@eddate", DateTimeE1);
        cmd.Parameters.AddWithValue("@edtime", DateTimeED1);

        cmd.Parameters.AddWithValue("@triagelevel", TriageLevel1);
        cmd.Parameters.AddWithValue("@signsoflife", SignsOfLife1);
        cmd.Parameters.AddWithValue("@eddeath", EdDead1);

        cmd.Parameters.AddWithValue("@traumateamactivated", TroumaTeam1);
        if (DateTraumaActivation.Year < 1900)
        {
            cmd.Parameters.AddWithValue("@dateofTroumamateamactiv", DBNull.Value);
        }
        else
        {
            cmd.Parameters.AddWithValue("@dateofTroumamateamactiv", DateTraumaActivation);
        }
        if (TimeTraumaActivation.Year < 1900)
        {
            cmd.Parameters.AddWithValue("@timeofTroumamateamactiv", DBNull.Value);
        }
        else
        {
            cmd.Parameters.AddWithValue("@timeofTroumamateamactiv", TimeTraumaActivation);
        }
        cmd.Parameters.AddWithValue("@responselevel", ResponseLevel1);

        cmd.Parameters.AddWithValue("@speciality", Speciality1);
        cmd.Parameters.AddWithValue("@timecalled", TimeCalled1);
        cmd.Parameters.AddWithValue("@availforcare", AvailiableCare1);

        cmd.Parameters.AddWithValue("@vitalsatdate", VitalsAtDate);
        cmd.Parameters.AddWithValue("@vitalsattime", VitalsAtTime);
        cmd.Parameters.AddWithValue("@firstsystolicbp", FirstSystoliBP1);

        cmd.Parameters.AddWithValue("@firstspontaneousresprate", FirstSpontaneous1);

        cmd.Parameters.AddWithValue("@lowestsystolicbp", LowestSystolicBP1);
        cmd.Parameters.AddWithValue("@respiratoryratecontrol", RespiratoryControlled1);
        cmd.Parameters.AddWithValue("@temperature", Temperature1);

        cmd.Parameters.AddWithValue("@ddtemperature", DdTemp);

        cmd.Parameters.AddWithValue("@oxygensatroom", OxygenAir1);
        cmd.Parameters.AddWithValue("@oxygensatsupplement", OxygenSat1);
        cmd.Parameters.AddWithValue("@firsthematrocrit", FirstHemcrott1);
        cmd.Parameters.AddWithValue("@gcsatdate", GcsAtDate);

        cmd.Parameters.AddWithValue("@gcsattime", GcsAtTime);
        cmd.Parameters.AddWithValue("@eye", Eye1);
        cmd.Parameters.AddWithValue("@verbal", Verbal1);
        cmd.Parameters.AddWithValue("@motor", Motor1);
        cmd.Parameters.AddWithValue("@totalgcs", Total1);

        cmd.Parameters.AddWithValue("@total", TotalGCS);


        cmd.Parameters.AddWithValue("@revisedTroumamascore", RevisedScore1);

        cmd.Parameters.AddWithValue("@pediatricTroumamascore", PediactricTscore1);
        cmd.Parameters.AddWithValue("@edprocedureid", EDProcedureDone1);

        cmd.Parameters.AddWithValue("@preexistingid", Preexisting1);
        cmd.Parameters.AddWithValue("@careissuesfaceid1", CareIssuedFaced1);
        cmd.Parameters.AddWithValue("@careissuesfaceid2", CareIssuesFaced11);
        cmd.Parameters.AddWithValue("@careissuesfaceid3", CareIssuesFaced21);
        cmd.Parameters.AddWithValue("@eddischargedispositionid", EdDischarged1);

        cmd.Parameters.AddWithValue("@admittingservice", AdmittingService1);
        cmd.Parameters.AddWithValue("@alcoholuseindicator", AlcoholUse1);

        cmd.Parameters.AddWithValue("@druguseindicator", DrugUse1);

        cmd.Parameters.AddWithValue("@otherspeciality", OtherSpeciality1);
        cmd.Parameters.AddWithValue("@otherpreexisting", OtherPreExisting1);


        cmd.Parameters.AddWithValue("@othereddischargedispositon", OtherDischarge1);

        cmd.Parameters.AddWithValue("@pid", Pid1);
        cmd.Parameters.AddWithValue("@facilityname", Facilityname1);

        cmd.ExecuteScalar();
    }
    public void Update(DataTable dataTable)
    {
        //dataTable.Rows[0][""].ToString();

        DirectAdmit1 = dataTable.Rows[0]["directadmit"].ToString();
        ReAdmission1 = dataTable.Rows[0]["readmission"].ToString();
        if(dataTable.Rows[0]["eddate"]!=DBNull.Value)
        DateTimeE1 = Convert.ToDateTime(dataTable.Rows[0]["eddate"].ToString());
        if(dataTable.Rows[0]["edtime"]!=DBNull.Value)
        DateTimeED1 = Convert.ToDateTime(dataTable.Rows[0]["edtime"].ToString());
        TriageLevel1 = dataTable.Rows[0]["triagelevel"].ToString();
        SignsOfLife1 = dataTable.Rows[0]["signsoflife"].ToString();

        EdDead1 = dataTable.Rows[0]["eddeath"].ToString();
        TroumaTeam1 = dataTable.Rows[0]["traumateamactivated"].ToString();
        if(dataTable.Rows[0]["dateoftraumateamactiv"]!=DBNull.Value)
        DateTraumaActivation = Convert.ToDateTime(dataTable.Rows[0]["dateoftraumateamactiv"].ToString());
        if(dataTable.Rows[0]["timeoftraumateamactiv"]!=DBNull.Value)
        TimeTraumaActivation = Convert.ToDateTime(dataTable.Rows[0]["timeoftraumateamactiv"].ToString());
        ResponseLevel1 = dataTable.Rows[0]["reponselevel"].ToString();
        Speciality1 = dataTable.Rows[0]["speciality"].ToString();
        OtherSpeciality1 = dataTable.Rows[0]["otherspeciality"].ToString();
        if(dataTable.Rows[0]["timecalled1"]!=DBNull.Value)
        TimeCalled1 = Convert.ToDateTime(dataTable.Rows[0]["timecalled1"].ToString());
        if(dataTable.Rows[0]["availforcare"]!=DBNull.Value)
        AvailiableCare1 = Convert.ToDateTime(dataTable.Rows[0]["availforcare"].ToString());
        if(dataTable.Rows[0]["vitalsatdate"]!=DBNull.Value)
        VitalsAtDate = Convert.ToDateTime(dataTable.Rows[0]["vitalsatdate"].ToString());
        if(dataTable.Rows[0]["vitalsattime"]!=DBNull.Value)
        VitalsAtTime = Convert.ToDateTime(dataTable.Rows[0]["vitalsattime"].ToString());
        FirstPulseRate1 = dataTable.Rows[0]["firstpulserate"].ToString();
        FirstSystoliBP1 = dataTable.Rows[0]["firstsystolicbp"].ToString();
        LowestSystolicBP1 = dataTable.Rows[0]["lowestsystolicbp"].ToString();
        FirstSpontaneous1 = dataTable.Rows[0]["firstspontaneousresprate"].ToString();
        RespiratoryControlled1 = dataTable.Rows[0]["respiratoryratecontrol"].ToString();
        Temperature1 = dataTable.Rows[0]["temperature"].ToString();
        DdTemp = dataTable.Rows[0]["ddtemperature"].ToString();
        OxygenAir1 = dataTable.Rows[0]["oxygensatroom"].ToString();
        OxygenSat1 = dataTable.Rows[0]["oxygensatsupplement"].ToString();
        if(dataTable.Rows[0]["gcsatdate"]!=DBNull.Value)
        GcsAtDate = Convert.ToDateTime(dataTable.Rows[0]["gcsatdate"].ToString());
        if(dataTable.Rows[0]["gcsatdate"]!=DBNull.Value)
        GcsAtTime = Convert.ToDateTime(dataTable.Rows[0]["gcsattime"].ToString());
        FirstHemcrott1 = dataTable.Rows[0]["firsthematocrit"].ToString();
        RevisedScore1 = dataTable.Rows[0]["revisedtraumascore"].ToString();
        PediactricTscore1 = dataTable.Rows[0]["pediatrictraumascore"].ToString();
        EDProcedureDone1 = dataTable.Rows[0]["edprocedureid"].ToString();
        Preexisting1 = dataTable.Rows[0]["preexistingid"].ToString();
        OtherPreExisting1 = dataTable.Rows[0]["otherpreexisting"].ToString();
        CareIssuedFaced1 = dataTable.Rows[0]["careissuesfacedid1"].ToString();
        CareIssuesFaced11 = dataTable.Rows[0]["careissuesfacedid2"].ToString();
        CareIssuesFaced21 = dataTable.Rows[0]["careissuesfacedid3"].ToString();
        EdDischarged1 = dataTable.Rows[0]["eddischargedispositionid"].ToString();
        OtherDischarge1 = dataTable.Rows[0]["othereddischargedispositon"].ToString();
        AdmittingService1 = dataTable.Rows[0]["admittingservice"].ToString();
        AlcoholUse1 = dataTable.Rows[0]["alcoholuseindicator"].ToString();
        DrugUse1 = dataTable.Rows[0]["druguseindicator"].ToString();
        Eye1 = dataTable.Rows[0]["eye"].ToString();
        Verbal1 = dataTable.Rows[0]["verbal"].ToString();
        Motor1 = dataTable.Rows[0]["motor"].ToString();
        Total = dataTable.Rows[0]["totalgcs"].ToString();

        




    }
}