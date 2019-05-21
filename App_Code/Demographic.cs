using System;
using System.Collections.Generic;
using System.Configuration;
using System.Data;
using System.Data.SqlClient;
using System.Linq;
using System.Web;

/// <summary>
/// Summary description for Demographic
/// </summary>
public class Demographic1
{
    SqlConnection conn;
    SqlCommand cmd;
    private string facilityName;
    private DateTime dateOfRegistration;
    private DateTime timeOfRegistration;
    private Double patientId;
    private Double aadharNo;
    private string patientFName;
    private string patientMName;
    private string patientLName;
    private DateTime dob;
    private int age;
    private string ageUnit;
    private string sex;
    private string relativeName1;
    private string relativePhone1;
    private string relative1Relation;
    private string currentPlaceOfResidence;
    private Int64 currentPin;
    private Double currentPhone;
    private string currentPoliceStation;
    private string permanentPlaceOfResidence;
    private Int64 permanentPin;
    private Double permanentPhone;
    private string permanentPoliceStation;
    private string addressUnit;
    private string occupation;
    private string education;
    private string otherrelation;
    private string estimated;
    private string relative2name;
    private string relationshiprelative2;
    private string mobilenorelative2;
    private string otherrelation2;
    private double hospitalno;

    public Demographic1()
    {
        //
        // TODO: Add constructor logic here
        //
    }
    //Getters and Setters

    public string FacilityName { get => facilityName; set => facilityName = value; }
    public DateTime DateOfRegistration { get => dateOfRegistration; set => dateOfRegistration = value; }
    public DateTime TimeOfRegistration { get => timeOfRegistration; set => timeOfRegistration = value; }
    public double PatientId { get => patientId; set => patientId = value; }
    public double AadharNo { get => aadharNo; set => aadharNo = value; }
    public string PatientFName { get => patientFName; set => patientFName = value; }
    public string PatientMName { get => patientMName; set => patientMName = value; }
    public string PatientLName { get => patientLName; set => patientLName = value; }
    public DateTime Dob { get => dob; set => dob = value; }
    public int Age { get => age; set => age = value; }
    public string AgeUnit { get => ageUnit; set => ageUnit = value; }
    public string Sex { get => sex; set => sex = value; }
    public string RelativeName1 { get => relativeName1; set => relativeName1 = value; }
    public string CurrentPlaceOfResidence { get => currentPlaceOfResidence; set => currentPlaceOfResidence = value; }
    public long CurrentPin { get => currentPin; set => currentPin = value; }
    public double CurrentPhone { get => currentPhone; set => currentPhone = value; }
    public string PermanentPlaceOfResidence { get => permanentPlaceOfResidence; set => permanentPlaceOfResidence = value; }
    public long PermanentPin { get => permanentPin; set => permanentPin = value; }
    public double PermanentPhone { get => permanentPhone; set => permanentPhone = value; }
    public string AddressUnit { get => addressUnit; set => addressUnit = value; }
    public string Occupation { get => occupation; set => occupation = value; }
    public string Education { get => education; set => education = value; }
    public string RelativePhone1 { get => relativePhone1; set => relativePhone1 = value; }
    public string Relative1Relation { get => relative1Relation; set => relative1Relation = value; }
    public string CurrentPoliceStation { get => currentPoliceStation; set => currentPoliceStation = value; }
    public string PermanentPoliceStation { get => permanentPoliceStation; set => permanentPoliceStation = value; }
    public string Otherrelation { get => otherrelation; set => otherrelation = value; }
    public string Estimated { get => estimated; set => estimated = value; }
    public string Relative2name { get => relative2name; set => relative2name = value; }
    public string Relationshiprelative2 { get => relationshiprelative2; set => relationshiprelative2 = value; }
    public string Mobilenorelative2 { get => mobilenorelative2; set => mobilenorelative2 = value; }
    public string Otherrelation2 { get => otherrelation2; set => otherrelation2 = value; }
    public double Hospitalno { get => hospitalno; set => hospitalno = value; }

    //Function to Insert Demographic Data in Database
    public void InsertData()
    {
        estimated = "0";
        String connection = ConfigurationManager.ConnectionStrings["conString"].ToString();
        conn = new SqlConnection(connection);
        conn.Open();
        cmd = new SqlCommand("InsertDemographic", conn);
        cmd.CommandType = System.Data.CommandType.StoredProcedure;

        cmd.Parameters.AddWithValue("@facilityname", facilityName);
        cmd.Parameters.AddWithValue("@dateofregistration", dateOfRegistration);
        cmd.Parameters.AddWithValue("@timeofregistration", timeOfRegistration);
        cmd.Parameters.AddWithValue("@pid", patientId);
        cmd.Parameters.AddWithValue("@aadharno", aadharNo);
        cmd.Parameters.AddWithValue("@firstname", patientFName);
        cmd.Parameters.AddWithValue("@middlename", patientMName);


        cmd.Parameters.AddWithValue("@lastname", patientLName);
        cmd.Parameters.AddWithValue("@dateofbirth", dob);
        cmd.Parameters.AddWithValue("@age", age);

        cmd.Parameters.AddWithValue("@ageunit", ageUnit);
        cmd.Parameters.AddWithValue("@sex", sex);
        cmd.Parameters.AddWithValue("@relative1name", relativeName1);

        cmd.Parameters.AddWithValue("@currentaddress", currentPlaceOfResidence);
        cmd.Parameters.AddWithValue("@currentpin", currentPin);
        cmd.Parameters.AddWithValue("@currentmobile", currentPhone);
        cmd.Parameters.AddWithValue("@currentpolicestation", currentPoliceStation);
        
        cmd.Parameters.AddWithValue("@permaddress", permanentPlaceOfResidence);

        cmd.Parameters.AddWithValue("@permanentpin", permanentPin);
        cmd.Parameters.AddWithValue("@permmobile", permanentPhone);
        cmd.Parameters.AddWithValue("@permpolicestation", permanentPoliceStation);

       
        cmd.Parameters.AddWithValue("@addressunitid", addressUnit);
        cmd.Parameters.AddWithValue("@occupationid", occupation);

        cmd.Parameters.AddWithValue("@educationid", education);

        
        cmd.Parameters.AddWithValue("@otherrelation", otherrelation);
        cmd.Parameters.AddWithValue("@estimated", estimated);
        cmd.Parameters.AddWithValue("@mobilenorelative1",relativePhone1 );

        cmd.Parameters.AddWithValue("@relationshiprelative", relative1Relation);
        cmd.Parameters.AddWithValue("@relative2name", relative2name);
        cmd.Parameters.AddWithValue("@relationshiprelative2", relationshiprelative2);
        cmd.Parameters.AddWithValue("@mobilenorelative2", mobilenorelative2);
        cmd.Parameters.AddWithValue("@otherrelation2", otherrelation2);
        cmd.Parameters.AddWithValue("@hospitalno", hospitalno);

       
        cmd.ExecuteScalar();
    }
    public void Update(DataTable dataTable)
    {
        FacilityName = dataTable.Rows[0]["facilityname"].ToString();
        DateOfRegistration = Convert.ToDateTime(dataTable.Rows[0]["dateofregistration"].ToString());
        TimeOfRegistration = Convert.ToDateTime(dataTable.Rows[0]["timeofregistration"].ToString());
        AadharNo = Convert.ToDouble(dataTable.Rows[0]["aadharno"]);
        PatientLName = dataTable.Rows[0]["lastname"].ToString();
        PatientFName = dataTable.Rows[0]["firstname"].ToString();
        PatientMName = dataTable.Rows[0]["middlename"].ToString();
        Dob = Convert.ToDateTime(dataTable.Rows[0]["dateofbirth"].ToString());

        Hospitalno = Convert.ToDouble(dataTable.Rows[0]["hospitalno"]);
        Age = Convert.ToInt32(dataTable.Rows[0]["age"]);
        AgeUnit = dataTable.Rows[0]["ageunit"].ToString();

        Sex = dataTable.Rows[0]["sex"].ToString();
        RelativeName1 = dataTable.Rows[0]["relative1name"].ToString();
       if (dataTable.Rows[0]["mobilenorelative1"] == DBNull.Value) { }
        else { RelativePhone1 = Convert.ToString(dataTable.Rows[0]["mobilenorelative1"]); }
       if (dataTable.Rows[0]["relationshiprelative1"] == DBNull.Value) { }
        else { Relative1Relation = dataTable.Rows[0]["relationshiprelative1"].ToString(); }
        CurrentPlaceOfResidence = dataTable.Rows[0]["currentaddress"].ToString();
        CurrentPin = Convert.ToInt64(dataTable.Rows[0]["currentpin"]);
        CurrentPhone = Convert.ToDouble(dataTable.Rows[0]["currentmobile"]);
        CurrentPoliceStation = dataTable.Rows[0]["currentpolicestation"].ToString();
        PermanentPlaceOfResidence = Convert.ToString(dataTable.Rows[0]["permaddress"]);
        PermanentPin = Convert.ToInt32(dataTable.Rows[0]["permanentpin"]);
        PermanentPhone = Convert.ToDouble(dataTable.Rows[0]["permmobile"]);
        PermanentPoliceStation = dataTable.Rows[0]["permpolicestation"].ToString();
        AddressUnit = dataTable.Rows[0]["addressunitid"].ToString();
       
        Occupation = dataTable.Rows[0]["occupationid"].ToString();

      
        Education = dataTable.Rows[0]["educationid"].ToString();
        Otherrelation = dataTable.Rows[0]["otherrelation"].ToString();
        Estimated = dataTable.Rows[0]["estimated"].ToString();
        RelativePhone1=  dataTable.Rows[0]["mobilenorelative1"].ToString();
        Relative1Relation = dataTable.Rows[0]["relationshiprelative1"].ToString();
        Relative2name = dataTable.Rows[0]["relative2name"].ToString();
        Relationshiprelative2 = dataTable.Rows[0]["relationshiprelative2"].ToString();
        Mobilenorelative2 = dataTable.Rows[0]["mobilenorelative2"].ToString();
        Otherrelation2 = dataTable.Rows[0]["otherrelation2"].ToString();



    }
    public void UpdateDb()
    {
        String connection = ConfigurationManager.ConnectionStrings["conString"].ToString();
        conn = new SqlConnection(connection);
        conn.Open();
        cmd = new SqlCommand("UpdateDemographic", conn);
        cmd.CommandType = System.Data.CommandType.StoredProcedure;
        cmd.Parameters.AddWithValue("@facilityname", facilityName);
        cmd.Parameters.AddWithValue("@dateofregistration", dateOfRegistration);
        cmd.Parameters.AddWithValue("@timeofregistration", timeOfRegistration);
        cmd.Parameters.AddWithValue("@pid", patientId);
        cmd.Parameters.AddWithValue("@aadharno", aadharNo);
        cmd.Parameters.AddWithValue("@firstname", patientFName);
        cmd.Parameters.AddWithValue("@middlename", patientMName);


        cmd.Parameters.AddWithValue("@lastname", patientLName);
        cmd.Parameters.AddWithValue("@dateofbirth", dob);
        cmd.Parameters.AddWithValue("@age", age);

        cmd.Parameters.AddWithValue("@ageunit", ageUnit);
        cmd.Parameters.AddWithValue("@sex", sex);
        cmd.Parameters.AddWithValue("@relative1name", relativeName1);
        
     
        cmd.Parameters.AddWithValue("@currentaddress", currentPlaceOfResidence);
        cmd.Parameters.AddWithValue("@currentpin", currentPin);
        cmd.Parameters.AddWithValue("@currentmobile", currentPhone);
        cmd.Parameters.AddWithValue("@currentpolicestation", currentPoliceStation);
        
        cmd.Parameters.AddWithValue("@permaddress", permanentPlaceOfResidence);

        cmd.Parameters.AddWithValue("@permanentpin", permanentPin);
        cmd.Parameters.AddWithValue("@permmobile", permanentPhone);
        cmd.Parameters.AddWithValue("@permpolicestation", permanentPoliceStation);

       
        cmd.Parameters.AddWithValue("@addressunitid", addressUnit);
        cmd.Parameters.AddWithValue("@occupationid", occupation);

        cmd.Parameters.AddWithValue("@educationid", education);
        cmd.Parameters.AddWithValue("@otherrelation", otherrelation);
        cmd.Parameters.AddWithValue("@estimated", estimated);
        cmd.Parameters.AddWithValue("@mobilenorelative1", relativePhone1);

        cmd.Parameters.AddWithValue("@relationshiprelative", relative1Relation);
        cmd.Parameters.AddWithValue("@relative2name", relative2name);
        cmd.Parameters.AddWithValue("@relationshiprelative2", relationshiprelative2);
        cmd.Parameters.AddWithValue("@mobilenorelative2", mobilenorelative2);
        cmd.Parameters.AddWithValue("@otherrelation2", otherrelation2);
        cmd.Parameters.AddWithValue("@hospitalno", hospitalno);
        cmd.ExecuteScalar();
    }
}