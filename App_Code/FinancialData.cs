using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Data.SqlClient;
using System.Configuration;
using System.Data;

/// <summary>
/// Summary description for FinancialData
/// </summary>
public class FinancialData
{
    SqlConnection conn;
    SqlCommand cmd;
    private double pid;
    private string FinancialInfo;
    private string PPaymentMethod;
    private string SecondaryPaymentM;
    private string TotalHospitalCharges;
    private string TotalReinbursement;
    private string facilityname;
    public FinancialData()
    {
        //
        // TODO: Add constructor logic here
        //
    }

    public string TotalReinbursement1 { get => TotalReinbursement; set => TotalReinbursement = value; }
    public string SecondaryPaymentM1 { get => SecondaryPaymentM; set => SecondaryPaymentM = value; }
    public string PPaymentMethod1 { get => PPaymentMethod; set => PPaymentMethod = value; }
    public string FinancialInfo1 { get => FinancialInfo; set => FinancialInfo = value; }
    public string TotalHospitalCharges1 { get => TotalHospitalCharges; set => TotalHospitalCharges = value; }
    public string Facilityname { get => facilityname; set => facilityname = value; }
    public double Pid { get => pid; set => pid = value; }

    // public string Pid { get => pid; set => pid = value; }

    public void FInsertData()
    {

        String connection = ConfigurationManager.ConnectionStrings["conString"].ToString();
        conn = new SqlConnection(connection);
        conn.Open();
        cmd = new SqlCommand("InsertFinance", conn);
        cmd.CommandType = System.Data.CommandType.StoredProcedure;
        //@financialinformationavail
        cmd.Parameters.AddWithValue("@pid", Pid);
        cmd.Parameters.AddWithValue("@facilityname", Facilityname);
        cmd.Parameters.AddWithValue("@financialinformationavail", FinancialInfo);
        cmd.Parameters.AddWithValue("@paymentmethodid", PPaymentMethod);
        cmd.Parameters.AddWithValue("@hospitalcharge", TotalHospitalCharges);
        cmd.Parameters.AddWithValue("@totalreinbursement", TotalReinbursement);
        cmd.Parameters.AddWithValue("@otherpaymentmenthod", SecondaryPaymentM);
        cmd.ExecuteNonQuery();

    }
  
    public void Update(DataTable dataTable)
    {
        FinancialInfo = dataTable.Rows[0]["financialinformationavail"].ToString();
        PPaymentMethod = dataTable.Rows[0]["paymentmethodid"].ToString();
        TotalHospitalCharges = dataTable.Rows[0]["hospitalcharge"].ToString();
        TotalReinbursement = dataTable.Rows[0]["totalreimbursement"].ToString();
        SecondaryPaymentM = dataTable.Rows[0]["otherpaymentmethod"].ToString();
    }
    public void UpdateDb()
    {
        String connection = ConfigurationManager.ConnectionStrings["conString"].ToString();
        conn = new SqlConnection(connection);
        cmd = new SqlCommand("updateFinancial", conn);
        cmd.CommandType = System.Data.CommandType.StoredProcedure;
        
        cmd.Parameters.AddWithValue("@financialinformationavail", FinancialInfo);
        cmd.Parameters.AddWithValue("@paymentmethodid", PPaymentMethod);
        cmd.Parameters.AddWithValue("@hospitalcharge", TotalHospitalCharges);
        cmd.Parameters.AddWithValue("@totalreinbursement", TotalReinbursement);
        cmd.Parameters.AddWithValue("@otherpaymentmenthod", SecondaryPaymentM);


    }

}