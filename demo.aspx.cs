using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using System.Data.SqlClient;
using System.Configuration;

using System.Globalization;

public partial class demo : System.Web.UI.Page
{
    SqlConnection conn;
    SqlCommand cmd;
    string today, s, estimated;
    DateTime dt;
    public double tid;
    int i,total;
    string myStringVariable;
    SqlDataAdapter adptr1, adptr2, adptr3, adptr4, adptr5, adptr6, adptr7, adptr8,
                    adptr9, adptr10, adptr11, adptr12, adptr13, adptr14, adptr15, adptr16, adptr17, adptr18,adptr19,adptr20,adptr22;
    DataSet ds = new DataSet();
    DataSet ds1 = new DataSet();
    DataSet ds2 = new DataSet();
    DataSet ds3 = new DataSet();
    DataSet ds4 = new DataSet();
    DataSet ds5 = new DataSet();
    DataSet ds6 = new DataSet();
    DataSet ds7 = new DataSet();
    DataSet ds8 = new DataSet();
    DataSet ds9 = new DataSet();
    DataSet ds10 = new DataSet();
    DataSet ds11 = new DataSet();
    DataSet ds12 = new DataSet();
    DataSet ds13 = new DataSet();
    DataSet ds14 = new DataSet();
    DataSet ds15 = new DataSet();
    DataSet ds16 = new DataSet();
    DataSet ds17 = new DataSet();
    DataSet ds18 = new DataSet();
    DataSet ds19 = new DataSet();
    DataSet ds20 = new DataSet();
    DataSet ds22 = new DataSet();
    Demographic1 demographic;
    protected void Page_Load(object sender, EventArgs e)
    {
        myStringVariable = "alert('To save permanently go to Finance and Save')";
        if (Session["empid"] != null)
        {

            String connection = ConfigurationManager.ConnectionStrings["conString"].ToString();
            conn = new SqlConnection(connection);
            generateDetails();
            txtdate.Text = DateTime.Now.ToString("yyyy-MM-dd");
            conn.Open();
           

            if (!IsPostBack)
            {
                estimated = "0";

                LoadAddressUnit();
                LoadEducation();
                LoadOccupation();
                LoadCareRecieved();
                LoadFirstResponder();
                LoadPlaceofOccurrence();
                LoadSafetyEquipment();
                LoadInjuryMechanism();
                LoadPatientModeofTransport();
                LoadCareIssuesFaced();
                LoadEDDischargeDisposition();
                LoadDischargeDisposition();
                LoadPreExistingCondition();
                LoadComplication();
                LoadFinance();
                LoadBodyRegion();
                LoadTypeOfInjury();
                LoadContext();
                LoadFinance();
                DisableView();
                

            }






        }
        else
        {
            Response.Redirect("Login.aspx");
        }

    }
    protected void DisableView()
    {
        transport1.Visible = false;
        transport2.Visible = false;
        transport3.Visible = false;
        transport4.Visible = false;
        transport5.Visible = false;
        interpersonal1.Visible = false;
        interpersonal2.Visible = false;
        interpersonal3.Visible = false;
        interpersonal4.Visible = false;
        selfdirected1.Visible = false;
        selfdirected12.Visible = false;
        selfdirected3.Visible = false;
        selfdirected4.Visible = false;
        transferdata.Visible = false;
        transferdata2.Visible = false;
        ttactivation0.Visible = false;
        ttactivation1.Visible = false;
        ttactivation2.Visible = false;
        ttactivation3.Visible = false;
        operationtable.Visible = false;
        diagnosis1.Visible = false;
        diagnosis2.Visible = false;
        diagnosis3.Visible = false;
        organs1.Visible = false;
        organs2.Visible = false;
        finance1.Visible = false;
        finance2.Visible = false;
        finance3.Visible = false;
        finance4.Visible = false;

    }

    //Load Dropdowns from Database

    protected void LoadOccupation()
    {
        string query1 = "select * from occupation";
        cmd = new SqlCommand(query1, conn);
        adptr3 = new SqlDataAdapter(cmd);
        adptr3.Fill(ds3);
        ddOccupationId.DataSource = ds3.Tables[0];
        ddOccupationId.DataTextField = ds3.Tables[0].Columns[1].ColumnName;
        ddOccupationId.DataValueField = ds3.Tables[0].Columns[0].ColumnName;
        ddOccupationId.DataBind();
    }
    protected void LoadEducation()
    {
        string query1 = "select * from education";
        cmd = new SqlCommand(query1, conn);
        adptr1 = new SqlDataAdapter(cmd);
        adptr1.Fill(ds1);
        ddEducation.DataSource = ds1.Tables[0];
        ddEducation.DataTextField = ds1.Tables[0].Columns[1].ColumnName;
        ddEducation.DataValueField = ds1.Tables[0].Columns[0].ColumnName;
        ddEducation.DataBind();
    }
    protected void LoadFinance()
    {
        string query1 = "select * from paymentmethod";
        cmd = new SqlCommand(query1, conn);
        adptr20 = new SqlDataAdapter(cmd);
        adptr20.Fill(ds20);
        ddPrimaryPayment.DataSource = ds20.Tables[0];
        ddPrimaryPayment.DataTextField = ds20.Tables[0].Columns[1].ColumnName;
        ddPrimaryPayment.DataValueField = ds20.Tables[0].Columns[0].ColumnName;
        ddPrimaryPayment.DataBind();
        ddSecondaryPayment.DataSource = ds20.Tables[0];
        ddSecondaryPayment.DataTextField = ds20.Tables[0].Columns[1].ColumnName;
        ddSecondaryPayment.DataValueField = ds20.Tables[0].Columns[0].ColumnName;
        ddSecondaryPayment.DataBind();

    }
    protected void LoadAddressUnit()
    {
        string query2 = "select *from addressunit";
        cmd = new SqlCommand(query2, conn);
        adptr2 = new SqlDataAdapter(cmd);
        adptr2.Fill(ds2);
        ddAddressUnit.DataSource = ds2.Tables[0];
        ddAddressUnit.DataTextField = ds2.Tables[0].Columns[1].ColumnName;
        ddAddressUnit.DataValueField = ds2.Tables[0].Columns[1].ColumnName;
        ddAddressUnit.DataBind();

    }
    protected void LoadCareRecieved()
    {
        string query2 = "select * from carereceived";
        cmd = new SqlCommand(query2, conn);
        adptr4 = new SqlDataAdapter(cmd);
        adptr4.Fill(ds4);
        ddCareRecieved.DataSource = ds4.Tables[0];
        ddCareRecieved.DataTextField = ds4.Tables[0].Columns[1].ColumnName;
        ddCareRecieved.DataValueField = ds4.Tables[0].Columns[1].ColumnName;
        ddCareRecieved.DataBind();

    }
    protected void LoadPlaceofOccurrence()
    {
        string query2 = "select * from placeofoccurrence";
        cmd = new SqlCommand(query2, conn);
        adptr6 = new SqlDataAdapter(cmd);
        adptr6.Fill(ds6);
        ddInjuryPlaceOfOccurrence.DataSource = ds6.Tables[0];
        ddInjuryPlaceOfOccurrence.DataTextField = ds6.Tables[0].Columns[1].ColumnName;
        ddInjuryPlaceOfOccurrence.DataValueField = ds6.Tables[0].Columns[1].ColumnName;
        ddInjuryPlaceOfOccurrence.DataBind();

    }
    protected void LoadSafetyEquipment()
    {
        string query2 = "select * from safetyequipment";
        cmd = new SqlCommand(query2, conn);
        adptr7 = new SqlDataAdapter(cmd);
        adptr7.Fill(ds7);
        ddInjurySafetyEquip.DataSource = ds7.Tables[0];
        ddInjurySafetyEquip.DataTextField = ds7.Tables[0].Columns[1].ColumnName;
        ddInjurySafetyEquip.DataValueField = ds7.Tables[0].Columns[1].ColumnName;
        ddInjurySafetyEquip.DataBind();

    }
    protected void LoadFirstResponder()
    {
        string query2 = "select * from firstresponder";
        cmd = new SqlCommand(query2, conn);
        adptr5 = new SqlDataAdapter(cmd);
        adptr5.Fill(ds5);
        ddFirstResponder.DataSource = ds5.Tables[0];
        ddFirstResponder.DataTextField = ds5.Tables[0].Columns[1].ColumnName;
        ddFirstResponder.DataValueField = ds5.Tables[0].Columns[1].ColumnName;
        ddFirstResponder.DataBind();

    }
    protected void LoadModeofTransport()
    {
        string query2 = "select * from modeoftransport";
        cmd = new SqlCommand(query2, conn);
        adptr8 = new SqlDataAdapter(cmd);
        adptr8.Fill(ds8);
        ddInjuryModeOfTransport.DataSource = ds8.Tables[0];
        ddInjuryModeOfTransport.DataTextField = ds8.Tables[0].Columns[1].ColumnName;
        ddInjuryModeOfTransport.DataValueField = ds8.Tables[0].Columns[1].ColumnName;
        ddInjuryModeOfTransport.DataBind();

    }
    protected void LoadRoleOfPerson()
    {
        string query2 = "select * from roleofpersoninjured";
        cmd = new SqlCommand(query2, conn);
        adptr9 = new SqlDataAdapter(cmd);
        adptr9.Fill(ds9);
        ddInjuryRoleOfInjured.DataSource = ds9.Tables[0];
        ddInjuryRoleOfInjured.DataTextField = ds9.Tables[0].Columns[1].ColumnName;
        ddInjuryRoleOfInjured.DataValueField = ds9.Tables[0].Columns[1].ColumnName;
        ddInjuryRoleOfInjured.DataBind();
    }
    protected void LoadCounterpart()
    {
        string query2 = "select * from counterpart";
        cmd = new SqlCommand(query2, conn);
        adptr10 = new SqlDataAdapter(cmd);
        adptr10.Fill(ds10);
        ddInjuryCounterpart.DataSource = ds10.Tables[0];
        ddInjuryCounterpart.DataTextField = ds10.Tables[0].Columns[1].ColumnName;
        ddInjuryCounterpart.DataValueField = ds10.Tables[0].Columns[1].ColumnName;
        ddInjuryCounterpart.DataBind();
    }
    protected void LoadInjuryMechanism()
    {
        string query2 = "select * from mechanismofinjury";
        cmd = new SqlCommand(query2, conn);
        adptr11 = new SqlDataAdapter(cmd);
        adptr11.Fill(ds11);
        ddInjuryMechanism.DataSource = ds11.Tables[0];
        ddInjuryMechanism.DataTextField = ds11.Tables[0].Columns[1].ColumnName;
        ddInjuryMechanism.DataValueField = ds11.Tables[0].Columns[1].ColumnName;
        ddInjuryMechanism.DataBind();
    }
    protected void LoadPatientModeofTransport()
    {
        string query2 = "select * from patientmodeoftransport";
        cmd = new SqlCommand(query2, conn);
        adptr12 = new SqlDataAdapter(cmd);
        adptr12.Fill(ds12);
        ddPreModeOfTransport.DataSource = ds12.Tables[0];
        ddPreModeOfTransport.DataTextField = ds12.Tables[0].Columns[1].ColumnName;
        ddPreModeOfTransport.DataValueField = ds12.Tables[0].Columns[1].ColumnName;
        ddPreModeOfTransport.DataBind();
        ddTransferModeOfTransport.DataSource = ds12.Tables[0];
        ddTransferModeOfTransport.DataTextField = ds12.Tables[0].Columns[1].ColumnName;
        ddTransferModeOfTransport.DataValueField = ds12.Tables[0].Columns[1].ColumnName;
        ddTransferModeOfTransport.DataBind();
    }
    protected void LoadCareIssuesFaced()
    {
        string query2 = "select * from careissuesfaced";
        cmd = new SqlCommand(query2, conn);
        adptr13 = new SqlDataAdapter(cmd);
        adptr13.Fill(ds13);
        ddEmergencyCareIssueFaced.DataSource = ds13.Tables[0];
        ddEmergencyCareIssueFaced.DataTextField = ds13.Tables[0].Columns[1].ColumnName;
        ddEmergencyCareIssueFaced.DataValueField = ds13.Tables[0].Columns[1].ColumnName;
        ddEmergencyCareIssueFaced.DataBind();
        ddEmergencyCareIssueFaced1.DataSource = ds13.Tables[0];
        ddEmergencyCareIssueFaced1.DataTextField = ds13.Tables[0].Columns[1].ColumnName;
        ddEmergencyCareIssueFaced1.DataValueField = ds13.Tables[0].Columns[1].ColumnName;
        ddEmergencyCareIssueFaced1.DataBind();
        ddEmergencyCareIssueFaced2.DataSource = ds13.Tables[0];
        ddEmergencyCareIssueFaced2.DataTextField = ds13.Tables[0].Columns[1].ColumnName;
        ddEmergencyCareIssueFaced2.DataValueField = ds13.Tables[0].Columns[1].ColumnName;
        ddEmergencyCareIssueFaced2.DataBind();
    }
    protected void LoadEDDischargeDisposition()
    {
        string query2 = "select * from eddischargedisposition";
        cmd = new SqlCommand(query2, conn);
        adptr14 = new SqlDataAdapter(cmd);
        adptr14.Fill(ds14);
        ddEmergencyDischargeDisposition.DataSource = ds14.Tables[0];
        ddEmergencyDischargeDisposition.DataTextField = ds14.Tables[0].Columns[1].ColumnName;
        ddEmergencyDischargeDisposition.DataValueField = ds14.Tables[0].Columns[1].ColumnName;
        ddEmergencyDischargeDisposition.DataBind();
        ddOperationDisposition1.DataSource = ds14.Tables[0];
        ddOperationDisposition1.DataTextField = ds14.Tables[0].Columns[1].ColumnName;
        ddOperationDisposition1.DataValueField = ds14.Tables[0].Columns[1].ColumnName;
        ddOperationDisposition1.DataBind();
        ddOperationDisposition2.DataSource = ds14.Tables[0];
        ddOperationDisposition2.DataTextField = ds14.Tables[0].Columns[1].ColumnName;
        ddOperationDisposition2.DataValueField = ds14.Tables[0].Columns[1].ColumnName;
        ddOperationDisposition2.DataBind();
        ddOperationDisposition3.DataSource = ds14.Tables[0];
        ddOperationDisposition3.DataTextField = ds14.Tables[0].Columns[1].ColumnName;
        ddOperationDisposition3.DataValueField = ds14.Tables[0].Columns[1].ColumnName;
        ddOperationDisposition3.DataBind();

    }
    protected void LoadPreExistingCondition()
    {
        string query2 = "select * from preexistingcondition";
        cmd = new SqlCommand(query2, conn);
        adptr15 = new SqlDataAdapter(cmd);
        adptr15.Fill(ds15);
        ddEmergencyPreExistingCondition.DataSource = ds15.Tables[0];
        ddEmergencyPreExistingCondition.DataTextField = ds15.Tables[0].Columns[1].ColumnName;
        ddEmergencyPreExistingCondition.DataValueField = ds15.Tables[0].Columns[1].ColumnName;
        ddEmergencyPreExistingCondition.DataBind();
    }
    protected void LoadBodyRegion()
    {
        string query2 = "select * from bodyregion";
        cmd = new SqlCommand(query2, conn);
        adptr16 = new SqlDataAdapter(cmd);
        adptr16.Fill(ds16);
        ddDiagnosisBodyRegion1.DataSource = ds16.Tables[0];
        ddDiagnosisBodyRegion1.DataTextField = ds16.Tables[0].Columns[1].ColumnName;
        ddDiagnosisBodyRegion1.DataValueField = ds16.Tables[0].Columns[1].ColumnName;
        ddDiagnosisBodyRegion1.DataBind();
        ddDiagnosisBodyRegion2.DataSource = ds16.Tables[0];
        ddDiagnosisBodyRegion2.DataTextField = ds16.Tables[0].Columns[1].ColumnName;
        ddDiagnosisBodyRegion2.DataValueField = ds16.Tables[0].Columns[1].ColumnName;
        ddDiagnosisBodyRegion2.DataBind();
        ddDiagnosisBodyRegion3.DataSource = ds16.Tables[0];
        ddDiagnosisBodyRegion3.DataTextField = ds16.Tables[0].Columns[1].ColumnName;
        ddDiagnosisBodyRegion3.DataValueField = ds16.Tables[0].Columns[1].ColumnName;
        ddDiagnosisBodyRegion3.DataBind();
        ddDiagnosisBodyRegion4.DataSource = ds16.Tables[0];
        ddDiagnosisBodyRegion4.DataTextField = ds16.Tables[0].Columns[1].ColumnName;
        ddDiagnosisBodyRegion4.DataValueField = ds16.Tables[0].Columns[1].ColumnName;
        ddDiagnosisBodyRegion4.DataBind();
    }
    protected void LoadTypeOfInjury()
    {
        string query2 = "select * from typeofinjury";
        cmd = new SqlCommand(query2, conn);
        adptr17 = new SqlDataAdapter(cmd);
        adptr17.Fill(ds17);
        ddDiagnosisTypeOfInjury1.DataSource = ds17.Tables[0];
        ddDiagnosisTypeOfInjury1.DataTextField = ds17.Tables[0].Columns[1].ColumnName;
        ddDiagnosisTypeOfInjury1.DataValueField = ds17.Tables[0].Columns[1].ColumnName;
        ddDiagnosisTypeOfInjury1.DataBind();
        ddDiagnosisTypeOfInjury2.DataSource = ds17.Tables[0];
        ddDiagnosisTypeOfInjury2.DataTextField = ds17.Tables[0].Columns[1].ColumnName;
        ddDiagnosisTypeOfInjury2.DataValueField = ds17.Tables[0].Columns[1].ColumnName;
        ddDiagnosisTypeOfInjury2.DataBind();
        ddDiagnosisTypeOfInjury3.DataSource = ds17.Tables[0];
        ddDiagnosisTypeOfInjury3.DataTextField = ds17.Tables[0].Columns[1].ColumnName;
        ddDiagnosisTypeOfInjury3.DataValueField = ds17.Tables[0].Columns[1].ColumnName;
        ddDiagnosisTypeOfInjury3.DataBind();
        ddDiagnosisTypeOfInjury4.DataSource = ds17.Tables[0];
        ddDiagnosisTypeOfInjury4.DataTextField = ds17.Tables[0].Columns[1].ColumnName;
        ddDiagnosisTypeOfInjury4.DataValueField = ds17.Tables[0].Columns[1].ColumnName;
        ddDiagnosisTypeOfInjury4.DataBind();
    }
    protected void LoadContext()
    {
        string query2 = "select * from context";
        cmd = new SqlCommand(query2, conn);
        adptr18 = new SqlDataAdapter(cmd);
        adptr18.Fill(ds18);
        ddInjuryContext2.DataSource = ds18.Tables[0];
        ddInjuryContext2.DataTextField = ds18.Tables[0].Columns[1].ColumnName;
        ddInjuryContext2.DataValueField = ds18.Tables[0].Columns[1].ColumnName;
        ddInjuryContext2.DataBind();
    }
    protected void LoadDischargeDisposition()
    {
        string query2 = "select * from dischargedisposition";
        cmd = new SqlCommand(query2, conn);
        adptr19 = new SqlDataAdapter(cmd);
        adptr19.Fill(ds19);
        ddOutcomeDischargeDisposition.DataSource = ds19.Tables[0];
        ddOutcomeDischargeDisposition.DataTextField = ds19.Tables[0].Columns[1].ColumnName;
        ddOutcomeDischargeDisposition.DataValueField = ds19.Tables[0].Columns[1].ColumnName;
        ddOutcomeDischargeDisposition.DataBind();
    }
    protected void LoadComplication()
    {
        string query2 = "select * from complication";
        cmd = new SqlCommand(query2, conn);
        adptr22 = new SqlDataAdapter(cmd);
        adptr22.Fill(ds22);
        ddOutcomeComplication.DataSource = ds22.Tables[0];
        ddOutcomeComplication.DataTextField = ds22.Tables[0].Columns[1].ColumnName;
        ddOutcomeComplication.DataValueField = ds22.Tables[0].Columns[1].ColumnName;
        ddOutcomeComplication.DataBind();
    }
    protected void generateDetails()
    {

        facilityName.Text = "Central Referral Hospital Manipal";
        tid = Convert.ToDouble(Convert.ToString(DateTime.Today.ToString("yyyyMMdd")) + "00" + getserialNo().ToString());
        tidheader.InnerHtml = "Trauma ID:" + tid.ToString();

    }

    protected void CheckBox1_CheckedChanged(object sender, EventArgs e)
    {
        if (CheckBox1.Checked)
        {
            permanentPhone.Text = currentPhone.Text;
            permanentResidence.Text = currentPlaceOfResidence.Text;
            permanentPin.Text = currentPin.Text;
            permanentPoliceStation.Text = currentPoliceStation.Text;
        }
        else
        {
            permanentPhone.Text = "";
            permanentResidence.Text = "";
            permanentPin.Text = "";
            permanentPoliceStation.Text = "";
        }


    }

    protected void Prehospital_Click(object sender, EventArgs e)
    {

        //demographic = (Demographic1)Session["demographic"];
        //demographic.InsertData();

    }



   

    protected void ddRelation1_SelectedIndexChanged(object sender, EventArgs e)
    {
        if (ddRelation1.SelectedIndex == 8)
        {
            otherRelation1.Visible = true;
        }
        else
        {
            otherRelation1.Visible = false;
        }


    }

    //Demographic Save and Continue
    protected void SaveDemo(object sender, EventArgs e)
    {

        estimated="0";
        demographic = new Demographic1();
        demographic.FacilityName = facilityName.Text;
        demographic.DateOfRegistration = Convert.ToDateTime(txtdate.Text);
        demographic.TimeOfRegistration = Convert.ToDateTime(time1.Text);
        demographic.PatientId = tid;
        demographic.Hospitalno = Convert.ToDouble(patientId.Text);
        demographic.PatientFName = patientFName.Text;
        demographic.PatientMName = patientMName.Text;
        demographic.PatientLName = patientLName.Text;
        demographic.AadharNo = Convert.ToDouble(aadharNo.Text);

        demographic.Dob = DateTime.Parse(patientDob.Text, new CultureInfo("hi-IN", true));
        demographic.Age = Convert.ToInt32(patientAge.Text);
        demographic.AgeUnit = Convert.ToString(ddAgeUnit.SelectedValue);
        demographic.Sex = Convert.ToString(ddSex.SelectedValue);

        demographic.CurrentPlaceOfResidence = currentPlaceOfResidence.Text;
        demographic.CurrentPoliceStation = currentPoliceStation.Text;
        if(currentPin.Text != "")
        demographic.CurrentPin = Convert.ToInt64(currentPin.Text);
        if(currentPhone.Text!="")
        demographic.CurrentPhone = Convert.ToDouble(currentPhone.Text);
        demographic.PermanentPlaceOfResidence = permanentResidence.Text;
        if(permanentPin.Text != "")
        demographic.PermanentPin = Convert.ToInt64(permanentPin.Text);
        if(permanentPhone.Text != "")
        demographic.PermanentPhone = Convert.ToDouble(permanentPhone.Text);
        demographic.PermanentPoliceStation = permanentPoliceStation.Text;
        demographic.AddressUnit = Convert.ToString(ddAddressUnit.SelectedIndex);
        demographic.Occupation = Convert.ToString(ddOccupationId.SelectedIndex);
        demographic.Education = Convert.ToString(ddEducation.SelectedIndex);
        demographic.Estimated = estimated;
        //Relative
        demographic.RelativeName1 = relativeName1.Text;
        demographic.Relative1Relation = ddRelation1.SelectedValue.ToString();
        demographic.RelativePhone1 = relativePhone1.Text;
        demographic.Relative2name = relativeName2.Text;
        demographic.Mobilenorelative2 = relativePhone2.Text;
        demographic.Relationshiprelative2 = ddRelation2.SelectedValue.ToString();
        demographic.Otherrelation = otherRelation1.Text;
        demographic.Otherrelation2 = otherRelation2.Text;
        Session["newpatient"] = tid;
        Session["facility"] = facilityName.Text;
        Session["demographic"] = demographic;

        
        ScriptManager.RegisterClientScriptBlock((sender as Control), this.GetType(), "alert", myStringVariable, true);
        //Change Tabs
        hfTab.Value = "injury";


    }

    protected void ddInjuryIntent_SelectedIndexChanged(object sender, EventArgs e)
    {
        if (ddInjuryIntent.SelectedIndex == 1)
        {
            LoadModeofTransport();
            LoadRoleOfPerson();
            LoadCounterpart();
            DisableView();
            transport1.Visible = true;
            transport2.Visible = true;
            transport3.Visible = true;
            transport4.Visible = true;
            transport5.Visible = true;
        }
        else if (ddInjuryIntent.SelectedIndex == 2)
        {
            DisableView();
            interpersonal1.Visible = true;
            interpersonal2.Visible = true;
            interpersonal3.Visible = true;
            interpersonal4.Visible = true;
        }
        else if (ddInjuryIntent.SelectedIndex == 3)
        {
            DisableView();
            selfdirected1.Visible = true;
            selfdirected12.Visible = true;
            selfdirected3.Visible = true;
            selfdirected4.Visible = true;
        }
        else
        {
            DisableView();
        }
    }

    protected void addRelativeBtn_Click(object sender, EventArgs e)
    {
        addRelative1.Visible = true;
        addRelative2.Visible = true;
        addRelative3.Visible = true;
        addRelative4.Visible = true;
    }



    protected void ddInjuryWorkRelated_SelectedIndexChanged(object sender, EventArgs e)
    {
        if (ddInjuryWorkRelated.SelectedIndex == 1)
        {
            injuryTypeOfIndustry.Visible = true;
        }
        else
        {
            injuryTypeOfIndustry.Visible = false;
        }
    }

    protected void ddCrewMemberLevel_SelectedIndexChanged(object sender, EventArgs e)
    {
        if (ddCrewMemberLevel.SelectedIndex == 2)
        {
            crewMemberTrained.Visible = true;
        }
        else
        {
            crewMemberTrained.Visible = false;
        }
    }

    protected void ddFirstResponder_SelectedIndexChanged(object sender, EventArgs e)
    {
        if (ddFirstResponder.SelectedIndex == 8)
        {
            firstResponder.Visible = true;
        }
        else
        {
            firstResponder.Visible = false;
        }
    }

    protected void ddInjurySafetyEquip_SelectedIndexChanged(object sender, EventArgs e)
    {
        if (ddInjurySafetyEquip.SelectedIndex == 9)
        {
            otherSafetyEquip.Visible = true;
        }
        else
        {
            otherSafetyEquip.Visible = false;
        }
    }

    protected void ddInjuryActivity_SelectedIndexChanged(object sender, EventArgs e)
    {
        if (ddInjuryActivity.SelectedIndex == 6)
        {
            injuryTypeOtherActivity.Visible = true;
        }
        else
        {
            injuryTypeOtherActivity.Visible = false;
        }
    }

    protected void ddInjuryModeOfTransport_SelectedIndexChanged(object sender, EventArgs e)
    {
        if (ddInjuryModeOfTransport.SelectedIndex == 11)
        {
            OtherInjuryTransport.Visible = true;
        }
        else
        {
            OtherInjuryTransport.Visible = false;
        }
    }

    protected void ddInjuryCounterpart_SelectedIndexChanged(object sender, EventArgs e)
    {
        if (ddInjuryCounterpart.SelectedIndex == 9)
        {
            OtherInjuryCounterpart.Visible = true;
        }
        else
        {
            OtherInjuryCounterpart.Visible = false;
        }
    }

    protected void ddInjuryMechanism_SelectedIndexChanged(object sender, EventArgs e)
    {
        if (ddInjuryMechanism.SelectedIndex == 17)
        {
            otherInjuryMechanism.Visible = true;
        }
        else
        {
            otherInjuryMechanism.Visible = false;
        }
    }

    protected void ddInjuryPlaceOfOccurrence_SelectedIndexChanged(object sender, EventArgs e)
    {
        if (ddInjuryPlaceOfOccurrence.SelectedIndex == 8)
        {
            InjuryPlaceOfOccurrence.Visible = true;
        }
        else
        {
            InjuryPlaceOfOccurrence.Visible = false;
        }
    }

    protected void ddInjuryRoleOfInjured_SelectedIndexChanged(object sender, EventArgs e)
    {
        if (ddInjuryRoleOfInjured.SelectedIndex == 5)
        {
            InjuryRoleOfPerson.Visible = true;
        }
        else
        {
            InjuryRoleOfPerson.Visible = false;
        }
    }

    protected void ddInjuryIncidentType_SelectedIndexChanged(object sender, EventArgs e)
    {
        if (ddInjuryIncidentType.SelectedIndex == 5)
        {
            InjuryOtherIncidentType.Visible = true;
        }
        else
        {
            InjuryOtherIncidentType.Visible = false;
        }
    }

    protected void ddPreModeOfTransport_SelectedIndexChanged(object sender, EventArgs e)
    {
        if (ddPreModeOfTransport.SelectedIndex == 8)
        {
            preOtherModeOfTransport.Visible = true;
        }
        else
        {
            preOtherModeOfTransport.Visible = false;
        }
    }

    protected void ddCareRecieved_SelectedIndexChanged(object sender, EventArgs e)
    {

        ViewState["precare"] = string.Empty;
        ViewState["preother"] = string.Empty;
        foreach (ListItem item in this.ddCareRecieved.Items)
            if (item.Selected)
                if (item.Value != "Other")
                {
                    ViewState["precare"] = ViewState["precare"].ToString() +item + ",";
                    otherCareRecieved.Visible = false;
                }

                else
                {
                    otherCareRecieved.Visible = true;
                    ViewState["preother"]= otherCareRecieved.Text;
                }
    }

    protected void addRelativeCloseBtn_Click(object sender, EventArgs e)
    {
        addRelative1.Visible = false;
        addRelative2.Visible = false;
        addRelative3.Visible = false;
        addRelative4.Visible = false;
    }


    protected void ddTransferIn_SelectedIndexChanged(object sender, EventArgs e)
    {
        if (ddTransferIn.SelectedIndex == 1)
        {
            transferdata.Visible = true;
            transferdata2.Visible = true;
        }
        else
        {
            transferdata.Visible = false;
            transferdata2.Visible = false;
        }
    }

    protected void ddTransferModeOfTransport_SelectedIndexChanged(object sender, EventArgs e)
    {
        if (ddTransferModeOfTransport.SelectedIndex == 8)
        {
            transferOtherModeOfTransport.Visible = true;
        }
        else
        {
            transferOtherModeOfTransport.Visible = false;
        }
    }


    protected void ddEmergencyTraumaTeam_SelectedIndexChanged(object sender, EventArgs e)
    {
        if (ddEmergencyTraumaTeam.SelectedIndex == 1)
        {
            ttactivation0.Visible = true;
            ttactivation1.Visible = true;
            ttactivation2.Visible = true;
            ttactivation3.Visible = true;
        }
        else
        {
            ttactivation0.Visible = false;
            ttactivation1.Visible = false;
            ttactivation2.Visible = false;
            ttactivation3.Visible = false;

        }
    }

    protected void ddOperationPerformed_SelectedIndexChanged(object sender, EventArgs e)
    {
        if (ddOperationPerformed.SelectedIndex == 1)
        {
            operationtable.Visible = true;
            operation5.Visible = false;
            operation6.Visible = false;
            operation7.Visible = false;
        }
        else
        {
            operationtable.Visible = false;
        }
    }

    protected void btnOperationAdd_Click(object sender, EventArgs e)
    {
        if (operation5.Visible == true)
        {
            operation6.Visible = true;
            operation7.Visible = true;

        }
        operation3.Visible = true;
        operation5.Visible = true;

    }

    protected void btnDiagnosisAdd_Click(object sender, EventArgs e)
    {
        if (diagnosis2.Visible == true)
        {
            diagnosis3.Visible = true;
        }

        if (diagnosis1.Visible == true)
        {
            diagnosis2.Visible = true;
        }
        diagnosis1.Visible = true;
    }


    protected void ddOutcomeOrgansDonated_SelectedIndexChanged(object sender, EventArgs e)
    {
        if (ddOutcomeOrgansDonated.SelectedIndex == 1)
        {
            organs1.Visible = true;
            organs2.Visible = true;
        }
        else
        {
            organs1.Visible = false;
            organs2.Visible = false;
        }
    }

    protected void ddFinance_SelectedIndexChanged(object sender, EventArgs e)
    {
        if (ddFinance.SelectedIndex == 1)
        {
            finance1.Visible = true;
            finance2.Visible = true;
            finance3.Visible = true;
            finance4.Visible = true;
        }
        else
        {
            finance1.Visible = false;
            finance2.Visible = false;
            finance3.Visible = false;
            finance4.Visible = false;
        }
    }

    protected void ageEstimated_CheckedChanged(object sender, EventArgs e)
    {
        if (ageEstimated.Checked == true)
        {
            estimated = "estimated";
        }
        else
        {
            estimated = "0";
        }
    }



    protected void SaveInjuryData(object sender, EventArgs e)
    {
        Injury injury = new Injury();
        injury.InjuryDate = Convert.ToDateTime(injurydate.Text);
        injury.InjuryTime = Convert.ToDateTime(injuryTime.Text);
        injury.AddressOfIncident = addressOfIncident.Text;
        injury.PoliceStation = injuryPoliceStation.Text;
        injury.Pin = Convert.ToInt64(injuryPin.Text);
        injury.IncidentType = ddInjuryIncidentType.SelectedValue.ToString();
        injury.OtherIncidentType = InjuryOtherIncidentType.Text;
        injury.Intent = ddInjuryIntent.SelectedValue.ToString();
        injury.PlaceOfOccurrence = ddInjuryPlaceOfOccurrence.SelectedIndex.ToString();
        injury.OtherPlaceOfOccurrence = InjuryPlaceOfOccurrence.Text;
        injury.Activity = ddInjuryActivity.SelectedValue.ToString();
        injury.OtherActivity = injuryTypeOtherActivity.Text;
        injury.MechanismOfInjuryID = ddInjuryMechanism.SelectedIndex.ToString();
        injury.OtherMechanismOfInjury = otherInjuryMechanism.Text;
        injury.WorkRelatedInjury = ddInjuryWorkRelated.SelectedValue.ToString();
        injury.TypeOfInsustry = injuryTypeOfIndustry.Text;
        injury.ModeOfTransportID = ddInjuryModeOfTransport.SelectedIndex.ToString();
        injury.OtherModeOfTransport = OtherInjuryTransport.Text;
        injury.CounterPartID = ddInjuryCounterpart.SelectedIndex.ToString();
        injury.OtherCounterPart = OtherInjuryCounterpart.Text;
        injury.RoleOfPersonInjuredID = ddInjuryRoleOfInjured.SelectedIndex.ToString();
        injury.OtherRoleOrPosition = InjuryRoleOfPerson.Text;
        injury.ContextInterPersonal = ddInjuryContext1.SelectedValue.ToString();
        injury.OtherContextInterPersonal = OtherInjuryContextInterPer.Text;
        injury.RelationshipInterPersonal = ddInjuryRelationship.SelectedValue.ToString();
        injury.OtherRelationshipInterPersonal = OtherInjuryRelationInterPer.Text;
        injury.PriorAttempt = ddInjuryPriorAttempt.SelectedValue.ToString();
        injury.ContextSelfDirectedID = ddInjuryContext2.SelectedIndex.ToString();
        injury.OtherContextSelf = OtherInjuryContextSelf.Text;
        injury.SafetyEquipmentID = ddInjurySafetyEquip.SelectedIndex.ToString();
        injury.OtherSafetyEquipment = otherSafetyEquip.Text;
        injury.InjuryMemo = injuryMemo.Text;
        injury.InjuryCauseCodeID = injuryICD.Text;
        injury.Pid = Convert.ToDouble(Session["newpatient"]);
        injury.Facilityname = facilityName.Text;
        Session["injury"] = injury;
        

        //Change Tabs
        hfTab.Value = "prehospital";


    }

    protected void ddOccupationId_SelectedIndexChanged(object sender, EventArgs e)
    {
        if (ddOccupationId.SelectedIndex == 9)
        {
            occupationOther.Visible = true;
        }
        else
        {
            occupationOther.Visible = false;
        }
    }
    int getserialNo()
    {
        // string val = DateTime.Now.Year.ToString() + DateTime.Now.Month.ToString() + DateTime.Now.Day.ToString();
        i = 0;
        SqlDataAdapter sdra;
        DataTable d = new DataTable();
        string query = "select count(*) from demographic where dateofregistration like CAST(GETDATE() AS DATE)";

        SqlCommand cmds = new SqlCommand(query, conn);

        sdra = new SqlDataAdapter(cmds);
        sdra.Fill(d);
        i = Convert.ToInt32(d.Rows[0][0].ToString());
        i = i + 1;
        return i;


    }

    protected void ddEmergencyMotor_SelectedIndexChanged(object sender, EventArgs e)
    {
        ScoreCalculation();
    }

    protected void ddTransferMotor_SelectedIndexChanged(object sender, EventArgs e)
    {
        int eye = Convert.ToInt32(ddTransferEye.SelectedValue);
        int verbal = Convert.ToInt32(ddTransferVerbal.SelectedValue);
        int motor = Convert.ToInt32(ddTransferMotor.SelectedValue);
        int total = eye + verbal + motor;
        transferGCSTotal.Text = "GCS " + total + "=" + "E" + eye + "V" + verbal + "M" + motor;
    }

    protected void ddOutcomeMotor_SelectedIndexChanged(object sender, EventArgs e)
    {
        int eye = Convert.ToInt32(ddOutcomeEye.SelectedValue);
        int verbal = Convert.ToInt32(ddOutcomeVerbal.SelectedValue);
        int motor = Convert.ToInt32(ddOutcomeMotor.SelectedValue);
        total = eye + verbal + motor;

        outcomeGCSTotal.Text = "GCS " + total + "=" + "E" + eye + "V" + verbal + "M" + motor;

    }
    
    void ScoreCalculation()
        {
            int eye = Convert.ToInt32(ddEmergencyEye.SelectedValue);
            int verbal = Convert.ToInt32(ddEmergencyVerbal.SelectedValue);
            int motor = Convert.ToInt32(ddEmergencyMotor.SelectedValue);
            int total = eye + verbal + motor;
            int rr=0, sbp=0;
            emergencyGCSTotal.Text = "GCS " + total + "=" + "E" + eye + "V" + verbal + "M" + motor;

            if (emergencyFirstSystolicBP.Text != "")
            {
                sbp = Convert.ToInt32(emergencyFirstSystolicBP.Text);
            }
            if (emergencySpontRespRate.Text != "")
            {
                rr = Convert.ToInt32(emergencySpontRespRate.Text);
            }
            int gcs = total;
            int sbpi = 0, rri = 0, gcsi = 0;
            if (gcs == 3) gcsi = 0;
            else if (gcs >= 4 && gcs <= 5) gcsi = 1;
            else if (gcs >= 6 && gcs <= 8) gcsi = 2;
            else if (gcs >= 9 && gcs <= 12) gcsi = 3;
            else if (gcs >= 13 && gcs <= 15) gcsi = 4;
            else Response.Write("alert('Glasgow Coma Score has values 3-15')");

            if (rr >= 10 && rr <= 29) rri = 4;
            else if (rr >= 30 && rr <= 80) rri = 3;
            else if (rr >= 6 && rr <= 9) rri = 2;
            else if (rr >= 1 && rr <= 5) rri = 1;
            else if (rr == 0) rri = 0;
            else Response.Write("alert('Respiratory rate invalid')");

            if (sbp >= 90 && sbp <= 300) sbpi = 4;
            else if (sbp >= 76 && sbp <= 89) sbpi = 3;
            else if (sbp >= 50 && sbp <= 75) sbpi = 2;
            else if (sbp >= 1 && sbp <= 49) sbpi = 1;
            else if (sbp == 0) sbpi = 0;
            else Response.Write(" alert('Systolic Blood Pressure Invalid')");
            // double rts = sbpi * 0.7326 + rri * 0.2908 + gcsi * 0.9368;
            double RTS = (0.9368 * gcsi) + (0.7326 * sbpi) + (0.2908 * rri);
            emergencyTraumaScore.Text = RTS.ToString();
        }



    protected void ddOutcomeDischargeDisposition_SelectedIndexChanged(object sender, EventArgs e)
    {
        if(ddOutcomeDischargeDisposition.SelectedIndex == 10)
        {
            outcomeOtherDisposition.Visible = true;

        }
        else
        {
            outcomeOtherDisposition.Visible = false;
        }
    }

    protected void SavePrehospital_Click(object sender, EventArgs e)
    {
        Prehospital1 prehospital = new Prehospital1();
        prehospital.CareReceived1 = ViewState["precare"].ToString();
        prehospital.OtherCareReceived = ViewState["preother"].ToString();
        prehospital.CrewMemberLevel1 = ddCrewMemberLevel.SelectedValue;
        prehospital.FirstResponsetime2 = preInjuryTime.Text;
        prehospital.DdInjuryTime = ddPreInjuryTime.SelectedValue;
        prehospital.Responders1 = ddFirstResponder.SelectedIndex.ToString();
        prehospital.OtherFirstResponder = firstResponder.Text;
        prehospital.ResponseArea1 = ddResponseArea.SelectedValue;
        prehospital.ModeOfTransportPrehospital1 = ddPreModeOfTransport.SelectedIndex.ToString();
        prehospital.OtherModeOfTransport = preOtherModeOfTransport.Text;
        prehospital.OtherCrewMember = crewMemberTrained.Text;
        prehospital.Pid = Convert.ToDouble(Session["newpatient"]);
        prehospital.FacilityName = facilityName.Text;
        Session["prehospital"] = prehospital;
       
        hfTab.Value = "transfer";

    }


    protected void SaveFinance_Click(object sender, EventArgs e)
    {
        FinancialData financialData1 = new FinancialData();
        financialData1.FinancialInfo1 = ddFinance.SelectedValue;
        financialData1.PPaymentMethod1 = ddPrimaryPayment.SelectedIndex.ToString();
        financialData1.SecondaryPaymentM1 = ddSecondaryPayment.SelectedIndex.ToString();
       
        financialData1.TotalHospitalCharges1 = totalHospitalCharges.Text;
        financialData1.TotalReinbursement1 = totalReinbursment.Text;
        financialData1.Pid = tid;
        financialData1.Facilityname = facilityName.Text;
        financialData1.FInsertData();
        if(Session["demographic"]!=null)
        {
            demographic = (Demographic1)Session["demographic"];
            demographic.InsertData();
        }
        if(Session["injury"]!=null)
        {
            Injury injury = (Injury)Session["injury"];
            injury.InsertInjury();
        }
        else
        {
            Injury injury = new Injury();
            injury.InsertBlankInjury();
        }
        if(Session["prehospital"]!=null)
        {
            Prehospital1 prehospital = (Prehospital1)Session["prehospital"];
            prehospital.InsertData();
        }
        else
        {
            Prehospital1 prehospital = new Prehospital1();
            prehospital.InsertBlankPrehospital();
        }
        if(Session["transfer"]!=null)
        {
            Transfer transfer = (Transfer)Session["transfer"];
            transfer.InsertData();
        }
        else
        {
            Transfer transfer = new Transfer();
            transfer.InsertBlankTransfer();
        }
        if(Session["emergency"]!=null)
        {
            Emergency emergency = (Emergency)Session["emergency"];
            emergency.InsertData();
        }
        else
        {
            Emergency emergency = new Emergency();
            emergency.InsertBlankEmergency();
        }
        if(Session["operation"]!=null)
        {
            OperationData operation = (OperationData)Session["operation"];
            operation.InsertOperationalData();
        }
        else
        {
            OperationData operation = new OperationData();
            operation.InsertBlankOperation();
                
        }
        if(Session["diagnosis"]!=null)
        {
            Diagnosis diagnosis = (Diagnosis)Session["diagnosis"];
            diagnosis.InsertDiagnosis();
        }
        else
        {
            Diagnosis diagnosis = new Diagnosis();
            diagnosis.InsertBlankDiagnosis();
        }
        if(Session["outcome"]!=null)
        {
            Outcome outcome = (Outcome)Session["outcome"];
            outcome.InsertOutcome();
        }
        else
        {
            Outcome outcome = new Outcome();
            outcome.InsertBlankOutcome();
        }
        string msg = "Data Stored Successfully";
        ScriptManager.RegisterClientScriptBlock((sender as Control), this.GetType(), "alert", msg, true);
        
        conn.Close();

    }

    protected void Button2_Click(object sender, EventArgs e)
    {

    }

    protected void SaveTransfer(object sender, EventArgs e)
    {
        Transfer transfer = new Transfer();
        transfer.TransferIn1 = ddTransferIn.SelectedValue;
        transfer.ReferringFacility1 = transferReferringFacility.Text;
        transfer.ReasonReferral1 = transferReferralReason.Text;
        
        transfer.ArrivedDate1 = Convert.ToDateTime(transferArrivalDate.Text);
        transfer.ArrivedTime1 = Convert.ToDateTime(transferArrivalTime.Text);
        transfer.DepartDate1 = Convert.ToDateTime(transferDepartedDate.Text);
        transfer.DepartTime1 = Convert.ToDateTime(transferDepartedTime.Text);
        transfer.ModeOfTransferT1 = ddTransferModeOfTransport.SelectedIndex.ToString();
        transfer.OtherModeOfTransfer1 = transferOtherModeOfTransport.Text;
        transfer.VitalsAtDate1 = Convert.ToDateTime(transferVitalsAtDate.Text);
        transfer.VitalsAtTime1 = Convert.ToDateTime(transferVitalsAtTime.Text);
        transfer.SBP1 = transferSBP.Text;
        transfer.PulseRate1 = transferPulseRate.Text;
        transfer.RespiratoryRate1 = transferRespirationRate.Text;
        transfer.DdTemp = ddTransferTemp.SelectedValue;
        transfer.Temperature1 = transferTemperature.Text;
        transfer.GCSAtDate1 = Convert.ToDateTime(transferGCSAtDate.Text);
        transfer.GCSAtTime1 = Convert.ToDateTime(transferGCSAtTime.Text);
        transfer.Eye1 = ddTransferEye.SelectedValue;
        transfer.Verbal1 = ddTransferVerbal.SelectedValue;
        transfer.Motor1 = ddTransferMotor.SelectedValue;
        transfer.Total1 = transferGCSTotal.Text;
        transfer.ReferringFacilityIntervention1 = transferIntervention.Text;
        transfer.Pid = Convert.ToDouble(Session["newpatient"]);
        transfer.Facilityname = facilityName.Text;
        Session["transfer"] = transfer;
       

        hfTab.Value = "emergency";
        conn.Close();

    }

    protected void SaveDiagnosisData(object sender, EventArgs e)
    {
        Diagnosis diagnosis = new Diagnosis();
        diagnosis.Bodyregionid1 = ddDiagnosisBodyRegion1.SelectedValue.ToString();
        diagnosis.Bodyregionid2 = ddDiagnosisBodyRegion2.SelectedValue.ToString();
        diagnosis.Bodyregionid3 = ddDiagnosisBodyRegion3.SelectedValue.ToString();
        diagnosis.Bodyregionid4 = ddDiagnosisBodyRegion4.SelectedValue.ToString();

        diagnosis.Typeofinjuryid1 = ddDiagnosisTypeOfInjury1.SelectedValue.ToString();
        diagnosis.Typeofinjuryid2 = ddDiagnosisTypeOfInjury2.SelectedValue.ToString();
        diagnosis.Typeofinjuryid3 = ddDiagnosisTypeOfInjury3.SelectedValue.ToString();
        diagnosis.Typeofinjuryid4 = ddDiagnosisTypeOfInjury4.SelectedValue.ToString();

        diagnosis.Anatomicalpart1 = diagnosisAnatomicalPart1.Text;
        diagnosis.Anatomicalpart2 = diagnosisAnatomicalPart2.Text;
        diagnosis.Anatomicalpart3 = diagnosisAnatomicalPart3.Text;
        diagnosis.Anatomicalpart4 = diagnosisAnatomicalPart4.Text;

        diagnosis.Level1 = diagnosisLevel1.Text;
        diagnosis.Level2 = diagnosisLevel2.Text;
        diagnosis.Level3 = diagnosisLevel3.Text;
        diagnosis.Level4 = diagnosisLevel4.Text;

        diagnosis.Icd10codeid1 = diagnosisICDCode1.Text;
        diagnosis.Icd10codeid2 = diagnosisICDCode2.Text;
        diagnosis.Icd10codeid3 = diagnosisICDCode3.Text;
        diagnosis.Icd10codeid4 = diagnosisICDCode4.Text;
        diagnosis.Injurynarrative = diagnosisInjuryNarrative.Text;
        diagnosis.Pid1 = Convert.ToDouble(Session["newpatient"]); 
        diagnosis.Facilityname = facilityName.Text;
        Session["diagnosis"] = diagnosis;
        
        hfTab.Value = "outcome";
    }

    protected void ddEmergencyDischargeDisposition_SelectedIndexChanged(object sender, EventArgs e)
    {
        if(ddEmergencyDischargeDisposition.SelectedIndex == 10)
        {
            emergencyOtherDischarge.Visible = true;
        }
        else
        {
            emergencyOtherDischarge.Visible = false;
        }
    }

    protected void SaveEmergencyData(object sender, EventArgs e)
    {
        Emergency emergency = new Emergency();
        emergency.DirectAdmit1 = ddEmergencyDirectAdmit.SelectedValue;
        emergency.ReAdmission1 = ddEmergencyReadmission.SelectedValue;
        emergency.DateTimeE1 = Convert.ToDateTime(emergencyEDDate.Text);
        emergency.DateTimeED1 = Convert.ToDateTime(emergencyEDTime.Text);
        emergency.TriageLevel1 = emergencyTriageLevel.Text;
        emergency.SignsOfLife1 = ddEmergencySignOfLife.SelectedValue;
        emergency.EdDead1 = ddEmergencyEDDeath.SelectedValue;
        emergency.TroumaTeam1 = ddEmergencyTraumaTeam.SelectedValue;
        if(ddEmergencyTraumaTeam.SelectedIndex==1)
        {
            emergency.DateTraumaActivation = Convert.ToDateTime(emergencyTTDate.Text);
            emergency.TimeTraumaActivation = Convert.ToDateTime(emergencyTTTime.Text);
            emergency.ResponseLevel1 = ddTraumaTeamResponseLevel.SelectedValue;
        }
        
        emergency.Speciality1 = ddEmergencySpeciality.SelectedValue;
        emergency.OtherSpeciality1 = emergencyOtherSpeciality.Text;
        emergency.TimeCalled1 = Convert.ToDateTime(emergencySpecialityTime.Text);
        emergency.AvailiableCare1 = Convert.ToDateTime(emergencySpecialityTimeAvailable.Text);
        emergency.OtherSpeciality1 = emergencyOtherSpeciality.Text;
        emergency.VitalsAtDate = Convert.ToDateTime(emergencyVitalsAtDate.Text);
        emergency.VitalsAtTime = Convert.ToDateTime(emergencyVitalsAtTime.Text);
        emergency.FirstPulseRate1 = emergencyFirstPulseRate.Text;
        emergency.FirstSystoliBP1 = emergencyFirstSystolicBP.Text;
        emergency.FirstSpontaneous1 = emergencySpontRespRate.Text;
        emergency.LowestSystolicBP1 = emergencyLowestSysBP.Text;
        emergency.RespiratoryControlled1 = ddEmergencyRespRateControlled.SelectedValue;
        emergency.Temperature1 = emergencyTemp.Text;
        emergency.DdTemp = ddEmergencyCelsius.SelectedValue;
        emergency.OxygenAir1 = emergencyOxygenSatRoom.Text;
        emergency.OxygenSat1 = emergencyOxygenSupplement.Text;
        emergency.FirstHemcrott1 = emergencyFirstHematocrit.Text;
        emergency.GcsAtDate = Convert.ToDateTime(emergencyGCSAtDate.Text);
        emergency.GcsAtTime = Convert.ToDateTime(emergencyGCSAtTime.Text);
        emergency.Total1 = emergencyGCSTotal.Text;
        emergency.TotalGCS = total;
        emergency.Eye1 = ddEmergencyEye.SelectedValue;
        emergency.Verbal1 = ddEmergencyVerbal.SelectedValue;
        emergency.Motor1 = ddEmergencyMotor.SelectedValue;
        emergency.RevisedScore1 = emergencyTraumaScore.Text;
        emergency.PediactricTscore1 = emergencyPediatricTraumaScore.Text;
        emergency.EDProcedureDone1 = emergencyEDProcedure.Text;
        emergency.Preexisting1 = ddEmergencyPreExistingCondition.SelectedIndex.ToString();
        emergency.OtherPreExisting1 = emergencyOtherPreExisting.Text;
        emergency.CareIssuedFaced1 = ddEmergencyCareIssueFaced.SelectedIndex.ToString();
        emergency.CareIssuesFaced11 = ddEmergencyCareIssueFaced1.SelectedIndex.ToString();
        emergency.CareIssuesFaced21 = ddEmergencyCareIssueFaced2.SelectedIndex.ToString();
        emergency.EdDischarged1 = ddEmergencyDischargeDisposition.SelectedIndex.ToString();
        emergency.OtherDischarge1 = emergencyOtherDischarge.Text;
        emergency.AdmittingService1 = ddEmergencyAdmittingService.SelectedValue;
        emergency.AlcoholUse1 = ddEmergencyAlcoholIndicator.SelectedValue;
        emergency.DrugUse1 = ddEmergencyDrugUseIndicator.SelectedValue;
        emergency.Pid1 = Convert.ToDouble(Session["newpatient"]);
        emergency.Facilityname1 = facilityName.Text;
        Session["emergency"] = emergency;
       
        hfTab.Value = "operation";



    }

    protected void SaveOperationData(object sender, EventArgs e)
    {
        
        OperationData operationData1 = new OperationData();
        operationData1.WasSurgeryPerformed1 = operationTypeOfSurgery1.Text;
        if(ddOperationPerformed.SelectedIndex==1)
        {
            operationData1.Typeofsurgery2 = operationTypeOfSurgery2.Text;
            operationData1.Typeofsurgery3 = operationTypeOfSurgery3.Text;

            operationData1.Startdate1 = Convert.ToDateTime(ddOperationDate1.Text);
            operationData1.Startdate2 = Convert.ToDateTime(ddOperationDate2.Text);
            operationData1.Startdate3 = Convert.ToDateTime(ddOperationDate3.Text);

            operationData1.Starttime1 = Convert.ToDateTime(ddOperationTime1.Text);
            operationData1.Starttime2 = Convert.ToDateTime(ddOperationTime2.Text);
            operationData1.Starttime3 = Convert.ToDateTime(ddOperationTime3.Text);

            operationData1.Ordispostion1 = ddOperationDisposition1.SelectedIndex.ToString();
            operationData1.Ordispostion2 = ddOperationDisposition2.SelectedIndex.ToString();
            operationData1.Ordispostion3 = ddOperationDisposition3.SelectedIndex.ToString();
        }
        

        operationData1.Pid = Convert.ToDouble(Session["newpatient"]); 
        operationData1.Facilityname = facilityName.Text;
        Session["operation"] = operationData1;
        
        
        
        hfTab.Value = "diagnosis";

    }

    protected void SaveOutcomeData(object sender, EventArgs e)
    {
        Outcome outcome1 = new Outcome();
        outcome1.Dischargedate = Convert.ToDateTime(Dischargedate1.Text);
        outcome1.Dischargetime = Convert.ToDateTime(Dischargetime1.Text);
        outcome1.Hospitalduration = hospitalduration.Text;
        outcome1.Icuduration = totalICUdays.Text;
        outcome1.Ventilatordays = totalVentilatorDays.Text;
        outcome1.Prbc = outcomePRBC.Text;
        outcome1.Ffp = outcomeFFP.Text;
        outcome1.Cyroprecipitate = outcomeCryopercipitate.Text;
        outcome1.Dischargedisposition = ddOutcomeDischargeDisposition.SelectedValue.ToString();
        outcome1.Complication = ddOutcomeComplication.SelectedValue.ToString();
        outcome1.Eyeopening = ddOutcomeEye.SelectedValue.ToString();
        outcome1.Verbalresponse = ddOutcomeVerbal.SelectedValue.ToString();
        outcome1.Motorresponse = ddOutcomeMotor.SelectedValue.ToString();
        outcome1.Glassglowoutcomescale = ddOutcomeGCS.SelectedValue.ToString();
        outcome1.Consults = ddOutcomeConsults.SelectedValue.ToString();
        outcome1.Braindeath = ddOutcomeBrainDead.SelectedValue.ToString();
        outcome1.Lifesupport = ddOutcomeLifeSupport.ToString();
        outcome1.Autopsy = ddOutcomeAutopsy.ToString();
        outcome1.Resultsrequested = ddOutcomeAutopsyRequested.SelectedValue.ToString();
        outcome1.Resultsreceived = ddOutcomeAutopsyResultsRecv.SelectedValue.ToString();
        outcome1.Organdonated = ddOutcomeOrgansDonated.SelectedValue.ToString();
        outcome1.Ddoutcome = ddOutcome.SelectedValue.ToString();
        outcome1.Hostipalduration2 = hospitalduration2.SelectedValue.ToString();
        outcome1.Platelate = outcomePlatelet.Text;
        outcome1.Pid = Convert.ToDouble(Session["newpatient"]);
        outcome1.Faciityname = facilityName.Text;
        outcome1.Other = outcomeOtherDisposition.Text;
        outcome1.Total = outcomeGCSTotal.Text;
        outcome1.Organdonation = outcomeOrgans.Text;
        outcome1.Other1 = outcomeOther.Text;
        Session["outcome"] = outcome1;
        
        hfTab.Value = "finance";
    }



    

   

    protected void resetDemographicBtn(object sender, EventArgs e)
    {
        foreach (Control ctrl in pdemo.Controls)
        {
            if (ctrl is TextBox)
            {
                TextBox tb = (TextBox)ctrl;
                tb.Text = string.Empty;
            }
            else if (ctrl is DropDownList)
            {
                DropDownList dl = (DropDownList)ctrl;
                dl.SelectedIndex = 0;
            }
            else if (ctrl is CheckBox)
            {
                CheckBox cb = (CheckBox)ctrl;
                cb.Checked = false;
            }
        }
    }

    protected void resetInjuryBtn(object sender, EventArgs e)
    {
        foreach (Control ctrl in pinjury.Controls)
        {
            if (ctrl is TextBox)
            {
                TextBox tb = (TextBox)ctrl;
                tb.Text = string.Empty;
            }
            else if (ctrl is DropDownList)
            {
                DropDownList dl = (DropDownList)ctrl;
                dl.SelectedIndex = 0;
            }
            else if (ctrl is CheckBox)
            {
                CheckBox cb = (CheckBox)ctrl;
                cb.Checked = false;
            }
        }

    }

    protected void patientDob_TextChanged(object sender, EventArgs e)
    {
       
    }

    protected void CalculateAge(object sender, EventArgs e)
    {

        if (patientDob.Text != "")
        {
            DateTime dob = new DateTime();
            dob = Convert.ToDateTime(patientDob.Text);
            // patientAge.Text = dob.ToString();
            int age;

            age = DateTime.Now.Year - dob.Year;
            if (DateTime.Now.DayOfYear < dob.DayOfYear)
                age = age - 1;
            patientAge.Text = age.ToString();
            ddAgeUnit.SelectedIndex = 1;
        }

    }

    protected void resetFinancialBtn_Click(object sender, EventArgs e)
    {
        foreach (Control ctrl in pfinance.Controls)
        {
            if (ctrl is TextBox)
            {
                TextBox tb = (TextBox)ctrl;
                tb.Text = string.Empty;
            }
            else if (ctrl is DropDownList)
            {
                DropDownList dl = (DropDownList)ctrl;
                dl.SelectedIndex = 0;
            }
            else if (ctrl is CheckBox)
            {
                CheckBox cb = (CheckBox)ctrl;
                cb.Checked = false;
            }
        }
    }

    protected void resetPrehospitalBtn_Click(object sender, EventArgs e)
    {
        foreach (Control ctrl in pprehospital.Controls)
        {
            if (ctrl is TextBox)
            {
                TextBox tb = (TextBox)ctrl;
                tb.Text = string.Empty;
            }
            else if (ctrl is DropDownList)
            {
                DropDownList dl = (DropDownList)ctrl;
                dl.SelectedIndex = 0;
            }
            else if (ctrl is CheckBox)
            {
                CheckBox cb = (CheckBox)ctrl;
                cb.Checked = false;
            }
        }
    }


    protected void resetTransferBtn_Click(object sender, EventArgs e)
    {
        foreach (Control ctrl in ptransfer.Controls)
        {
            if (ctrl is TextBox)
            {
                TextBox tb = (TextBox)ctrl;
                tb.Text = string.Empty;
            }
            else if (ctrl is DropDownList)
            {
                DropDownList dl = (DropDownList)ctrl;
                dl.SelectedIndex = 0;
            }
            else if (ctrl is CheckBox)
            {
                CheckBox cb = (CheckBox)ctrl;
                cb.Checked = false;
            }
        }
    }


    protected void resetEmergencyBtn_Click(object sender, EventArgs e)
    {
        foreach (Control ctrl in pemergency.Controls)
        {
            if (ctrl is TextBox)
            {
                TextBox tb = (TextBox)ctrl;
                tb.Text = string.Empty;
            }
            else if (ctrl is DropDownList)
            {
                DropDownList dl = (DropDownList)ctrl;
                dl.SelectedIndex = 0;
            }
            else if (ctrl is CheckBox)
            {
                CheckBox cb = (CheckBox)ctrl;
                cb.Checked = false;
            }
        }
    }


    protected void resetOperationBtn_Click(object sender, EventArgs e)
    {
        foreach (Control ctrl in poperation.Controls)
        {
            if (ctrl is TextBox)
            {
                TextBox tb = (TextBox)ctrl;
                tb.Text = string.Empty;
            }
            else if (ctrl is DropDownList)
            {
                DropDownList dl = (DropDownList)ctrl;
                dl.SelectedIndex = 0;
            }
            else if (ctrl is CheckBox)
            {
                CheckBox cb = (CheckBox)ctrl;
                cb.Checked = false;
            }
        }
    }


    protected void resetDiagnosisBtn_Click(object sender, EventArgs e)
    {
        foreach (Control ctrl in pdiagnosis.Controls)
        {
            if (ctrl is TextBox)
            {
                TextBox tb = (TextBox)ctrl;
                tb.Text = string.Empty;
            }
            else if (ctrl is DropDownList)
            {
                DropDownList dl = (DropDownList)ctrl;
                dl.SelectedIndex = 0;
            }
            else if (ctrl is CheckBox)
            {
                CheckBox cb = (CheckBox)ctrl;
                cb.Checked = false;
            }
        }
    }


    protected void resetOutcomeBtn_Click(object sender, EventArgs e)
    {
        foreach (Control ctrl in poutcome.Controls)
        {
            if (ctrl is TextBox)
            {
                TextBox tb = (TextBox)ctrl;
                tb.Text = string.Empty;
            }
            else if (ctrl is DropDownList)
            {
                DropDownList dl = (DropDownList)ctrl;
                dl.SelectedIndex = 0;
            }
            else if (ctrl is CheckBox)
            {
                CheckBox cb = (CheckBox)ctrl;
                cb.Checked = false;
            }
        }
    }

    protected void removeSurgeryBtn1(object sender, EventArgs e)
    {
        operation3.Visible = false;
        operation5.Visible = false;
    }

    protected void removeSurgeryBtn2(object sender, EventArgs e)
    {
        operation6.Visible = false;
        operation7.Visible = false;
    }

    protected void removeDiagnosisBtn1(object sender, EventArgs e)
    {
        diagnosis1.Visible = false;
    }

    protected void removeDiagnosisBtn2(object sender, EventArgs e)
    {
        diagnosis2.Visible = false;
    }

    protected void removeDiagnosisBtn3(object sender, EventArgs e)
    {
        diagnosis3.Visible = false;
    }

}