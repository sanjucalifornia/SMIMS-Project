using System;
using System.Collections.Generic;
using System.Configuration;
using System.Data;
using System.Data.SqlClient;
using System.Linq;
using System.Web;

/// <summary>
/// Summary description for Injury
/// </summary>
public class Injury
{
    SqlConnection conn;
    SqlCommand cmd;
    private DateTime injuryDate;
    private DateTime injuryTime;
    private string addressOfIncident;
    private Int64 pin;
    private string policeStation;
    private string incidentType;
    private string otherIncidentType;
    private string intent;
    private string placeOfOccurrence;
    private string otherPlaceOfOccurrence;
    private string activity;
    private string otherActivity;
    private string mechanismOfInjuryID;
    private string otherMechanismOfInjury;
    private string workRelatedInjury;
    private string typeOfInsustry;
    private string modeOfTransportID;
    private string otherModeOfTransport;
    private string counterPartID;
    private string otherCounterPart;
    private string roleOfPersonInjuredID;
    private string otherRoleOrPosition;
    private string contextInterPersonal;
    private string otherContextInterPersonal;
    private string relationshipInterPersonal;
    private string otherRelationshipInterPersonal;
    private string priorAttempt;
    private string contextSelfDirectedID;
    private string otherContextSelf;
    private string safetyEquipmentID;
    private string otherSafetyEquipment;
    private string injuryMemo;
    private string injuryCauseCodeID;
    private double pid;
    private string facilityname;



    public Injury()
    {

    }

    public DateTime InjuryDate { get => injuryDate; set => injuryDate = value; }
    public DateTime InjuryTime { get => injuryTime; set => injuryTime = value; }
    public string AddressOfIncident { get => addressOfIncident; set => addressOfIncident = value; }
    public long Pin { get => pin; set => pin = value; }
    public string PoliceStation { get => policeStation; set => policeStation = value; }
    public string IncidentType { get => incidentType; set => incidentType = value; }
    public string OtherIncidentType { get => otherIncidentType; set => otherIncidentType = value; }
    public string Intent { get => intent; set => intent = value; }
    public string PlaceOfOccurrence { get => placeOfOccurrence; set => placeOfOccurrence = value; }
    public string OtherPlaceOfOccurrence { get => otherPlaceOfOccurrence; set => otherPlaceOfOccurrence = value; }
    public string Activity { get => activity; set => activity = value; }
    public string OtherActivity { get => otherActivity; set => otherActivity = value; }
    public string MechanismOfInjuryID { get => mechanismOfInjuryID; set => mechanismOfInjuryID = value; }
    public string OtherMechanismOfInjury { get => otherMechanismOfInjury; set => otherMechanismOfInjury = value; }
    public string WorkRelatedInjury { get => workRelatedInjury; set => workRelatedInjury = value; }
    public string TypeOfInsustry { get => typeOfInsustry; set => typeOfInsustry = value; }
    public string ModeOfTransportID { get => modeOfTransportID; set => modeOfTransportID = value; }
    public string OtherModeOfTransport { get => otherModeOfTransport; set => otherModeOfTransport = value; }
    public string CounterPartID { get => counterPartID; set => counterPartID = value; }
    public string OtherCounterPart { get => otherCounterPart; set => otherCounterPart = value; }
    public string RoleOfPersonInjuredID { get => roleOfPersonInjuredID; set => roleOfPersonInjuredID = value; }
    public string OtherRoleOrPosition { get => otherRoleOrPosition; set => otherRoleOrPosition = value; }
    public string ContextInterPersonal { get => contextInterPersonal; set => contextInterPersonal = value; }
    public string OtherContextInterPersonal { get => otherContextInterPersonal; set => otherContextInterPersonal = value; }
    public string RelationshipInterPersonal { get => relationshipInterPersonal; set => relationshipInterPersonal = value; }
    public string OtherRelationshipInterPersonal { get => otherRelationshipInterPersonal; set => otherRelationshipInterPersonal = value; }
    public string PriorAttempt { get => priorAttempt; set => priorAttempt = value; }
    public string ContextSelfDirectedID { get => contextSelfDirectedID; set => contextSelfDirectedID = value; }
    public string OtherContextSelf { get => otherContextSelf; set => otherContextSelf = value; }
    public string SafetyEquipmentID { get => safetyEquipmentID; set => safetyEquipmentID = value; }
    public string OtherSafetyEquipment { get => otherSafetyEquipment; set => otherSafetyEquipment = value; }
    public string InjuryMemo { get => injuryMemo; set => injuryMemo = value; }
    public string InjuryCauseCodeID { get => injuryCauseCodeID; set => injuryCauseCodeID = value; }
    public double Pid { get => pid; set => pid = value; }
    public string Facilityname { get => facilityname; set => facilityname = value; }

    public void InsertInjury()
    {
        String connection = ConfigurationManager.ConnectionStrings["conString"].ToString();
        conn = new SqlConnection(connection);
        conn.Open();
        cmd = new SqlCommand("InsertInjury", conn);
        cmd.CommandType = System.Data.CommandType.StoredProcedure;

        cmd.Parameters.AddWithValue("@injurydate", injuryDate);
        cmd.Parameters.AddWithValue("@injurytime", injuryTime);
        cmd.Parameters.AddWithValue("@addressofincident", addressOfIncident);
        cmd.Parameters.AddWithValue("@pin", pin);
        cmd.Parameters.AddWithValue("@policestation", policeStation);
        cmd.Parameters.AddWithValue("@incidenttype", incidentType);
        cmd.Parameters.AddWithValue("@otherincidenttype", otherIncidentType);
        cmd.Parameters.AddWithValue("@intent", intent);
        cmd.Parameters.AddWithValue("@placeofoccurrence", placeOfOccurrence);
        cmd.Parameters.AddWithValue("@otherplaceofoccurrence", otherPlaceOfOccurrence);
        cmd.Parameters.AddWithValue("@activity", activity);
        cmd.Parameters.AddWithValue("@otheractivity", otherActivity);
        cmd.Parameters.AddWithValue("@mechanismofinjury", mechanismOfInjuryID);
        cmd.Parameters.AddWithValue("@othermechanismofinjury", otherMechanismOfInjury);
        cmd.Parameters.AddWithValue("@workrelatedinjury", workRelatedInjury);
        cmd.Parameters.AddWithValue("@typeofindustry", typeOfInsustry);
        cmd.Parameters.AddWithValue("@modeoftransport", modeOfTransportID);
        cmd.Parameters.AddWithValue("@othermodeoftransport", otherModeOfTransport);
        cmd.Parameters.AddWithValue("@counterpart", counterPartID);
        cmd.Parameters.AddWithValue("@othercounterpart", otherCounterPart);
        cmd.Parameters.AddWithValue("@roleofpersoninjured", roleOfPersonInjuredID);
        cmd.Parameters.AddWithValue("@otherroleofpersoninjured", otherRoleOrPosition);
        cmd.Parameters.AddWithValue("@contextinterpersonal", contextInterPersonal);
        cmd.Parameters.AddWithValue("@othercontextinterpersonal", otherContextInterPersonal);
        cmd.Parameters.AddWithValue("@relationinterpersonal", relationshipInterPersonal);
        cmd.Parameters.AddWithValue("@otherrelationinterpersonal", otherRelationshipInterPersonal);
        cmd.Parameters.AddWithValue("@priorattempt", priorAttempt);
        cmd.Parameters.AddWithValue("@contextselfdirected", contextSelfDirectedID);
        cmd.Parameters.AddWithValue("@othercontextself", otherContextSelf);
        cmd.Parameters.AddWithValue("@safetyequip", safetyEquipmentID);
        cmd.Parameters.AddWithValue("@othersafetyequip", otherSafetyEquipment);
        cmd.Parameters.AddWithValue("@injurymemo", injuryMemo);
        cmd.Parameters.AddWithValue("@injurycausecode", injuryCauseCodeID);
        cmd.Parameters.AddWithValue("@pid", Pid);
        cmd.Parameters.AddWithValue("@facilityname", Facilityname);
        cmd.ExecuteScalar();
    }
    
    public void InsertBlankInjury()
    {
        String connection = ConfigurationManager.ConnectionStrings["conString"].ToString();
        conn = new SqlConnection(connection);
        conn.Open();
        cmd = new SqlCommand("BlankInjury", conn);
        cmd.CommandType = System.Data.CommandType.StoredProcedure;
        cmd.Parameters.AddWithValue("@pid", HttpContext.Current.Session["newpatient"]);
        cmd.Parameters.AddWithValue("@facilityname", HttpContext.Current.Session["facility"]);
        cmd.ExecuteNonQuery();
       
    }
    public void UpdateDb()
    {
        String connection = ConfigurationManager.ConnectionStrings["conString"].ToString();
        conn = new SqlConnection(connection);
        conn.Open();
        cmd = new SqlCommand("UpdateInjury", conn);

        cmd.CommandType = System.Data.CommandType.StoredProcedure;
        cmd.Parameters.AddWithValue("@injurydate", injuryDate);
        cmd.Parameters.AddWithValue("@injurytime", injuryTime);
        cmd.Parameters.AddWithValue("@addressofincident", addressOfIncident);
        cmd.Parameters.AddWithValue("@pin", pin);
        cmd.Parameters.AddWithValue("@policestation", policeStation);
        cmd.Parameters.AddWithValue("@incidenttype", incidentType);
        cmd.Parameters.AddWithValue("@otherincidenttype", otherIncidentType);
        cmd.Parameters.AddWithValue("@intent", intent);
        cmd.Parameters.AddWithValue("@placeofoccurrence", placeOfOccurrence);
        cmd.Parameters.AddWithValue("@otherplaceofoccurrence", otherPlaceOfOccurrence);
        cmd.Parameters.AddWithValue("@activity", activity);
        cmd.Parameters.AddWithValue("@otheractivity", otherActivity);
        cmd.Parameters.AddWithValue("@mechanismofinjury", mechanismOfInjuryID);
        cmd.Parameters.AddWithValue("@othermechanismofinjury", otherMechanismOfInjury);
        cmd.Parameters.AddWithValue("@workrelatedinjury", workRelatedInjury);
        cmd.Parameters.AddWithValue("@typeofindustry", typeOfInsustry);
        cmd.Parameters.AddWithValue("@modeoftransport", modeOfTransportID);
        cmd.Parameters.AddWithValue("@othermodeoftransport", otherModeOfTransport);
        cmd.Parameters.AddWithValue("@counterpart", counterPartID);
        cmd.Parameters.AddWithValue("@othercounterpart", otherCounterPart);
        cmd.Parameters.AddWithValue("@roleofpersoninjured", roleOfPersonInjuredID);
        cmd.Parameters.AddWithValue("@otherroleofpersoninjured", otherRoleOrPosition);
        cmd.Parameters.AddWithValue("@contextinterpersonal", contextInterPersonal);
        cmd.Parameters.AddWithValue("@othercontextinterpersonal", otherContextInterPersonal);
        cmd.Parameters.AddWithValue("@relationinterpersonal", relationshipInterPersonal);
        cmd.Parameters.AddWithValue("@otherrelationinterpersonal", otherRelationshipInterPersonal);
        cmd.Parameters.AddWithValue("@priorattempt", priorAttempt);
        cmd.Parameters.AddWithValue("@contextselfdirected", contextSelfDirectedID);
        cmd.Parameters.AddWithValue("@othercontextself", otherContextSelf);
        cmd.Parameters.AddWithValue("@safetyequip", safetyEquipmentID);
        cmd.Parameters.AddWithValue("@othersafetyequip", otherSafetyEquipment);
        cmd.Parameters.AddWithValue("@injurymemo", injuryMemo);
        cmd.Parameters.AddWithValue("@injurycausecode", injuryCauseCodeID);
        cmd.Parameters.AddWithValue("@pid", Pid);
        cmd.Parameters.AddWithValue("@facilityname", Facilityname);
        cmd.ExecuteScalar();
    }
    public void Update(DataTable dataTable)
    {
        if(dataTable.Rows[0]["injurydate"]!=DBNull.Value)
        InjuryDate = Convert.ToDateTime(dataTable.Rows[0]["injurydate"]);
        if(dataTable.Rows[0]["injurytime"]!=DBNull.Value)
        InjuryTime = Convert.ToDateTime(dataTable.Rows[0]["injurytime"].ToString());
        AddressOfIncident = dataTable.Rows[0]["addressofincident"].ToString();
        if (dataTable.Rows[0]["pin"] != DBNull.Value)
         Pin = Convert.ToInt64(dataTable.Rows[0]["pin"]);
        PoliceStation = dataTable.Rows[0]["incidentpolicestation"].ToString();
        IncidentType = dataTable.Rows[0]["incidenttype"].ToString();
        Intent = dataTable.Rows[0]["intent"].ToString();
        PlaceOfOccurrence = dataTable.Rows[0]["placeofoccurrenceid"].ToString();



        Activity= Convert.ToString(dataTable.Rows[0]["activity"]);
        MechanismOfInjuryID = dataTable.Rows[0]["mechanismofinjuryid"].ToString();

        WorkRelatedInjury = dataTable.Rows[0]["workrelatedinjury"].ToString();
        ModeOfTransportID = dataTable.Rows[0]["modeoftransporteventid"].ToString();
        
        CounterPartID = dataTable.Rows[0]["counterpartid"].ToString();
        RoleOfPersonInjuredID= Convert.ToString(dataTable.Rows[0]["roleofpersoninjuredid"]);
        ContextInterPersonal= Convert.ToString(dataTable.Rows[0]["contextinterpersonal"]);
        OtherContextInterPersonal = dataTable.Rows[0]["othercontextinterpersonal"].ToString();
        PriorAttempt = Convert.ToString(dataTable.Rows[0]["priorattempt"]);
        ContextSelfDirectedID = Convert.ToString(dataTable.Rows[0]["contextselfdirectedid"]);
        OtherContextSelf = Convert.ToString(dataTable.Rows[0]["othercontextself"]);
        SafetyEquipmentID = dataTable.Rows[0]["safetyequipmentid"].ToString();
        InjuryMemo = dataTable.Rows[0]["injurymemo"].ToString();

        InjuryCauseCodeID = dataTable.Rows[0]["injurycausecodeid"].ToString();


        OtherIncidentType = dataTable.Rows[0]["otherincidenttype"].ToString();
        OtherPlaceOfOccurrence = dataTable.Rows[0]["otherplaceofoccurence"].ToString();
        OtherActivity = dataTable.Rows[0]["otheractivity"].ToString();
        OtherMechanismOfInjury = dataTable.Rows[0]["othermechanismofinjury"].ToString();
        OtherModeOfTransport = dataTable.Rows[0]["othermodeoftransportevent"].ToString();
        OtherCounterPart= dataTable.Rows[0]["othercounterpart"].ToString();
        OtherRoleOrPosition = dataTable.Rows[0]["otherroleofpersoninjured"].ToString();
        OtherSafetyEquipment = dataTable.Rows[0]["othersafetyequipment"].ToString();
       

        Facilityname = dataTable.Rows[0]["facilityname"].ToString();
        TypeOfInsustry = dataTable.Rows[0]["typeofindustry"].ToString();



    }
}