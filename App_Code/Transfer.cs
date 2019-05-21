using System;
using System.Collections.Generic;
using System.Configuration;
using System.Data;
using System.Data.SqlClient;
using System.Linq;
using System.Web;

/// <summary>
/// Summary description for Transfer
/// </summary>
public class Transfer
{
    SqlConnection conn;
    SqlCommand cmd;
    private string TransferIn;
    private string ReferringFacility;
    private string ReasonReferral;
    private string ModeOfTransferT;
    private DateTime ArrivedDate;
    private DateTime ArrivedTime;
    private DateTime DepartDate;
    private DateTime DepartTime;
    private string SBP;
    private string PulseRate;
    private string RespiratoryRate;
    private string Temperature;
    private string ddTemp;
    private string Eye;
    private string Verbal;
    private string Motor;
    private string Total;
    private string OtherModeOfTransfer;
    private DateTime VitalsAtDate;
    private DateTime VitalsAtTime;
    private DateTime GCSAtDate;
    private DateTime GCSAtTime;
    private double pid;
    private string facilityname;
     
    private string ReferringFacilityIntervention;
    public Transfer()
    {
        //
        // TODO: Add constructor logic here
        //
    }

    public string TransferIn1 { get => TransferIn; set => TransferIn = value; }
    public string ReferringFacility1 { get => ReferringFacility; set => ReferringFacility = value; }
    public string ReasonReferral1 { get => ReasonReferral; set => ReasonReferral = value; }
    public string ModeOfTransferT1 { get => ModeOfTransferT; set => ModeOfTransferT = value; }
    public string SBP1 { get => SBP; set => SBP = value; }
    public string PulseRate1 { get => PulseRate; set => PulseRate = value; }
    public string RespiratoryRate1 { get => RespiratoryRate; set => RespiratoryRate = value; }
    public string Eye1 { get => Eye; set => Eye = value; }
    public string Verbal1 { get => Verbal; set => Verbal = value; }
    public string Motor1 { get => Motor; set => Motor = value; }
    public string ReferringFacilityIntervention1 { get => ReferringFacilityIntervention; set => ReferringFacilityIntervention = value; }
    public DateTime ArrivedDate1 { get => ArrivedDate; set => ArrivedDate = value; }
    public DateTime ArrivedTime1 { get => ArrivedTime; set => ArrivedTime = value; }
    public DateTime DepartDate1 { get => DepartDate; set => DepartDate = value; }
    public DateTime DepartTime1 { get => DepartTime; set => DepartTime = value; }
    public string Temperature1 { get => Temperature; set => Temperature = value; }
    public string DdTemp { get => ddTemp; set => ddTemp = value; }
    public string Total1 { get => Total; set => Total = value; }
    public string OtherModeOfTransfer1 { get => OtherModeOfTransfer; set => OtherModeOfTransfer = value; }
    public DateTime VitalsAtDate1 { get => VitalsAtDate; set => VitalsAtDate = value; }
    public DateTime VitalsAtTime1 { get => VitalsAtTime; set => VitalsAtTime = value; }
    public DateTime GCSAtDate1 { get => GCSAtDate; set => GCSAtDate = value; }
    public DateTime GCSAtTime1 { get => GCSAtTime; set => GCSAtTime = value; }
    public double Pid { get => pid; set => pid = value; }
    public string Facilityname { get => facilityname; set => facilityname = value; }

    public void InsertData()
    {
        String connection = ConfigurationManager.ConnectionStrings["conString"].ToString();
        conn = new SqlConnection(connection);
        conn.Open();
        cmd = new SqlCommand("InsertTransfer", conn);
        cmd.CommandType = System.Data.CommandType.StoredProcedure;
        cmd.Parameters.AddWithValue("@transferin", TransferIn1 );
        cmd.Parameters.AddWithValue("@hospitalname", ReferringFacility1 );
        cmd.Parameters.AddWithValue("@reasonforreferral",ReasonReferral1);
        cmd.Parameters.AddWithValue("@modeoftransfer", ModeOfTransferT1);
        cmd.Parameters.AddWithValue("@arrivedrefhospitaldate", ArrivedDate1);
        cmd.Parameters.AddWithValue("@arrivedrefhospitaltime", ArrivedTime1);
        cmd.Parameters.AddWithValue("@departrefhospitaldate", DepartDate1);
        cmd.Parameters.AddWithValue("@departrefhospitaltime", DepartTime1);
        cmd.Parameters.AddWithValue("@sbp", SBP1);
        cmd.Parameters.AddWithValue("@pulserate", PulseRate1);
        cmd.Parameters.AddWithValue("@respirationrate", RespiratoryRate1);
        cmd.Parameters.AddWithValue("@temperature", Temperature1);
        cmd.Parameters.AddWithValue("@ddtemperature", DdTemp);
        cmd.Parameters.AddWithValue("@eye", Eye1);
        cmd.Parameters.AddWithValue("@verbal", Verbal1);
        cmd.Parameters.AddWithValue("@motor", Motor1);
        cmd.Parameters.AddWithValue("@total", Total1);
        cmd.Parameters.AddWithValue("@referringfacilityinterventionid", ReferringFacilityIntervention1);
        cmd.Parameters.AddWithValue("@othermodeoftransfer", OtherModeOfTransfer1);
        cmd.Parameters.AddWithValue("@vitalsatdate", VitalsAtDate1);
        cmd.Parameters.AddWithValue("@vitalsattime", VitalsAtTime1);
        cmd.Parameters.AddWithValue("@gcsatdate", GCSAtDate1);
        cmd.Parameters.AddWithValue("@gcsattime", GCSAtTime1);
        cmd.Parameters.AddWithValue("@pid", Pid);
        cmd.Parameters.AddWithValue("@facilityname", Facilityname);
        cmd.ExecuteNonQuery();

    }
    public void InsertBlankTransfer()
    {
        String connection = ConfigurationManager.ConnectionStrings["conString"].ToString();
        conn = new SqlConnection(connection);
        conn.Open();
        cmd = new SqlCommand("BlankTransfer", conn);
        cmd.CommandType = System.Data.CommandType.StoredProcedure;
        cmd.Parameters.AddWithValue("@pid", HttpContext.Current.Session["newpatient"]);
        cmd.Parameters.AddWithValue("@facilityname", HttpContext.Current.Session["facility"]);
        cmd.ExecuteNonQuery();

    }

    public void Update(DataTable dataTable)
    {
        TransferIn1 = dataTable.Rows[0]["transferin"].ToString();
        ReferringFacility1 = dataTable.Rows[0]["hospitalname"].ToString();
        ReasonReferral1 = dataTable.Rows[0]["reasonforreferral"].ToString();
        ModeOfTransferT1 = dataTable.Rows[0]["modeoftransfer"].ToString();
        if(dataTable.Rows[0]["arrivedrefhospitaldate"]!=DBNull.Value)
        ArrivedDate1 = Convert.ToDateTime(dataTable.Rows[0]["arrivedrefhospitaldate"].ToString());
        if (dataTable.Rows[0]["arrivedrefhospitaltime"] != DBNull.Value)
            ArrivedTime1 = Convert.ToDateTime(dataTable.Rows[0]["arrivedrefhospitaltime"].ToString());
        if (dataTable.Rows[0]["departrefhospitaldate"] != DBNull.Value)
            DepartDate1 = Convert.ToDateTime(dataTable.Rows[0]["departrefhospitaldate"].ToString());
        if (dataTable.Rows[0]["departrefhospitaltime"] != DBNull.Value)
            DepartTime1 = Convert.ToDateTime(dataTable.Rows[0]["departrefhospitaltime"].ToString());
        SBP1 = dataTable.Rows[0]["sbp"].ToString();
        PulseRate1 = dataTable.Rows[0]["pulserate"].ToString();
        Temperature1 = dataTable.Rows[0]["temperature"].ToString();
        DdTemp = dataTable.Rows[0]["ddtemperature"].ToString();
        Eye1 = dataTable.Rows[0]["eye"].ToString();
        Verbal1 = dataTable.Rows[0]["verbal"].ToString();
        Motor1 = dataTable.Rows[0]["motor"].ToString();
        Total1 = dataTable.Rows[0]["total"].ToString();
        ReferringFacilityIntervention1 = dataTable.Rows[0]["referringfacilityinterventionid"].ToString();
        OtherModeOfTransfer1 = dataTable.Rows[0]["othermodeoftransfer"].ToString();
        if(dataTable.Rows[0]["vitalsatdate"]!=DBNull.Value)
        VitalsAtDate1= Convert.ToDateTime(dataTable.Rows[0]["vitalsatdate"].ToString());
        if(dataTable.Rows[0]["vitalsattime"]!=DBNull.Value)
        VitalsAtTime1 = Convert.ToDateTime(dataTable.Rows[0]["vitalsattime"].ToString());
        if(dataTable.Rows[0]["gcsatdate"]!=DBNull.Value)
        GCSAtDate1 = Convert.ToDateTime(dataTable.Rows[0]["gcsatdate"].ToString());
        if(dataTable.Rows[0]["gcsattime"] != DBNull.Value)
        GCSAtTime1 = Convert.ToDateTime(dataTable.Rows[0]["gcsattime"].ToString());
        

    }

    public void UpdateDb()
    {
        String connection = ConfigurationManager.ConnectionStrings["conString"].ToString();
        conn = new SqlConnection(connection);
        cmd = new SqlCommand("UpdateTransfer", conn);
        cmd.CommandType = System.Data.CommandType.StoredProcedure;
        cmd.Parameters.AddWithValue("@transferin", TransferIn1);
        cmd.Parameters.AddWithValue("@hospitalname", ReferringFacility1);
        cmd.Parameters.AddWithValue("@reasonforreferral", ReasonReferral1);
        cmd.Parameters.AddWithValue("@modeoftransfer", ModeOfTransferT1);
        cmd.Parameters.AddWithValue("@arrivedrefhospitaldate", ArrivedDate1);
        cmd.Parameters.AddWithValue("@arrivedrefhospitaltime", ArrivedTime1);
        cmd.Parameters.AddWithValue("@departrefhospitaldate", DepartDate1);
        cmd.Parameters.AddWithValue("@departrefhospitaltime", DepartTime1);
        cmd.Parameters.AddWithValue("@sbp", SBP1);
        cmd.Parameters.AddWithValue("@pulserate", PulseRate1);
        cmd.Parameters.AddWithValue("@respirationrate", RespiratoryRate1);
        cmd.Parameters.AddWithValue("@temperature", Temperature1);
        cmd.Parameters.AddWithValue("@ddtemperature", DdTemp);
        cmd.Parameters.AddWithValue("@eye", Eye1);
        cmd.Parameters.AddWithValue("@verbal", Verbal1);
        cmd.Parameters.AddWithValue("@motor", Motor1);
        cmd.Parameters.AddWithValue("@total", Total1);
        cmd.Parameters.AddWithValue("@referringfacilityinterventionid", ReferringFacilityIntervention1);
        cmd.Parameters.AddWithValue("@othermodeoftransfer", OtherModeOfTransfer1);
        cmd.Parameters.AddWithValue("@vitalsatdate", VitalsAtDate1);
        cmd.Parameters.AddWithValue("@vitalsattime", VitalsAtTime1);
        cmd.Parameters.AddWithValue("@gcsatdate", GCSAtDate1);
        cmd.Parameters.AddWithValue("@gcsattime", GCSAtTime1);
        cmd.Parameters.AddWithValue("@pid", Pid);
        cmd.Parameters.AddWithValue("@facilityname", Facilityname);
        cmd.ExecuteNonQuery();


    }

 }