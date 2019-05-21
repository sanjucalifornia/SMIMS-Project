<%@ Page Language="C#" AutoEventWireup="true" CodeFile="demo.aspx.cs" Inherits="demo" Debug="true" %>

<html>
    <head runat="server">
        <title>Trauma Registry CRH Manipal</title>
        
        <link href="css/bootstrap.min.css" rel="stylesheet" />
        <script src="files/jquery.min.js"></script>
        <script src="js/bootstrap.min.js"></script>
        
        
     <script> var j12 = $.noConflict(true);</script> 
    <script type="text/javascript">
        j12(document).ready(function () {
            var selectedTab = j12("#<%=hfTab.ClientID%>");
            var tabId = selectedTab.val() != "" ? selectedTab.val() : "demographic";
            j12('#dvTab a[href="#' + tabId + '"]').tab('show');
            j12("#dvTab a").click(function () {
                selectedTab.val(j12(this).attr("href").substring(1));
            });
        });
        //partial postback
        j12(document).ready(function () {
            var prm = Sys.WebForms.PageRequestManager.getInstance();
            prm.add_endRequest(function () {
             
            var selectedTab = j12("#<%=hfTab.ClientID%>");
            var tabId = selectedTab.val() != "" ? selectedTab.val() : "demographic";
            j12('#dvTab a[href="#' + tabId + '"]').tab('show');
            j12("#dvTab a").click(function () {
                selectedTab.val(j12(this).attr("href").substring(1));
            });
        });
        });
    </script>

       <script>
           j12(document).ready(function () {
               loaddate();
               loadtime();
           });
       </script>
        <link href="font-awesome/css/font-awesome.min.css" rel="stylesheet" />
    <link href="css/new.css" rel="stylesheet" />
    <link href="css/custom.css" rel="stylesheet" />
        <script src="files/sidebar.js"></script>
        <script>$(function(){

	$('#slide-submenu').on('click',function() {			        
        $(this).closest('.list-group').fadeOut('slide',function(){
            $('.mini-submenu').fadeIn();	
            
        });
        
      });

	$('.mini-submenu').on('click',function(){		
        $(this).next('.list-group').toggle('slide');
        $('.mini-submenu').hide();
       
	})
})
</script>
        
       
        
  
          
        
       

        <style type="text/css">
            
           
            
            .auto-style11 {
                width: 112px;
            }
            .auto-style12 {
                width: 159px;
            }
            .auto-style13 {
                width: 193px;
            }
            .auto-style23 {
                width: 235px;
            }
                        
           
            
            .auto-style25 {
                width: 368px;
                height: 30px;
            }
            .auto-style26 {
                width: 352px;
                height: 30px;
            }
            .auto-style27 {
                height: 30px;
            }
            .auto-style28 {
                color: #5DBCD2;
                font-size: 14px;
                font-weight: bold;
                width: 368px;
                height: 20px;
            }
            .auto-style29 {
                color: #5DBCD2;
                font-size: 14px;
                font-weight: bold;
                width: 352px;
                height: 20px;
            }
            .auto-style30 {
                color: #5DBCD2;
                font-size: 14px;
                font-weight: bold;
                height: 20px;
            }
            
           
            
            .auto-style31 {
                width: 47px;
            }
            
           
            
            .auto-style32 {
                color: #5DBCD2;
                font-size: 14px;
                font-weight: bold;
                width: 486px;
                height: 20px;
            }
            .auto-style33 {
                color: #5DBCD2;
                font-size: 14px;
                font-weight: bold;
                width: 555px;
                height: 20px;
            }
            .auto-style34 {
                color: #5DBCD2;
                font-size: 14px;
                font-weight: bold;
                width: 573px;
                height: 20px;
            }
            
           
            
            .auto-style35 {
                width: 486px;
                height: 20px;
            }
            .auto-style36 {
                width: 555px;
                height: 20px;
            }
            .auto-style37 {
                width: 573px;
                height: 20px;
            }
            
           
            
            .auto-style38 {
                color: #5DBCD2;
                font-size: 14px;
                font-weight: bold;
                width: 486px;
                height: 30px;
            }
            .auto-style39 {
                color: #5DBCD2;
                font-size: 14px;
                font-weight: bold;
                width: 555px;
                height: 30px;
            }
            .auto-style40 {
                color: #5DBCD2;
                font-size: 14px;
                font-weight: bold;
                width: 573px;
                height: 30px;
            }
            
           
            
            .auto-style43 {
                width: 545px;
            }
            
           
            
            .auto-style44 {
                color: #5DBCD2;
                font-size: 14px;
                font-weight: bold;
                width: 90px;
            }
            .auto-style45 {
                width: 90px;
            }
            .auto-style46 {
                width: 550px;
                height: 20px;
            }
            .auto-style47 {
                width: 90px;
                height: 20px;
            }
            .auto-style48 {
                height: 20px;
            }
            
           
            
            .auto-style51 {
                color: #5DBCD2;
                font-size: 14px;
                font-weight: bold;
                width: 550px;
            }
            .auto-style52 {
                width: 550px;
            }
            
           
            
            .auto-style53 {
                width: 110px;
            }
            .auto-style54 {
                color: #5DBCD2;
                font-size: 14px;
                font-weight: bold;
                width: 110px;
            }
            .auto-style58 {
                width: 166px;
            }
            
           
            
            .auto-style59 {
                width: 92px;
            }
                        
           
            
            .auto-style60 {
                color: #5DBCD2;
                font-size: 14px;
                font-weight: bold;
                width: 105px;
            }
            .auto-style61 {
                width: 105px;
            }
                        
           
            
            .auto-style69 {
                width: 200px;
            }
            .auto-style70 {
                height: 20px;
                width: 200px;
            }
            .auto-style71 {
                color: #5DBCD2;
                font-size: 14px;
                font-weight: bold;
                height: 20px;
                width: 200px;
            }
            .auto-style72 {
                color: #5DBCD2;
                font-size: 14px;
                font-weight: bold;
                width: 200px;
            }
            .auto-style73 {
                width: 158px;
            }
            .auto-style74 {
                height: 20px;
                width: 158px;
            }
            .auto-style75 {
                color: #5DBCD2;
                font-size: 14px;
                font-weight: bold;
                width: 158px;
                height: 20px;
            }
            .auto-style76 {
                color: #5DBCD2;
                font-size: 14px;
                font-weight: bold;
                width: 158px;
            }
            .auto-style77 {
                width: 368px;
                height: 50px;
            }
            .auto-style78 {
                width: 352px;
                height: 50px;
            }
            .auto-style79 {
                height: 50px;
            }
                        
           
            
            .auto-style80 {
                width: 486px;
                height: 9px;
            }
            .auto-style81 {
                width: 555px;
                height: 9px;
            }
            .auto-style82 {
                width: 573px;
                height: 9px;
            }
                        
           
            
        </style>
    </head>

    <body>
        <form id="form1" runat="server">
                        <asp:scriptmanager ID="script1" runat="server"></asp:scriptmanager>
<asp:updatepanel ID="update1" runat="server" UpdateMode="Conditional">
    <ContentTemplate>

        <div class="container-fluid">

                <nav class="navbar navbar-default" role="navigation" style="background-color: #0099CC">
                    <div class="container-fluid">
                        <!-- Brand and toggle get grouped for better mobile display -->
                        <div class="navbar-header">
                            <button type="button" class="navbar-toggle" data-toggle="collapse" data-target="#bs-example-navbar-collapse-1">
                                <span class="sr-only">Toggle navigation</span>
                                <span class="icon-bar"></span>
                                <span class="icon-bar"></span>
                                <span class="icon-bar"></span>
                            </button>
                            <a class="navbar-brand" href="#" style="font-weight: normal; color: #FFFFFF; font-size: large;">Trauma Registry
                            </a>
                           
                       </div>
                        <ul class="nav navbar-nav navbar-right">
                                <li><a href="#" runat="server" id="tidheader" style="text-align: right; font-size: small; color: #99FF33;"><span class="glyphicon glyphicon-user"></span> Trauma ID:</a></li>
                      
                          </ul>
                        <!-- Collect the nav links, forms, and other content for toggling -->
                       
                        <!-- /.navbar-collapse -->
                    </div>
                    <!-- /.container-fluid -->
                </nav>

                <div id="wrapper">
                    <div class="col-lg-2 col-sm-4 col-md-3 sidebar" id="sidebar">
                        <div class="mini-submenu">
                            <span class="icon-bar"></span>
                            <span class="icon-bar"></span>
                            <span class="icon-bar"></span>
                        </div>
                        <div class="list-group">
                            <span href="#" class="list-group-item active">Menu
           
                                <span class="pull-right" id="slide-submenu">
                                    <i class="fa fa-times"></i>
                                </span>
                            </span>
                            <a href="demo.aspx" class="list-group-item">
                                <i class="fa fa-comment-o"></i> New Patient
                            </a>
                            <a href="search_1.aspx" class="list-group-item">
                                <i class="fa fa-search"></i> Search
                            </a>
                            <a href="Update.aspx" class="list-group-item">
                                <i class="fa fa-user"></i> Update
                            </a>
                            <a href="Logout.aspx" class="list-group-item">
                                <i class="fa fa-folder-open-o"></i> Logout
                            </a>

                            <a href="updates.aspx" class="list-group-item">
                                <i class="fa fa-bell" style="color: #FF0000; font-size: medium"></i> Project Updates
                            </a>
                        </div>
                    </div>
                    
                        <div id="dvTab" class="col-lg-9 main">
                            <ul class="nav nav-tabs" role="tablist">
                                <li ><a href="#demographic" class="section"  role="tab" data-toggle="tab">Demographic</a></li>
                                <li><a href="#injury" class="section" role="tab" data-toggle="tab">Injury</a></li>
                                <li><a href="#prehospital" class="section" role="tab" data-toggle="tab">Prehospital</a></li>
                                <li><a href="#transfer" class="section" role="tab" data-toggle="tab">Transfer</a></li>
                                <li><a href="#emergency" class="section" role="tab" data-toggle="tab">Emergency</a></li>
                                <li><a href="#operation" class="section" role="tab" data-toggle="tab">Operation</a></li>
                                <li><a href="#diagnosis" class="section" role="tab" data-toggle="tab">Diagnosis</a></li>
                                <li><a href="#outcome" class="section" role="tab" data-toggle="tab">Outcome</a></li>
                                <li><a href="#finance" class="section" role="tab" data-toggle="tab">Finance</a></li>
                            </ul>
                        <div class="tab-content">
                            
                            <!-- /.Demographic Page-->
                            <div id="demographic" role="tabpanel" class="tab-pane active" >
                                <br />
                                <br />
                                <asp:Panel id="pdemo" runat ="server">
                                <table>
                                    <tr>
                                        <td style="width: 486px; height: 20px;" class="tdFont">Facility Name: </td>
                                        <td class="tdFont" style="width: 555px; height: 20px;">Date of Registration</td>
                                        <td style="width: 573px; height: 20px;" class="tdFont">&nbsp;Time of Registration :</td>
                                        <td style="width: 573px; height: 20px;" class="tdFont">&nbsp;</td>
                                    </tr>
                                    <tr>
                                        <td style="width: 486px; height: 20px;">
                                            <asp:TextBox ID="facilityName" runat="server" Height="30px" Width="280px" BackColor="White" CssClass="form-control form-rounded" ValidationGroup="demopage" ReadOnly="True"></asp:TextBox>

                                        </td>
                                        <td class="modal-sm" style="width: 555px; height: 20px;">
                                            <asp:TextBox ID="txtdate" runat="server" Height="30px" Width="202px"  BackColor="White"></asp:TextBox>
                                        </td>
                                        <td style="width: 573px; height: 20px;">
                                            <div >
                                             <asp:TextBox ID="time1" data-provide="timepicker" CssClass="form-control timepicker" runat="server" Width="100px"></asp:TextBox>
                                            
                                            </div>
                                        </td>
                                        <td style="width: 573px; height: 20px;">
                                            &nbsp;</td>
                                    </tr>
                                    <tr>
                                        <td style="width: 486px; height: 20px;">
                                            &nbsp;</td>
                                        <td class="modal-sm" style="width: 555px; height: 20px;"></td>
                                        <td style="width: 573px; height: 20px;"></td>
                                        <td style="width: 573px; height: 20px;">&nbsp;</td>
                                    </tr>
                                    <tr>
                                        <td class="auto-style32">Hospital No.</td>
                                        <td class="auto-style33"><b>&nbsp;AADHAR No</b></td>
                                        <td class="auto-style34"></td>
                                        <td class="auto-style34"></td>
                                    </tr>
                                    <tr>
                                        <td style="width: 486px">
                                            <asp:TextBox ID="patientId" runat="server" Height="30px" Width="200px" CssClass="form-control form-rounded" AutoCompleteType="Disabled"></asp:TextBox>

                                        </td>
                                        <td class="modal-sm" style="width: 555px">
                                            <asp:TextBox ID="aadharNo" runat="server" Height="30px" Width="200px" CssClass="form-control form-rounded" AutoCompleteType="Disabled"></asp:TextBox>
                                        </td>
                                        <td style="width: 573px">
                                            &nbsp;</td>
                                        <td style="width: 573px">
                                            &nbsp;</td>
                                    </tr>
                                    <tr>
                                        <td class="auto-style35">
                                            <asp:RegularExpressionValidator ID="RegularExpressionValidator2" runat="server" ControlToValidate="patientId" ErrorMessage="Enter Numeric Value" Font-Size="XX-Small" ForeColor="Red" ValidationExpression="\d+"></asp:RegularExpressionValidator>
                                        </td>
                                        <td class="auto-style36">
                                            <asp:RegularExpressionValidator ID="RegularExpressionValidator1" runat="server" ControlToValidate="aadharNo" ErrorMessage="Enter Numeric Value" Font-Size="XX-Small" ForeColor="Red" ValidationExpression="\d+"></asp:RegularExpressionValidator>
                                        </td>
                                        <td class="auto-style37">
                                            </td>
                                        <td class="auto-style37">
                                            </td>
                                    </tr>
                                    <tr style="color: #0033CC">
                                        <td class="tdFont" style="width: 486px;"><b>First name of Patient </b>

                                            <asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" ControlToValidate="patientFName" ErrorMessage="*" Font-Size="Small" ForeColor="Red" ValidationGroup="demopage"></asp:RequiredFieldValidator>

                                            </td>
                                        <td class="tdFont" style="width: 555px; height: 20px;">Middle name of Patient</td>
                                        <td class="tdFont" style="width: 573px; height: 20px;"><b>Last name of Patient

                                            <asp:RequiredFieldValidator ID="RequiredFieldValidator7" runat="server" ControlToValidate="patientLName" ErrorMessage="*" Font-Size="Small" ForeColor="Red" ValidationGroup="demopage"></asp:RequiredFieldValidator>

                                            </b></td>
                                        <td class="tdFont" style="width: 573px; height: 20px;">&nbsp;</td>
                                    </tr>
                                    <tr style="color: #0033CC">
                                        <td class="tdFont" style="width: 486px;">
                                            <asp:TextBox ID="patientFName" runat="server" Height="30px" Width="200px" CssClass="form-control form-rounded" ValidationGroup="demopage" AutoCompleteType="Disabled" ViewStateMode="Enabled"></asp:TextBox>

                                            <br />

                                            <asp:RegularExpressionValidator ID="RegularExpressionValidator3" runat="server" ControlToValidate="patientFName" ErrorMessage="only accepts character" Font-Size="XX-Small" ForeColor="Red" ValidationExpression="^[A-Za-z]*$" ValidationGroup="demopage"></asp:RegularExpressionValidator>

                                        </td>
                                        <td class="tdFont" style="width: 555px; height: 20px; vertical-align: top;">
                                            <asp:TextBox ID="patientMName" runat="server" Height="30px" Width="200px" CssClass="form-control form-rounded" AutoCompleteType="Disabled" ViewStateMode="Enabled"></asp:TextBox>
                                        </td>
                                        <td class="tdFont" style="width: 573px; height: 20px; vertical-align: top;">
                                            <asp:TextBox ID="patientLName" runat="server" Height="30px" Width="200px" CssClass="form-control form-rounded" ValidationGroup="demopage" AutoCompleteType="Disabled" ViewStateMode="Enabled"></asp:TextBox>

                                            <asp:RegularExpressionValidator ID="RegularExpressionValidator4" runat="server" ControlToValidate="patientLName" ErrorMessage="only accepts character" Font-Size="XX-Small" ForeColor="Red" ValidationExpression="^[A-Za-z]*$" ValidationGroup="demopage"></asp:RegularExpressionValidator>

                                        </td>
                                        <td class="tdFont" style="width: 573px; height: 20px;">&nbsp;</td>
                                    </tr>
                                    <tr>
                                        <td style="width: 486px">
                                            &nbsp;</td>
                                        <td class="modal-sm" style="width: 555px">
                                            &nbsp;</td>
                                        <td style="width: 573px">
                                            &nbsp;</td>
                                        <td style="width: 573px">
                                            &nbsp;</td>
                                    </tr>
                                    <tr>
                                        <td style="width: 486px"><b class="tdFont">Date of Birth</b></td>
                                        <td class="tdFont" style="width: 555px">
                                            <b class="tdFont">Age</b></td>
                                        <td style="width: 573px" class="tdFont">Age unit</td>
                                        <td style="width: 573px" class="tdFont">&nbsp;</td>
                                    </tr>
                                    <tr>
                                        <td class="auto-style32">
                                            <asp:TextBox ID="patientDob" runat="server" AutoComplete="disabled" autoPostback="true" CssClass="form-control form-rounded" Height="30px" OnTextChanged="patientDob_TextChanged" Width="200px"></asp:TextBox>
                                            <asp:Button ID="calcAge" runat="server" BackColor="#5DBCD2" CssClass="form-control form-rounded" Font-Bold="True" Font-Size="XX-Small" Height="20px" OnClick="CalculateAge" Text="Find Age" Width="60px" />
                                        </td>
                                        <td class="auto-style33">
                                            <asp:TextBox ID="patientAge" runat="server" CssClass="form-control form-rounded" Height="30px" ValidationGroup="demopage" Width="150px"></asp:TextBox>
                                                    <asp:RequiredFieldValidator ID="RequiredFieldValidator4" runat="server" ControlToValidate="patientAge" ErrorMessage="Field  can't be empty" Font-Size="XX-Small" ForeColor="Red" ValidationGroup="demopage"></asp:RequiredFieldValidator>
                                                    </td>

                                       
                                                
                                        <td>&nbsp;
                                            <asp:DropDownList ID="ddAgeUnit" runat="server" CssClass="form-control form-rounded" Height="30px" ValidationGroup="demopage" Width="180px" >
                                                <asp:ListItem Selected="True" Value="Select">Select</asp:ListItem>
                                                <asp:ListItem>Years</asp:ListItem>
                                                <asp:ListItem>Months</asp:ListItem>
                                                <asp:ListItem>Days</asp:ListItem>
                                                <asp:ListItem>Hours</asp:ListItem>
                                                <asp:ListItem>Unknown</asp:ListItem>
                                            </asp:DropDownList>
                                            <br />
                                            <asp:RequiredFieldValidator ID="RequiredFieldValidator5" runat="server" ControlToValidate="ddAgeUnit" ErrorMessage="Select one value" Font-Size="XX-Small" ForeColor="Red" InitialValue="0" ValidationGroup="demopage"></asp:RequiredFieldValidator>
                                        </td>
                                        <td class="auto-style34">&nbsp;</td>
                                        <td class="auto-style34">&nbsp;</td>
                                    </tr>
                                    <tr>
                                        <td style="width: 486px; height: 20px;">
                                            &nbsp;</td>
                                        <td class="modal-sm" style="width: 555px; height: 20px;">
                                                    &nbsp;</td>
                                        <td style="width: 573px; height: 20px;">
                                            <asp:CheckBox ID="ageEstimated" runat="server" CssClass="form-control form-rounded" Font-Size="Small" OnCheckedChanged="ageEstimated_CheckedChanged" Text="  Estimated" Width="126px" />
                                        </td>
                                        <td style="width: 573px; height: 20px;">
                                            &nbsp;</td>
                                    </tr>
                                    <tr>
                                        <td style="width: 486px; height: 20px;" class="tdFont">
                                            Sex</td>
                                        <td class="modal-sm" style="width: 555px; height: 20px;">
                                            &nbsp;</td>
                                        <td style="width: 573px; height: 20px;">&nbsp;</td>
                                        <td style="width: 573px; height: 20px;">&nbsp;</td>
                                    </tr>
                                    <tr>
                                        <td style="width: 486px; height: 20px;">
                                            <asp:DropDownList ID="ddSex" runat="server" Height="30px" Width="150px" CssClass="form-control form-rounded" ValidationGroup="demopage">
                                                <asp:ListItem Selected="True" Value="0">Select</asp:ListItem>
                                                <asp:ListItem>Male</asp:ListItem>
                                                <asp:ListItem>Female</asp:ListItem>
                                                <asp:ListItem>Third Gender</asp:ListItem>
                                                <asp:ListItem>Unknown</asp:ListItem>
                                            </asp:DropDownList>
                                        </td>
                                        <td class="modal-sm" style="width: 555px; height: 20px;">
                                            &nbsp;</td>
                                        <td style="width: 573px; height: 20px;">&nbsp;</td>
                                        <td style="width: 573px; height: 20px;">&nbsp;</td>
                                    </tr>
                                    <tr>
                                        <td style="width: 486px; height: 20px;">
                                            <asp:RequiredFieldValidator ID="RequiredFieldValidator6" runat="server" IntitialValue="0" ControlToValidate="ddSex" ErrorMessage="Select one value" Font-Size="XX-Small" ForeColor="Red" ValidationGroup="demopage"></asp:RequiredFieldValidator>
                                        </td>
                                        <td class="modal-sm" style="width: 555px; height: 20px;">
                                            &nbsp;</td>
                                        <td style="width: 573px; height: 20px;">&nbsp;</td>
                                        <td style="width: 573px; height: 20px;">&nbsp;</td>
                                    </tr>
                                    <tr>
                                        <td style="color: #FF0000;" colspan="2"><strong>Name of Relative / Next of Kin (including parent) /Accompanying Person:</strong></td>
                                        <td style="width: 573px">&nbsp;</td>
                                        <td style="width: 573px">&nbsp;</td>
                                    </tr>
                                    <tr>
                                        <td style="width: 486px">&nbsp;</td>
                                        <td class="modal-sm" style="width: 555px">&nbsp;</td>
                                        <td style="width: 573px">&nbsp;</td>
                                        <td style="width: 573px">&nbsp;</td>
                                    </tr>
                                    <tr style="color: #0033CC">
                                        <td class="tdFont" style="width: 486px"><b>Name of Relative 1</b></td>
                                        <td class="tdFont" style="width: 555px;">Mobile No. of Relative 1</td>
                                        <td style="width: 573px;" class="tdFont">Relationship of Relative 1</td>
                                        <td style="width: 573px;" class="tdFont">&nbsp;</td>
                                    </tr>
                                    <tr>
                                        <td style="width: 486px">
                                            <asp:TextBox ID="relativeName1" runat="server" Height="30px" Width="280px" CssClass="form-control form-rounded"></asp:TextBox>
                                        </td>
                                        <td class="modal-sm" style="width: 555px">
                                            <asp:TextBox ID="relativePhone1" runat="server" Height="30px" Width="200px" CssClass="form-control form-rounded"></asp:TextBox>
                                        </td>
                                        <td style="width: 573px">
                                            <asp:DropDownList ID="ddRelation1" runat="server" Height="30px" Width="280px" CssClass="form-control form-rounded" AutoPostBack="True" OnSelectedIndexChanged="ddRelation1_SelectedIndexChanged">
                                                <asp:ListItem>Select</asp:ListItem>
                                                <asp:ListItem>Father</asp:ListItem>
                                                <asp:ListItem>Mother</asp:ListItem>
                                                <asp:ListItem>Husband</asp:ListItem>
                                                <asp:ListItem>Wife</asp:ListItem>
                                                <asp:ListItem>Son</asp:ListItem>
                                                <asp:ListItem>Daughter</asp:ListItem>
                                                <asp:ListItem>Relative/Friend/Neighbour</asp:ListItem>
                                                <asp:ListItem>Others</asp:ListItem>
                                                <asp:ListItem>Unknown</asp:ListItem>
                                            </asp:DropDownList>
                                        </td>
                                        <td style="width: 573px">
                                            &nbsp;</td>
                                    </tr>
                                    <tr>
                                        <td style="width: 486px">
                                            &nbsp;</td>
                                        <td class="modal-sm" style="width: 555px">
                                            <asp:RegularExpressionValidator ID="RegularExpressionValidator5" runat="server" ControlToValidate="relativePhone1" ErrorMessage="Enter Numeric Value" Font-Size="XX-Small" ForeColor="Red" ValidationExpression="\d+"></asp:RegularExpressionValidator>
                                        </td>
                                        <td style="width: 573px">
                                            &nbsp;</td>
                                        <td style="width: 573px">
                                            &nbsp;</td>
                                    </tr>
                                    <tr>
                                        <td style="width: 486px" class="tdFont">&nbsp;</td>
                                        <td class="tdFont" style="width: 555px">&nbsp;</td>
                                        <td style="width: 573px" class="tdFont">
                                            <asp:TextBox ID="otherRelation1" runat="server" CssClass="form-control form-rounded" Height="30px" Placeholder="Specify the Relationship" Visible="False" Width="280px"></asp:TextBox>
                                        </td>
                                        <td style="width: 573px" class="tdFont">&nbsp;</td>
                                    </tr>
                                    <tr>
                                        <td style="width: 486px">
                                            &nbsp;</td>
                                        <td class="modal-sm" style="width: 555px">
                                            &nbsp;</td>
                                        <td style="width: 573px">
                                            &nbsp;</td>
                                        <td style="width: 573px">
                                            &nbsp;</td>
                                    </tr>
                                    <tr style="color: #0033CC" id="addRelative1" runat="server" visible="false">
                                        <td class="tdFont" style="width: 486px"><b>Name of Relative 2</b></td>
                                        <td class="tdFont" style="width: 555px;">Mobile No. of Relative 2</td>
                                        <td style="width: 573px;" class="tdFont">Relationship of Relative 2</td>
                                        <td style="width: 573px;" class="tdFont">&nbsp;</td>
                                    </tr>
                                    <tr id="addRelative2" runat="server" visible="false">
                                        <td style="width: 486px">
                                            <asp:TextBox ID="relativeName2" runat="server" Height="30px" Width="280px" CssClass="form-control form-rounded"></asp:TextBox>
                                        </td>
                                        <td class="modal-sm" style="width: 555px">
                                            <asp:TextBox ID="relativePhone2" runat="server" Height="30px" Width="200px" CssClass="form-control form-rounded"></asp:TextBox>
                                        </td>
                                        <td style="width: 573px">
                                            <asp:DropDownList ID="ddRelation2" runat="server" Height="30px" Width="280px" CssClass="form-control form-rounded" AutoPostBack="True" OnSelectedIndexChanged="ddRelation1_SelectedIndexChanged">
                                                <asp:ListItem>Select</asp:ListItem>
                                                <asp:ListItem>Father</asp:ListItem>
                                                <asp:ListItem>Mother</asp:ListItem>
                                                <asp:ListItem>Husband</asp:ListItem>
                                                <asp:ListItem>Wife</asp:ListItem>
                                                <asp:ListItem>Son</asp:ListItem>
                                                <asp:ListItem>Daughter</asp:ListItem>
                                                <asp:ListItem>Relative/Friend/Neighbour</asp:ListItem>
                                                <asp:ListItem>Others</asp:ListItem>
                                                <asp:ListItem>Unknown</asp:ListItem>
                                            </asp:DropDownList>
                                        </td>
                                        <td style="width: 573px">
                                            <asp:Button ID="addRelativeCloseBtn" runat="server" BackColor="White" CssClass="form-control form-rounded" Font-Bold="True" OnClick="addRelativeCloseBtn_Click" Text="X" Width="41px" ForeColor="Red" Height="33px" />
                                        </td>
                                    </tr>
                                    <tr id="addRelative3" runat="server" visible="false">
                                        <td style="width: 486px">
                                            &nbsp;</td>
                                        <td class="modal-sm" style="width: 555px">
                                            <asp:RegularExpressionValidator ID="RegularExpressionValidator6" runat="server" ControlToValidate="relativePhone2" ErrorMessage="Enter Numeric Value" Font-Size="XX-Small" ForeColor="Red" ValidationExpression="\d+"></asp:RegularExpressionValidator>
                                        </td>
                                        <td style="width: 573px">
                                            &nbsp;</td>
                                        <td style="width: 573px">
                                            &nbsp;</td>
                                    </tr>
                                    <tr id="addRelative4" runat="server" visible="false">
                                        <td class="auto-style38">
                                        </td>
                                        <td class="auto-style39"></td>
                                        <td class="auto-style40">
                                            <asp:TextBox ID="otherRelation2" runat="server" CssClass="form-control form-rounded" Height="30px" Placeholder="Specify the Relationship" Visible="False" Width="280px"></asp:TextBox>
                                        </td>
                                        <td class="auto-style40"></td>
                                    </tr>
                                    <tr>
                                        <td style="width: 486px" class="tdFont">
                                            <asp:Button ID="addRelativeBtn" runat="server" BackColor="#5DBCD2" CssClass="form-control form-rounded" Font-Bold="True" OnClick="addRelativeBtn_Click" Text="Add" Width="60px" />
                                        </td>
                                        <td class="tdFont" style="width: 555px">&nbsp;</td>
                                        <td style="width: 573px" class="tdFont">
                                            &nbsp;</td>
                                        <td style="width: 573px" class="tdFont">&nbsp;</td>
                                    </tr>
                                    <tr>
                                        <td style="width: 486px" class="tdFont">&nbsp;</td>
                                        <td class="tdFont" style="width: 555px">&nbsp;</td>
                                        <td style="width: 573px" class="tdFont">
                                            &nbsp;</td>
                                        <td style="width: 573px" class="tdFont">&nbsp;</td>
                                    </tr>
                                    <tr>
                                        <td style="width: 486px"><b>Address Details:</b></td>
                                        <td class="modal-sm" style="width: 555px">&nbsp;</td>
                                        <td style="width: 573px">&nbsp;</td>
                                        <td style="width: 573px">&nbsp;</td>
                                    </tr>
                                    <tr>
                                        <td style="width: 486px">&nbsp;</td>
                                        <td class="modal-sm" style="width: 555px">&nbsp;</td>
                                        <td style="width: 573px">&nbsp;</td>
                                        <td style="width: 573px">&nbsp;</td>
                                    </tr>
                                    <tr style="color: #0033CC">
                                        <td style="width: 486px; height: 20px;" class="tdFont"><b>Current Place of Residence</b></td>
                                        <td style="width: 555px;" class="tdFont">&nbsp;<asp:CheckBox ID="CheckBox1" runat="server" AutoPostBack="True" OnCheckedChanged="CheckBox1_CheckedChanged" Text="Permanent Address same as Current" />
                                        </td>
                                        <td style="width: 573px; height: 20px;" class="tdFont"><b>Permanent Residence</b></td>
                                        <td style="width: 573px; height: 20px;" class="tdFont">&nbsp;</td>
                                    </tr>
                                    <tr>
                                        <td style="width: 486px">
                                            <asp:TextBox ID="currentPlaceOfResidence" runat="server" Height="57px" Width="294px" CssClass="form-control form-rounded"></asp:TextBox>
                                        </td>
                                        <td class="modal-sm" style="width: 555px">
                                            &nbsp;</td>
                                        <td style="width: 573px">
                                            <asp:TextBox ID="permanentResidence" runat="server" Height="51px" Width="297px" CssClass="form-control form-rounded"></asp:TextBox>
                                        </td>
                                        <td style="width: 573px">
                                            &nbsp;</td>
                                    </tr>
                                    <tr>
                                        <td style="width: 486px" class="tdFont">
                                            Police Station</td>
                                        <td class="modal-sm" style="width: 555px">
                                            &nbsp;</td>
                                        <td style="width: 573px" class="tdFont">
                                            Police Station</td>
                                        <td style="width: 573px">
                                            &nbsp;</td>
                                    </tr>
                                    <tr>
                                        <td style="width: 486px">
                                            <asp:TextBox ID="currentPoliceStation" runat="server" Height="30px" Width="300px" CssClass="form-control form-rounded"></asp:TextBox>
                                        </td>
                                        <td class="modal-sm" style="width: 555px">
                                            &nbsp;</td>
                                        <td style="width: 573px">
                                            <asp:TextBox ID="permanentPoliceStation" runat="server" Height="30px" Width="300px" CssClass="form-control form-rounded"></asp:TextBox>
                                        </td>
                                        <td style="width: 573px">
                                            &nbsp;</td>
                                    </tr>
                                    <tr>
                                        <td style="width: 486px" class="tdFont">PIN</td>
                                        <td class="modal-sm" style="width: 555px">&nbsp;</td>
                                        <td style="width: 573px" class="tdFont">PIN</td>
                                        <td style="width: 573px" class="tdFont">&nbsp;</td>
                                    </tr>
                                    <tr>
                                        <td style="width: 486px">
                                            <asp:TextBox ID="currentPin" runat="server" Height="30px" Width="100px" CssClass="form-control form-rounded"></asp:TextBox>
                                        </td>
                                        <td class="modal-sm" style="width: 555px">&nbsp;</td>
                                        <td style="width: 573px">
                                            <asp:TextBox ID="permanentPin" runat="server" Height="30px" Width="100px" CssClass="form-control form-rounded"></asp:TextBox>
                                        </td>
                                        <td style="width: 573px">
                                            &nbsp;</td>
                                    </tr>
                                    <tr style="color: #0033CC">
                                        <td style="width: 486px; height: 20px;" class="tdFont"><b>Mobile</b></td>
                                        <td class="tdFont" style="width: 555px; height: 20px;">&nbsp;</td>
                                        <td style="width: 573px; height: 20px;" class="tdFont"><b>Mobile</b></td>
                                        <td style="width: 573px; height: 20px;" class="tdFont">&nbsp;</td>
                                    </tr>
                                    <tr>
                                        <td style="width: 486px">
                                            <asp:TextBox ID="currentPhone" runat="server" Height="30px" Width="300px" CssClass="form-control form-rounded"></asp:TextBox>
                                        </td>
                                        <td class="modal-sm" style="width: 555px">
                                            &nbsp;</td>
                                        <td style="width: 573px">
                                            <asp:TextBox ID="permanentPhone" runat="server" Height="30px" Width="300px" CssClass="form-control form-rounded"></asp:TextBox>
                                        </td>
                                        <td style="width: 573px">
                                            &nbsp;</td>
                                    </tr>
                                    <tr>
                                        <td class="auto-style80">
                                            <asp:RegularExpressionValidator ID="RegularExpressionValidator7" runat="server" ControlToValidate="currentPhone" ErrorMessage="Enter Numeric Value" Font-Size="XX-Small" ForeColor="Red" ValidationExpression="\d+"></asp:RegularExpressionValidator>
                                            <asp:RegularExpressionValidator ID="addrmob" runat="server" ControlToValidate="currentPhone" ErrorMessage="Enter a valid mobile no" ForeColor="Red" ValidationExpression="^[0-9]{10}$"></asp:RegularExpressionValidator>
                                        </td>
                                        <td class="auto-style81"></td>
                                        <td class="auto-style82">
                                            <asp:RegularExpressionValidator ID="RegularExpressionValidator8" runat="server" ControlToValidate="permanentPhone" ErrorMessage="Enter Numeric Value" Font-Size="XX-Small" ForeColor="Red" ValidationExpression="\d+"></asp:RegularExpressionValidator>
                                            <asp:RegularExpressionValidator ID="addrmob0" runat="server" ControlToValidate="permanentPhone" ErrorMessage="Enter a valid mobile no" ForeColor="Red" ValidationExpression="^[0-9]{10}$"></asp:RegularExpressionValidator>
                                        </td>
                                        <td class="auto-style82"></td>
                                    </tr>
                                    <tr>
                                        <td style="width: 486px">&nbsp;</td>
                                        <td class="modal-sm" style="width: 555px">&nbsp;</td>
                                        <td style="width: 573px">&nbsp;</td>
                                        <td style="width: 573px">&nbsp;</td>
                                    </tr>
                                    <tr style="color: #0033CC">
                                        <td style="width: 486px" class="tdFont"><b>Address Unit</b></td>
                                        <td class="tdFont" style="width: 555px;">Occupation</td>
                                        <td style="width: 573px" class="tdFont"><b>Education (highest)</b></td>
                                        <td style="width: 573px" class="tdFont">&nbsp;</td>
                                    </tr>
                                    <tr>
                                        <td style="width: 486px">
                                            <asp:DropDownList ID="ddAddressUnit" runat="server" Height="30px" Width="250px" CssClass="form-control form-rounded">
                                            </asp:DropDownList>
                                        </td>
                                        <td class="modal-sm" style="width: 555px">
                                            <asp:DropDownList ID="ddOccupationId" runat="server" CssClass="form-control form-rounded" Height="30px" Width="250px" AutoPostBack="True" OnSelectedIndexChanged="ddOccupationId_SelectedIndexChanged">
                                            </asp:DropDownList>
                                        </td>
                                        <td style="width: 573px">
                                            <asp:DropDownList ID="ddEducation" runat="server" Height="30px" Width="250px" ViewStateMode="Enabled" CssClass="form-control form-rounded">
                                            </asp:DropDownList>
                                        </td>
                                        <td style="width: 573px">
                                            &nbsp;</td>
                                    </tr>
                                    <tr>
                                        <td class="auto-style11"></td>
                                        <td class="auto-style12">
                                            <asp:TextBox ID="occupationOther" runat="server" Height="30px" Width="300px" CssClass="form-control form-rounded" Visible="False"></asp:TextBox>
                                        </td>
                                        <td class="auto-style13"></td>
                                        <td class="auto-style13">&nbsp;</td>
                                    </tr>
                                    <tr>
                                        <td style="width: 486px; height: 20px;">&nbsp;</td>
                                        <td class="modal-sm" style="width: 555px; height: 20px;"></td>
                                        <td style="width: 573px; height: 20px;"></td>
                                        <td style="width: 573px; height: 20px;">&nbsp;</td>
                                    </tr>
                                    <tr>
                                        <td style="width: 486px; height: 20px;">&nbsp;</td>
                                        <td class="modal-sm" style="width: 555px; height: 20px;">&nbsp;</td>
                                        <td style="width: 573px; height: 20px;">&nbsp;</td>
                                        <td style="width: 573px; height: 20px;">&nbsp;</td>
                                    </tr>
                                    <tr>
                                        <td style="width: 486px">&nbsp;</td>
                                        <td class="modal-sm" style="width: 555px">&nbsp;</td>
                                        <td style="width: 573px">&nbsp;</td>
                                        <td style="width: 573px">&nbsp;</td>
                                    </tr>
                                </table>
                                </asp:Panel>
                                <div class="container-fluid">
                                    <div class="row">
                                        <div class="col-lg-12" style="top: 0px; left: 2px; margin-top: 0px;">
                                            <div class="col-lg-4"></div>
                                            <div class="col-lg-4">
                                                <div class="col-lg-6" style="text-align: center;">
                                                    <asp:Button ID="resetDemographic" runat="server" Text="Reset" class="btn-danger" Height="35px" Width="75px" OnClick="resetDemographicBtn" />
                                                </div>
                                                <div class="col-lg-6" style="text-align: center;">
                                                    <asp:Button ID="Savedemo" runat="server" Text="Save &amp; Continue" class="btn-primary" Height="35px" Width="119px" OnClick="SaveDemo" ValidationGroup="demopage" />
                                                </div>
                                            </div>
                                            <div class="col-lg-4"></div>








                                        </div>
                                    </div>
                                </div>
            
        </div>
                             

<!-- /.Injury Page-->
                <div id="injury"  role="tabpanel" class="tab-pane active">
                    <br />
                    <asp:Panel ID="pinjury" runat="server">
                       <table class="nav-justified">
               <tr>
                   <td style="width: 366px;" class="tdFont">Injury Date</td>
                   <td style="width: 376px; color: #0033CC; "><strong class="tdFont">Injury Time</strong></td>
                   <td >&nbsp;</td>
               </tr>
               <tr>
                   <td style="width: 366px; height: 36px;">
                                            <asp:TextBox ID="injurydate" runat="server" Height="30px" Width="152px" BackColor="White" CssClass="form-control form-rounded"></asp:TextBox>
                                        &nbsp;<br />
                                            <asp:RequiredFieldValidator ID="RequiredFieldValidator8" runat="server" ControlToValidate="injurydate" ErrorMessage="Field  can't be empty" Font-Size="XX-Small" ForeColor="Red" ValidationGroup="injurypage"></asp:RequiredFieldValidator>
                   </td>
                   <td style="width: 366px; height: 36px;">
                    &nbsp;<asp:TextBox ID="injuryTime" runat="server" CssClass="form-control form-rounded" Height="30px" Width="100px"></asp:TextBox>
                       <br />
                       <asp:RequiredFieldValidator ID="RequiredFieldValidator9" runat="server" ControlToValidate="injuryTime" ErrorMessage="Field  can't be empty" Font-Size="XX-Small" ForeColor="Red" ValidationGroup="injurypage"></asp:RequiredFieldValidator>
                   </td>
                   <td style="height: 36px"></td>
               </tr>
               <tr>
                   <td style="width: 366px">
                       &nbsp;</td>
                   <td style="width: 376px;">&nbsp;</td>
                   <td>&nbsp;</td>
               </tr>
               <tr style="color: #0033CC">
                   <td style="height: 13px"><b class="tdFont">Address of Incident</b></td>
                   <td style="width: 376px; height: 13px;"><strong class="tdFont">Police Station</strong></td>
                   <td style="height: 13px"><strong class="tdFont"><b class="tdFont">PIN</b></strong></td>
               </tr>
               <tr>
                   <td>
                    <asp:TextBox ID="addressOfIncident" runat="server" Height="60px" Width="300px" 
                           TextMode="MultiLine" CssClass="form-control form-rounded"></asp:TextBox>
                       <br />
                       <asp:RequiredFieldValidator ID="RequiredFieldValidator10" runat="server" ControlToValidate="addressOfIncident" ErrorMessage="Field  can't be empty" Font-Size="XX-Small" ForeColor="Red" ValidationGroup="injurypage"></asp:RequiredFieldValidator>
                   </td>
                   <td style="width: 376px">
                    <asp:TextBox ID="injuryPoliceStation" runat="server" Height="33px" Width="298px" CssClass="form-control form-rounded"></asp:TextBox>
                   </td>
                   <td>
                    <asp:TextBox ID="injuryPin" runat="server" Height="30px" Width="100px" CssClass="form-control form-rounded"></asp:TextBox>
                   </td>
               </tr>
               <tr>
                   <td style="width: 366px">
                       &nbsp;</td>
                   <td style="width: 376px">&nbsp;</td>
                   <td>&nbsp;</td>  
               </tr>
               <tr>
                   <td style="width: 366px; color: #0033CC;"><b class="tdFont">Incident Type</b></td>
                   <td style="width: 376px; color: #0033CC;"><b class="tdFont">Intent</b></td>
                   <td style="color: #0033CC">&nbsp;</td>
               </tr>
               <tr>
                   <td style="width: 366px">
                    <asp:DropDownList ID="ddInjuryIncidentType" runat="server" Height="30px" Width="300px" CssClass="form-control form-rounded" AutoPostBack="True" OnSelectedIndexChanged="ddInjuryIncidentType_SelectedIndexChanged">
                         <asp:ListItem Selected="True">Select</asp:ListItem>
                        <asp:ListItem Value="1">Isolated Event</asp:ListItem>
                        <asp:ListItem Value="2">Natural Disaster</asp:ListItem>
                        <asp:ListItem Value="3">War/Civil crime</asp:ListItem>
                        <asp:ListItem Value="4">Terrorism</asp:ListItem>
                        <asp:ListItem Value="5">Other</asp:ListItem>
                    </asp:DropDownList>
                   </td>
                   <td style="width: 376px">
                    <asp:DropDownList ID="ddInjuryIntent" runat="server" Height="30px" Width="300px" CssClass="form-control form-rounded" OnSelectedIndexChanged="ddInjuryIntent_SelectedIndexChanged" AutoPostBack="True">
                         <asp:ListItem Selected="True">Select</asp:ListItem>
                        <asp:ListItem Value="1">Unintentional(transport/falls/burns/natural disaster)</asp:ListItem>
                        <asp:ListItem Value="2">Intentional- interpersonal</asp:ListItem>
                        <asp:ListItem Value="3">Intentional- self inflicted</asp:ListItem>
                        <asp:ListItem Value="4">Legal intervention</asp:ListItem>
                        <asp:ListItem Value="5">War or terrorism</asp:ListItem>
                        <asp:ListItem Value="6">Undetermined/unknown</asp:ListItem>
                    </asp:DropDownList>
                   </td>
                   <td>
                       &nbsp;</td>
               </tr>
               <tr>
                   <td style="width: 366px">
                    <asp:TextBox ID="InjuryOtherIncidentType" runat="server" Height="30px" placeholder="Specify incident type" Width="300px" CssClass="form-control form-rounded" Visible="False"></asp:TextBox>
                   </td>
                   <td style="width: 376px">&nbsp;</td>
                   <td>&nbsp;</td>
               </tr>
               <tr>
                   <td style="width: 366px; color: #0033CC;"><b class="tdFont">Place of Occurrence</b></td>
                   <td style="width: 376px">&nbsp;</td>
                   <td>&nbsp;</td>
               </tr>
               <tr>
                   <td style="width: 366px">
                    <asp:DropDownList ID="ddInjuryPlaceOfOccurrence" runat="server" Height="30px" Width="300px" CssClass="form-control form-rounded" OnSelectedIndexChanged="ddInjuryPlaceOfOccurrence_SelectedIndexChanged" AutoPostBack="True">
                    </asp:DropDownList>
                   </td>
                   <td style="width: 376px">&nbsp;</td>
                   <td>&nbsp;</td>
               </tr>
               <tr>
                   <td style="width: 366px" >
                    <asp:TextBox ID="InjuryPlaceOfOccurrence" runat="server" Height="30px" placeholder="Specify place of occurrence" Width="300px" CssClass="form-control form-rounded" Visible="False"></asp:TextBox>
                   </td>
                   <td style="width: 376px">&nbsp;</td>
                   <td>&nbsp;</td>
               </tr>
               <tr>
                   <td style="width: 366px">&nbsp;</td>
                   <td style="width: 376px">&nbsp;</td>
                   <td>&nbsp;</td>
               </tr>
               <tr style="color: #0033CC">
                   <td style="width: 366px"><b class="tdFont">Activity</b></td>
                   <td style="width: 376px"><b class="tdFont">Mechanism of Injury</b></td>
                   <td><b class="tdFont">Work Related Injury</b></td>
               </tr>
               <tr>
                   <td style="width: 366px">
                    <asp:DropDownList ID="ddInjuryActivity" runat="server" Height="30px" Width="300px" CssClass="form-control form-rounded" AutoPostBack="True" OnSelectedIndexChanged="ddInjuryActivity_SelectedIndexChanged">
                         <asp:ListItem Selected="True">Select</asp:ListItem>
                        <asp:ListItem Value="1">Sports activity</asp:ListItem>
                        <asp:ListItem Value="2">Leisure activity</asp:ListItem>
                        <asp:ListItem Value="3">Working for income</asp:ListItem>
                        <asp:ListItem Value="4">Domestic duties and learning activities</asp:ListItem>
                        <asp:ListItem Value="5">Vital activities(e.g.resting,sleeping)</asp:ListItem>
                        <asp:ListItem Value="6">Other</asp:ListItem>
                         <asp:ListItem>Unspecified</asp:ListItem>
                    </asp:DropDownList>
                   </td>
                   <td style="width: 376px">
                    <asp:DropDownList ID="ddInjuryMechanism" runat="server" Height="30px" Width="300px" CssClass="form-control form-rounded" OnSelectedIndexChanged="ddInjuryMechanism_SelectedIndexChanged" AutoPostBack="True">
                    </asp:DropDownList>
                   </td>
                   <td>
                    <asp:DropDownList ID="ddInjuryWorkRelated" runat="server" Height="30px" Width="300px" CssClass="form-control form-rounded" AutoPostBack="True" OnSelectedIndexChanged="ddInjuryWorkRelated_SelectedIndexChanged">
                        <asp:ListItem Selected="True">Select</asp:ListItem>
                        <asp:ListItem>Yes</asp:ListItem>
                        <asp:ListItem>No</asp:ListItem>
                    </asp:DropDownList>
                   </td>
               </tr>
               <tr>
                   <td style="width: 366px">
                    <asp:TextBox ID="injuryTypeOtherActivity" runat="server" Height="30px" placeholder="Specify Type of Activity" Width="300px" CssClass="form-control form-rounded" Visible="False"></asp:TextBox>
                   </td>
                   <td style="width: 376px">
                       <asp:TextBox ID="otherInjuryMechanism" runat="server" placeholder="Specify" CssClass="form-control form-rounded" Visible="False" Width="300px"></asp:TextBox>
                   </td>
                   <td>
                    <asp:TextBox ID="injuryTypeOfIndustry" runat="server" Height="30px" placeholder="Specify Type of Industry" Width="300px" CssClass="form-control form-rounded" Visible="False"></asp:TextBox>
                   </td>
               </tr>
               <tr style="color: #0033CC">
                   <td style="width: 366px">
                       &nbsp;</td>
                   <td style="width: 376px">&nbsp;</td>
                   <td>
                       &nbsp;</td>
               </tr>
              
               <tr id="transport1" runat="server">
                   <td style="width: 366px; height: 20px; "><strong>Transport Event 
                       </strong></td>
                   <td style="width: 376px; height: 20px"></td>
                   <td style="height: 20px"></td>
               </tr>
               <tr id="transport2" runat="server">
                   <td style="width: 366px; height: 20px; color: #FF0000;">&nbsp;</td>
                   <td style="width: 376px; height: 20px">&nbsp;</td>
                   <td style="height: 20px">&nbsp;</td>
               </tr>
               <tr style="color: #0033CC" id="transport3" runat="server">
                   <td style="height: 20px; width: 366px"><b class="tdFont">Mode of Transport of Victim</b></td>
                   <td style="height: 20px; width: 376px"><b class="tdFont">Counterpart</b></td>
                   <td style="height: 20px"><b class="tdFont">Role or position of Person injured</b></td>
               </tr>
               <tr id="transport4" runat="server">
                   <td style="width: 366px">
                    <asp:DropDownList ID="ddInjuryModeOfTransport" runat="server" Height="30px" Width="300px" CssClass="form-control form-rounded" OnSelectedIndexChanged="ddInjuryModeOfTransport_SelectedIndexChanged" AutoPostBack="True">
                    </asp:DropDownList>
                   </td>
                   <td style="width: 376px">
                    <asp:DropDownList ID="ddInjuryCounterpart" runat="server" Height="30px" Width="300px" CssClass="form-control form-rounded" AutoPostBack="True" OnSelectedIndexChanged="ddInjuryCounterpart_SelectedIndexChanged">
                    </asp:DropDownList>
                   </td>
                   <td>
                    <asp:DropDownList ID="ddInjuryRoleOfInjured" runat="server" Height="30px" Width="300px" CssClass="form-control form-rounded" AutoPostBack="True" OnSelectedIndexChanged="ddInjuryRoleOfInjured_SelectedIndexChanged">
                    </asp:DropDownList>
                   </td>
               </tr>
               <tr id="transport5" runat="server">
                   <td>
                       <asp:TextBox ID="OtherInjuryTransport" runat="server" placeholder="Specify" CssClass="form-control form-rounded" Visible="False" Width="300px"></asp:TextBox>
                   </td><td>
                       <asp:TextBox ID="OtherInjuryCounterpart" runat="server" placeholder="Specify" CssClass="form-control form-rounded" Visible="False" Width="300px"></asp:TextBox>
                   </td><td>
                       <asp:TextBox ID="InjuryRoleOfPerson" runat="server" placeholder="Specify" CssClass="form-control form-rounded" Visible="False" Width="300px"></asp:TextBox>
                   </td>
               </tr>
               <tr id="interpersonal1" runat="server">
                   <td style="width: 366px; "><strong>Interpersonal Violence</strong></td>
                   <td style="width: 376px">&nbsp;</td>
                   <td>&nbsp;</td>
               </tr>
               <tr id="interpersonal2" runat="server">
                   <td style="width: 366px; color: #FF0000;">&nbsp;</td>
                   <td style="width: 376px">&nbsp;</td>
                   <td>&nbsp;</td>
               </tr>
               <tr id="interpersonal3" runat="server">
                   <td style="width: 366px; font-weight: bold;"><span style="color: #0033CC"><b class="tdFont">Context</b></span></td>
                   <td style="width: 376px;font-weight: bold;"><span style="color: #0033CC"><b class="tdFont">Relationship</b></span></td>
                   <td>&nbsp;</td>
               </tr>
               <tr id="interpersonal4" runat="server">
                   <td style="width: 366px">
                    <asp:DropDownList ID="ddInjuryContext1" runat="server" Height="30px" Width="300px" CssClass="form-control form-rounded">
                           <asp:ListItem Selected="True">Select</asp:ListItem>
                        <asp:ListItem Value="1">Family or domestic violence</asp:ListItem>
                        <asp:ListItem Value="2">Other interpersonal(friends,neighbours,gang)</asp:ListItem>
                        <asp:ListItem Value="3">Bulglary/robbery/other device</asp:ListItem>
                        <asp:ListItem Value="4">Other</asp:ListItem>
                        <asp:ListItem Value="5">Unknown</asp:ListItem>
                    </asp:DropDownList>
                   </td>
                   <td style="width: 376px">
                    <asp:DropDownList ID="ddInjuryRelationship" runat="server" Height="30px" Width="300px" CssClass="form-control form-rounded">
                          <asp:ListItem Selected="True">Select</asp:ListItem>
                        <asp:ListItem Value="1">Spouse or partner</asp:ListItem>
                        <asp:ListItem Value="2">Parent</asp:ListItem>
                        <asp:ListItem Value="3">Acquaintance</asp:ListItem>
                        <asp:ListItem Value="4">Official authorities</asp:ListItem>
                        <asp:ListItem Value="5">Other</asp:ListItem>
                        <asp:ListItem Value="6">Unknown</asp:ListItem>
                    </asp:DropDownList>
                   </td>
                   <td>&nbsp;</td>
               </tr>
               <tr id="interpersonal5" runat="server">
                   <td style="width: 366px">
                       <asp:TextBox ID="OtherInjuryContextInterPer" runat="server" placeholder="Specify" CssClass="form-control form-rounded" Visible="False" Width="300px" Height="30px"></asp:TextBox>
                   </td>
                   <td style="width: 376px">
                       <asp:TextBox ID="OtherInjuryRelationInterPer" runat="server" placeholder="Specify" CssClass="form-control form-rounded" Visible="False" Width="300px" Height="30px"></asp:TextBox>
                   </td>
                   <td>&nbsp;</td>
               </tr>
               <tr id="selfdirected1" runat="server">
                   <td style="width: 366px; "><strong>Self-Directed Violence</strong></td>
                   <td style="width: 376px">&nbsp;</td>
                   <td>&nbsp;</td>
               </tr>
               <tr id="selfdirected12" runat="server">
                   <td style="width: 366px; color: #FF0000;">&nbsp;</td>
                   <td style="width: 376px">&nbsp;</td>
                   <td>&nbsp;</td>
               </tr>
               <tr id="selfdirected3" runat="server">
                   <td style="width: 366px; font-weight: bold;"><span style="color: #0033CC"><b class="tdFont">Prior attempt</b></span></td>
                   <td style="width: 376px ;font-weight: bold;"><span style="color: #0033CC"><b class="tdFont">Context</b></span></td>
                   <td>&nbsp;</td>
               </tr>
               <tr id="selfdirected4" runat="server">
                   <td style="width: 366px">
                    <asp:DropDownList ID="ddInjuryPriorAttempt" runat="server" Height="30px" Width="300px" CssClass="form-control form-rounded">
                        <asp:ListItem Selected="True">Select</asp:ListItem>
                        <asp:ListItem>Yes</asp:ListItem>
                        <asp:ListItem>No</asp:ListItem>
                    </asp:DropDownList>
                   </td>
                   <td style="width: 376px">
                    <asp:DropDownList ID="ddInjuryContext2" runat="server" Height="30px" Width="300px" CssClass="form-control form-rounded">
                    </asp:DropDownList>
                   </td>
                   <td>&nbsp;</td>
               </tr>
               <tr id="selfdirected5" runat="server">
                   <td style="width: 366px">
                       &nbsp;</td>
                   <td style="width: 376px">
                       <asp:TextBox ID="OtherInjuryContextSelf" runat="server" placeholder="Specify" CssClass="form-control form-rounded" Visible="False" Width="300px"></asp:TextBox>
                   </td>
                   <td>&nbsp;</td>
               </tr>
               <tr id="selfdirected6" runat="server">
                   <td style="width: 366px">
                       &nbsp;</td>
                   <td style="width: 376px">
                       &nbsp;</td>
                   <td>&nbsp;</td>
               </tr>
               <tr style="color: #0033CC">
                   <td style="width: 366px; height: 20px; "><b class="tdFont">Use of safety Equipment</b></td>
                   <td style="width: 376px; height: 20px; "><b class="tdFont">Injury Memo</b></td>
                   <td style="height: 20px; "><b class="tdFont">Injury cause code (ICD 10)</b></td>
               </tr>
               <tr>
                   <td style="width: 366px">
                    <asp:DropDownList ID="ddInjurySafetyEquip" runat="server" Height="30px" Width="300px" CssClass="form-control form-rounded" AutoPostBack="True" OnSelectedIndexChanged="ddInjurySafetyEquip_SelectedIndexChanged">
                    </asp:DropDownList>
                   </td>
                   <td style="width: 376px">
                    <asp:TextBox ID="injuryMemo" runat="server" Height="80px" Width="310px" CssClass="form-control form-rounded" TextMode="MultiLine"></asp:TextBox>
                   </td>
                   <td>
                    <asp:TextBox ID="injuryICD" runat="server" Height="30px" Width="300px" CssClass="form-control form-rounded"></asp:TextBox>
                   </td>
               </tr>
               <tr>
                   <td style="width: 366px; height: 20px;">
                    <asp:TextBox ID="otherSafetyEquip" runat="server" Height="30px" Width="300px" placeholder="Specify" CssClass="form-control form-rounded" Visible="False"></asp:TextBox>
                   </td>
                   <td style="width: 376px; height: 20px;"></td>
                   <td style="height: 20px"></td>
               </tr>
               <tr>
                   <td style="width: 366px; height: 20px;">
                       &nbsp;</td>
                   <td style="width: 376px; height: 20px;"></td>
                   <td style="height: 20px"></td>
               </tr>
               <tr>
                   <td style="width: 366px">&nbsp;</td>
                   <td style="width: 376px">&nbsp;</td>
                   <td>&nbsp;</td>
               </tr>
           </table>
                        </asp:Panel>
                  <div class="container-fluid">
                                    <div class="row">
                                        <div class="col-lg-12" style="top: 0px; left: 2px; margin-top: 0px;">
                                            <div class="col-lg-4"></div>
                                            <div class="col-lg-4">
                                                <div class="col-lg-6" style="text-align: center;">
                                                    <asp:Button ID="resetInjury" runat="server" Text="Reset" class="btn-danger" Height="35px" Width="75px" OnClick="resetInjuryBtn" />
                                                </div>
                                                <div class="col-lg-6" style="text-align: center;">
                                                    <asp:Button ID="SaveInjury" runat="server" Text="Save &amp; Continue" class="btn-primary" Height="35px" Width="119px" OnClick="SaveInjuryData" ValidationGroup="injurypage" />
                                                </div>
                                            </div>
                                            <div class="col-lg-4"></div>
                                        </div>
                                    </div>
                                </div>
                </div>
<!-- /.Prehospital Page-->
                <div id="prehospital" role="tabpanel" class="tab-pane active ">
                    <br />
                    <asp:Panel ID="pprehospital" runat="server">
                    <table class="nav-justified">
                        <tr style="color: #0033CC">
                            <td style="font-weight: bold" class="auto-style51">Care received/ Field Intervention:<br />
                            </td>
                            <td style="font-weight: bold" class="auto-style44">&nbsp;</td>
                            <td width="40%">
                                <b class="tdFont">Time elapsed from Injury to First response:</b></td>
                            
                        </tr>
                        <tr style="color: #0033CC">
                            <td style="font-weight: bold" class="auto-style52">
                                <asp:CheckBoxList ID="ddCareRecieved" runat="server" Font-Size="Small" RepeatColumns="2" CssClass="chktest" Height="28px" Width="500px" OnSelectedIndexChanged="ddCareRecieved_SelectedIndexChanged" AutoPostBack="True" >
                                </asp:CheckBoxList>
                            </td>
                            <td style="font-weight: bold" class="auto-style44">&nbsp;</td>
                            <td width="40%">
                                <table width="100%">
                                    <tr>
                                        <td class="tdFont">&nbsp;</td>
                                        <td class="auto-style60">
                                            <asp:TextBox ID="preInjuryTime" runat="server" CssClass="form-control form-rounded" Height="25px" Width="80px"></asp:TextBox>
                                        </td>
                                        <td>
                                            <asp:DropDownList ID="ddPreInjuryTime" runat="server">
                                                <asp:ListItem>Months</asp:ListItem>
                                                <asp:ListItem>Days</asp:ListItem>
                                                <asp:ListItem>Hours</asp:ListItem>
                                            </asp:DropDownList>
                                        </td>
                                    </tr>
                                    <tr>
                                        <td class="tdFont">&nbsp;</td>
                                        <td class="auto-style61">
                                            <asp:RequiredFieldValidator ID="RequiredFieldValidator12" runat="server" ControlToValidate="injuryTime" ErrorMessage="Field  can't be empty" Font-Size="XX-Small" ForeColor="Red" ValidationGroup="prepage"></asp:RequiredFieldValidator>
                                        </td>
                                        <td>
                                            &nbsp;</td>
                                    </tr>
                                    <tr>
                                        <td class="tdFont">&nbsp;</td>
                                        <td class="auto-style61">
                                            &nbsp;</td>
                                        <td>
                                            &nbsp;</td>
                                    </tr>
                                </table>
                            </td>
                            
                        </tr>
                        <tr>
                            <td class="auto-style52">
                                <asp:TextBox ID="otherCareRecieved" runat="server" Height="30px" placeholder="Specify" Width="300px" Visible="False" CssClass="form-control form-rounded"></asp:TextBox>
                            </td>
                            <td class="auto-style45">
                                &nbsp;</td>
                            <td class="auto-style43">
                                &nbsp;</td>
                            <td>
                                &nbsp;</td>
                        </tr>
                        <tr>
                            <td class="auto-style52">
                                <br />
                                <br />
                            </td>
                            <td class="auto-style45">
                                &nbsp;</td>
                            <td class="auto-style43">
                                
                            <td>
                                &nbsp;</td>
                        </tr>
                        <tr>
                            <td class="auto-style52">&nbsp;
                                &nbsp;</td>
                            
                            <td class="auto-style45">&nbsp;</td>
                            <td class="auto-style43">&nbsp;</td>
                            <td>
                                &nbsp;</td>
                        </tr>
                        <tr>
                            <td class="auto-style46"><b class="tdFont">First Responder</b></td>
                            <td class="auto-style47"></td>
                            <td class="auto-style30">Response area Type</td>
                            <td class="auto-style48"></td>
                        </tr>
                        <tr>
                            <td class="auto-style52">
                                <asp:DropDownList ID="ddFirstResponder" runat="server" Height="30px" Width="250px" CssClass="form-control form-rounded" OnSelectedIndexChanged="ddFirstResponder_SelectedIndexChanged" AutoPostBack="True">
                                </asp:DropDownList>
                            </td>
                            <td class="auto-style45">&nbsp;</td>
                            <td class="auto-style43">
                                <asp:DropDownList ID="ddResponseArea" runat="server" Height="30px" Width="250px" CssClass="form-control form-rounded">
                                    <asp:ListItem Selected="True">Select</asp:ListItem>
                                    <asp:ListItem Value="1">Urban</asp:ListItem>
                                    <asp:ListItem Value="2">Suburban</asp:ListItem>
                                    <asp:ListItem Value="3">Rural</asp:ListItem>
                                    <asp:ListItem Value="4">Wilderness</asp:ListItem>
                                </asp:DropDownList>
                            </td>
                            <td>&nbsp;</td>
                        </tr>
                        <tr>
                            <td class="auto-style52">&nbsp;</td>
                            <td class="auto-style45">&nbsp;</td>
                            <td class="auto-style43">&nbsp;</td>
                            <td>&nbsp;</td>
                        </tr>
                        <tr>
                            <td class="auto-style52">
                                <asp:TextBox ID="firstResponder" runat="server" Height="30px" placeholder="Specify" Width="300px" Visible="False" CssClass="form-control form-rounded"></asp:TextBox>
                            </td>
                            <td class="auto-style45">&nbsp;</td>
                            <td class="auto-style43">&nbsp;</td>
                            <td>&nbsp;</td>
                        </tr>
                        <tr style="color: #0033CC">
                            <td class="auto-style51" style="font-weight: bold">
                                &nbsp;</td>
                            <td class="auto-style44" style="font-weight: bold">&nbsp;</td>
                            <td class="auto-style43">&nbsp;</td>
                            <td>&nbsp;</td>
                        </tr>
                        <tr>
                            <td class="auto-style52"><b class="tdFont">Mode of Transport</b></td>
                            <td class="auto-style45">&nbsp;</td>
                            <td class="auto-style43"><b class="tdFont">Crew Member Level</b></td>
                            <td>
                                &nbsp;</td>
                        </tr>
                        <tr>
                            <td class="auto-style52">
                                <asp:DropDownList ID="ddPreModeOfTransport" runat="server" Height="30px" Width="300px" CssClass="form-control form-rounded" OnSelectedIndexChanged="ddPreModeOfTransport_SelectedIndexChanged" AutoPostBack="True">
                                </asp:DropDownList>
                            </td>
                            <td class="auto-style45">&nbsp;</td>
                            <td class="auto-style43">
                                <asp:DropDownList ID="ddCrewMemberLevel" runat="server" Height="30px" Width="300px" CssClass="form-control form-rounded" OnSelectedIndexChanged="ddCrewMemberLevel_SelectedIndexChanged" AutoPostBack="True">
                                    <asp:ListItem Selected="True">Select</asp:ListItem>
                                    <asp:ListItem Value="1">Untrained</asp:ListItem>
                                    <asp:ListItem Value="2">Trained</asp:ListItem>
                                    <asp:ListItem>Unknown</asp:ListItem>
                                </asp:DropDownList>
                            </td>
                            <td>
                                &nbsp;</td>
                        </tr>
                        <tr>
                            <td class="auto-style52">
                                <asp:TextBox ID="preOtherModeOfTransport" runat="server" Height="30px" placeholder="Specify" Width="300px" Visible="False" CssClass="form-control form-rounded"></asp:TextBox>
                            </td>
                            <td class="auto-style45">&nbsp;</td>
                            <td class="auto-style43">&nbsp;</td>
                            <td>
                                &nbsp;</td>
                        </tr>
                        <tr>
                            <td class="auto-style52">&nbsp;</td>
                            <td class="auto-style45">&nbsp;</td>
                            <td class="auto-style43">
                                <asp:TextBox ID="crewMemberTrained" runat="server" Height="30px" placeholder="Specify type of training" Width="300px" Visible="False" CssClass="form-control form-rounded"></asp:TextBox>
                            </td>
                            <td>
                                &nbsp;</td>
                        </tr>
                        <tr>
                            <td class="auto-style52">&nbsp;</td>
                            <td class="auto-style45">&nbsp;</td>
                            <td class="auto-style43">&nbsp;</td>
                            <td>&nbsp;</td>
                        </tr>
                    </table>
                        </asp:Panel>
                    <div class="container-fluid">
                                    <div class="row">
                                        <div class="col-lg-12" style="top: 0px; left: 2px; margin-top: 0px;">
                                            <div class="col-lg-4"></div>
                                            <div class="col-lg-4">
                                                <div class="col-lg-6" style="text-align: center;">
                                                    <asp:Button ID="resetPrehospitalBtn" runat="server" Text="Reset" class="btn-danger" Height="35px" Width="75px" OnClick="resetPrehospitalBtn_Click" />
                                                </div>
                                                <div class="col-lg-6" style="text-align: center;">
                                                    <asp:Button ID="PrehospitalSave" runat="server" Text="Save &amp; Continue" class="btn-primary" Height="35px" Width="119px" OnClick="SavePrehospital_Click" ValidationGroup="prepage" />
                                                </div>
                                            </div>
                                            <div class="col-lg-4"></div>
                                        </div>
                                    </div>
                                </div>
                </div>
<!-- /.Transfer Data Page-->
                            <div id="transfer" role="tabpanel" class="tab-pane active">
                                
                                <br />
                                <asp:Panel ID="ptransfer" runat="server">
                                <table class="nav-justified">
                                    <tr style="color: #0033CC">
                                        <td class="auto-style23"><b class="tdFont">Transfer in?</b></td>

                                    </tr>
                                    <tr style="color: #0033CC">
                                        <td class="auto-style23">&nbsp;</td>

                                    </tr>
                                    <tr>
                                        <td class="auto-style23">
                                            <asp:DropDownList ID="ddTransferIn" runat="server" Height="30px" Width="100px" CssClass="form-control form-rounded" OnSelectedIndexChanged="ddTransferIn_SelectedIndexChanged" AutoPostBack="True">
                                                <asp:ListItem Selected="True">Select</asp:ListItem>
                                                <asp:ListItem>Yes</asp:ListItem>
                                                <asp:ListItem>No</asp:ListItem>
                                            </asp:DropDownList>
                                        </td>
                                    </tr>
                                    <tr>
                                        <td class="auto-style23">
                                            <asp:RequiredFieldValidator ID="RequiredFieldValidator13" runat="server" ControlToValidate="ddTransferIn" ErrorMessage="Field  can't be empty" Font-Size="XX-Small" ForeColor="Red" ValidationGroup="transferpage"></asp:RequiredFieldValidator>
                                        </td>
                                    </tr>
                                    <tr id="transferdata" runat="server">
                                        <td>
                                            <table>
                                                <tr>
                                                    <td style="width: 366px"><b class="tdFont">Referring Facility</b></td>
                                                    <td colspan="2"><b class="tdFont">Reason for referral </b></td>
                                                </tr>
                                                <tr>

                                                    <td style="width: 366px">
                                                        <asp:TextBox ID="transferReferringFacility" runat="server" Height="30px" Width="300px" CssClass="form-control form-rounded"></asp:TextBox>
                                                        <br />
                                                        <asp:RequiredFieldValidator ID="RequiredFieldValidator14" runat="server" ControlToValidate="transferReferringFacility" ErrorMessage="Field  can't be empty" Font-Size="XX-Small" ForeColor="Red" ValidationGroup="transferpage"></asp:RequiredFieldValidator>
                                                    </td>
                                                    <td colspan="3">
                                                        <asp:TextBox ID="transferReferralReason" runat="server" Height="80px" Width="400px" CssClass="form-control form-rounded" TextMode="MultiLine"></asp:TextBox>
                                                    </td>
                                                </tr>
                                                <tr>
                                                    <td colspan="2" class="auto-style58">&nbsp;</td>
                                                    <td class="auto-style53">&nbsp;</td>
                                                    <td>&nbsp;</td>
                                                </tr>
                                                <tr style="color: #0033CC">
                                                    <td class="tdFont">Referring Hospital Arriving Date</td>
                                                    <td class="tdFont">Arrival Time</td>
                                                    <td class="tdFont">&nbsp;</td>
                                                </tr>
                                                <tr>
                                                    <td class="auto-style58">
                                                        <asp:TextBox ID="transferArrivalDate" runat="server" Height="30px" Width="150px" CssClass="form-control form-rounded"></asp:TextBox>
                                                        <br />
                                                        <asp:RequiredFieldValidator ID="RequiredFieldValidator15" runat="server" ControlToValidate="transferArrivalDate" ErrorMessage="Field  can't be empty" Font-Size="XX-Small" ForeColor="Red" ValidationGroup="transferpage"></asp:RequiredFieldValidator>
                                                    </td>

                                                    <td class="auto-style53">
                                                        <asp:TextBox ID="transferArrivalTime" runat="server" Height="30px" Width="100px" CssClass="form-control form-rounded"></asp:TextBox>
                                                        <asp:RequiredFieldValidator ID="RequiredFieldValidator16" runat="server" ControlToValidate="transferArrivalTime" ErrorMessage="Field  can't be empty" Font-Size="XX-Small" ForeColor="Red" ValidationGroup="transferpage"></asp:RequiredFieldValidator>
                                                    </td>
                                                    <td>&nbsp;</td>
                                                </tr>
                                                <tr>
                                                    <td colspan="2" class="auto-style58">&nbsp;</td>
                                                    <td class="auto-style53">&nbsp;</td>
                                                    <td>&nbsp;</td>
                                                </tr>
                                                <tr>
                                                    <td class="tdFont">Referring Hospital Discharge Date</td>
                                                    <td class="auto-style54">Departed Time</td>
                                                    <td class="tdFont">&nbsp;</td>
                                                </tr>
                                                <tr>
                                                    <td class="auto-style58">
                                                        <asp:TextBox ID="transferDepartedDate" runat="server" Height="30px" Width="150px" CssClass="form-control form-rounded"></asp:TextBox>
                                                        <br />
                                                        <asp:RequiredFieldValidator ID="RequiredFieldValidator17" runat="server" ControlToValidate="transferDepartedDate" ErrorMessage="Field  can't be empty" Font-Size="XX-Small" ForeColor="Red" ValidationGroup="transferpage"></asp:RequiredFieldValidator>
                                                    </td>
                                                    <td class="auto-style53">
                                                        <asp:TextBox ID="transferDepartedTime" runat="server" Height="30px" Width="100px" CssClass="form-control form-rounded"></asp:TextBox>
                                                        <asp:RequiredFieldValidator ID="RequiredFieldValidator18" runat="server" ControlToValidate="transferDepartedTime" ErrorMessage="Field  can't be empty" Font-Size="XX-Small" ForeColor="Red" ValidationGroup="transferpage"></asp:RequiredFieldValidator>
                                                    </td>
                                                    <td>&nbsp;</td>
                                                </tr>
                                                <tr>
                                                    <td colspan="2" class="auto-style58">&nbsp;</td>
                                                    <td class="auto-style53">&nbsp;</td>
                                                    <td>&nbsp;</td>
                                                </tr>
                                                <tr>
                                                    <td colspan="2" class="auto-style58">
                                                        <b class="tdFont">Mode of Transfer</b></td>
                                                    <td class="auto-style53">&nbsp;</td>
                                                    <td>&nbsp;</td>
                                                </tr>
                                                <tr>
                                                    <td colspan="2" class="auto-style58">
                                                        <asp:DropDownList ID="ddTransferModeOfTransport" runat="server" Height="30px" Width="300px" CssClass="form-control form-rounded" AutoPostBack="True" OnSelectedIndexChanged="ddTransferModeOfTransport_SelectedIndexChanged">
                                                        </asp:DropDownList>
                                                    </td>
                                                    <td class="auto-style53">&nbsp;</td>
                                                    <td>&nbsp;</td>
                                                </tr>
                                                <tr>
                                                    <td colspan="2" class="auto-style58">
                                                        <asp:TextBox ID="transferOtherModeOfTransport" runat="server" Height="30px" Width="300px" placeholder="Specify" CssClass="form-control form-rounded" Visible="False"></asp:TextBox>
                                                    </td>
                                                    <td class="auto-style53">&nbsp;</td>
                                                    <td>&nbsp;</td>
                                                </tr>
                                                <tr>
                                                    <td colspan="2" class="auto-style58">&nbsp;</td>
                                                    <td class="auto-style53">&nbsp;</td>
                                                    <td>&nbsp;</td>
                                                </tr>


                                            </table>
                                        </td>
                                    </tr>
                                </table>
                                        <table id ="transferdata2" runat="server">
                                                 <tr>
                                                    <td style="color: #FF0000;" ><strong>Vitals at-</strong></td>
                                                    <td >
                                                        <asp:TextBox ID="transferVitalsAtDate" runat="server" Height="30px" Width="150px" CssClass="form-control form-rounded"></asp:TextBox>
                                                     </td>
                                                    <td>
                                                        <asp:TextBox ID="transferVitalsAtTime" runat="server" Height="30px" Width="100px" CssClass="form-control form-rounded"></asp:TextBox>
                                                     </td>
                                                     <td></td>
                                                     <td></td>
                                                     <td></td>
                                                </tr>
                                                <tr>
                                                    <td>&nbsp;</td>
                                                    <td >
                                                        <asp:RequiredFieldValidator ID="RequiredFieldValidator19" runat="server" ControlToValidate="transferVitalsAtDate" ErrorMessage="Field  can't be empty" Font-Size="XX-Small" ForeColor="Red" ValidationGroup="transferpage"></asp:RequiredFieldValidator>
                                                    </td>
                                                    <td >
                                                        <asp:RequiredFieldValidator ID="RequiredFieldValidator20" runat="server" ControlToValidate="transferVitalsAtTime" ErrorMessage="Field  can't be empty" Font-Size="XX-Small" ForeColor="Red" ValidationGroup="transferpage"></asp:RequiredFieldValidator>
                                                    </td>
                                                    <td></td>
                                                     <td></td>
                                                     <td></td>
                                                </tr>
                                            <tr>
                                                    <td><b class="tdFont">SBP</b></td>
                                                    <td ><b class="tdFont">Pulse Rate</b></td>
                                                    <td class="tdFont" >Respiration Rate</b></td>
                                                    <td class="tdFont">Temperature</td>
                                                     <td></td>
                                                     <td></td>
                                                </tr>
                                            <tr>
                                                    <td>
                                                        <asp:TextBox ID="transferSBP" runat="server" Height="30px" Width="80px" CssClass="form-control form-rounded"></asp:TextBox>
                                                        <br />
                                                        <asp:RegularExpressionValidator ID="RegularExpressionValidator9" runat="server" ControlToValidate="transferSBP" ErrorMessage="Enter Numeric Value" Font-Size="XX-Small" ForeColor="Red" ValidationExpression="\d+" ValidationGroup="transferpage"></asp:RegularExpressionValidator>
                                                    </td>
                                                    <td >
                                                        <asp:TextBox ID="transferPulseRate" runat="server" Height="30px" Width="80px" CssClass="form-control form-rounded"></asp:TextBox>
                                                        <asp:RegularExpressionValidator ID="RegularExpressionValidator10" runat="server" ControlToValidate="transferPulseRate" ErrorMessage="Enter Numeric Value" Font-Size="XX-Small" ForeColor="Red" ValidationExpression="\d+" ValidationGroup="transferpage"></asp:RegularExpressionValidator>
                                                    </td>
                                                    <td >
                                                        <asp:TextBox ID="transferRespirationRate" runat="server" Height="30px" Width="80px" CssClass="form-control form-rounded"></asp:TextBox>
                                                        <asp:RegularExpressionValidator ID="RegularExpressionValidator11" runat="server" ControlToValidate="transferRespirationRate" ErrorMessage="Enter Numeric Value" Font-Size="XX-Small" ForeColor="Red" ValidationExpression="\d+" ValidationGroup="transferpage"></asp:RegularExpressionValidator>
                                                    </td>
                                                    <td><table><tr>
                                                <td><asp:TextBox ID="transferTemperature" runat="server" Height="30px" Width="100px" CssClass="form-control form-rounded"></asp:TextBox>
                                                    <asp:RegularExpressionValidator ID="RegularExpressionValidator12" runat="server" ControlToValidate="transferTemperature" ErrorMessage="Enter Numeric Value" Font-Size="XX-Small" ForeColor="Red" ValidationExpression="\d+" ValidationGroup="transferpage"></asp:RegularExpressionValidator>
                                            </td>
                                                <td><asp:DropDownList ID="ddTransferTemp" runat="server" CssClass="form-control form-rounded" Height="30px">
                                                    <asp:ListItem>Celsius</asp:ListItem>
                                                    <asp:ListItem>Fahrenheit</asp:ListItem>
                                                    </asp:DropDownList></td>
                                                   </tr></table></td>
                                                     <td></td>
                                                     <td></td>
                                                </tr>
                                            <tr>
                                                    <td>&nbsp;</td>
                                                    <td ></td>
                                                    <td ></td>
                                                    <td></td>
                                                     <td></td>
                                                     <td></td>
                                                </tr>
                                            <tr>
                                                    <td><strong style="color: #FF0000;">GCS at</strong></td>
                                                    <td >
                                                        <asp:TextBox ID="transferGCSAtDate" runat="server" Height="30px" Width="150px" CssClass="form-control form-rounded"></asp:TextBox>
                                                    </td>
                                                    <td >
                                                        <asp:TextBox ID="transferGCSAtTime" runat="server" Height="30px" Width="100px" CssClass="form-control form-rounded"></asp:TextBox>
                                                    </td>
                                                    <td></td>
                                                     <td></td>
                                                     <td></td>
                                                </tr>
                                            <tr>
                                                    <td>&nbsp;</td>
                                                    <td >
                                                        <asp:RequiredFieldValidator ID="RequiredFieldValidator21" runat="server" ControlToValidate="transferGCSAtDate" ErrorMessage="Field  can't be empty" Font-Size="XX-Small" ForeColor="Red" ValidationGroup="transferpage"></asp:RequiredFieldValidator>
                                                    </td>
                                                    <td >
                                                        <asp:RequiredFieldValidator ID="RequiredFieldValidator22" runat="server" ControlToValidate="transferGCSAtTime" ErrorMessage="Field  can't be empty" Font-Size="XX-Small" ForeColor="Red" ValidationGroup="transferpage"></asp:RequiredFieldValidator>
                                                    </td>
                                                    <td></td>
                                                     <td></td>
                                                     <td></td>
                                                </tr>
                                            <tr>
                                                    <td><b class="tdFont">EYE</b></td>
                                                    <td ><b class="tdFont">VERBAL</b></td>
                                                    <td ><b class="tdFont">MOTOR</b></td>
                                                    <td><b class="tdFont">Total</b></td>
                                                     <td></td>
                                                     <td></td>
                                                </tr>
                                            <tr>
                                                    <td>
                                                                    <asp:DropDownList ID="ddTransferEye" runat="server" CssClass="form-control form-rounded"  Width="150px" AutoPostBack="True" OnSelectedIndexChanged="ddTransferMotor_SelectedIndexChanged">
                                                                        <asp:ListItem Value="4">4 Spontaneous</asp:ListItem>
                                                                        <asp:ListItem Value="3">3 To Voice</asp:ListItem>
                                                                        <asp:ListItem Value="2">2 To Pain</asp:ListItem>
                                                                        <asp:ListItem Value="1">1 None</asp:ListItem>
                                                                        <asp:ListItem Value="1">Obstruction to Eye</asp:ListItem>
                                                                    </asp:DropDownList>
                                                                </td>
                                                    <td >
                                                                    <asp:DropDownList ID="ddTransferVerbal" runat="server" CssClass="form-control form-rounded" Width="150px" AutoPostBack="True" OnSelectedIndexChanged="ddTransferMotor_SelectedIndexChanged" >
                                                                        <asp:ListItem Value="5">5 Oriented</asp:ListItem>
                                                                        <asp:ListItem Value="4">4 Confused</asp:ListItem>
                                                                        <asp:ListItem Value="3">3 Inappropriate words</asp:ListItem>
                                                                        <asp:ListItem Value="2">2 Incomprehensible</asp:ListItem>
                                                                        <asp:ListItem Value="1">1 None</asp:ListItem>
                                                                        <asp:ListItem Value="1">Intubated</asp:ListItem>
                                                                    </asp:DropDownList>
                                                                </td>
                                                    <td >
                                                                    <asp:DropDownList ID="ddTransferMotor" runat="server" CssClass="form-control form-rounded" OnSelectedIndexChanged="ddTransferMotor_SelectedIndexChanged" Width="200px" AutoPostBack="True">
                                                                        <asp:ListItem Value="6">6 Obeys Command</asp:ListItem>
                                                                        <asp:ListItem Value="5">5 Localizes pain</asp:ListItem>
                                                                        <asp:ListItem Value="4">4 Withdraws to pain</asp:ListItem>
                                                                        <asp:ListItem Value="3">3 Abnormal Flexon</asp:ListItem>
                                                                        <asp:ListItem Value="2">2 Abnormal Extension</asp:ListItem>
                                                                        <asp:ListItem Value="1">1 None</asp:ListItem>
                                                                        <asp:ListItem Value="1">Pharmacologically paralysed</asp:ListItem>
                                                                    </asp:DropDownList>
                                                                </td>
                                                    <td>
                                                                    <asp:TextBox ID="transferGCSTotal" runat="server" Height="30px" Width="200px" CssClass="form-control form-rounded"></asp:TextBox>
                                                                </td>
                                                     <td>&nbsp;</td>
                                                     <td>&nbsp;</td>
                                                </tr>
                                                <tr >
                                                    <td >&nbsp;</td>
                                                    <td >&nbsp;</td>
                                                    <td>&nbsp;</td>
                                                </tr>
                                                <tr>
                                                    <td colspan="2" class="auto-style59">
                                                        &nbsp;</td>
                                                    <td class="auto-style53">
                                                        &nbsp;</td>
                                                    <td>
                                                        &nbsp;</td>
                                                </tr>
                                                <tr>
                                                    <td colspan="4" style="color: #0033CC"><strong class="tdFont">Referring facility intervention: (Investigation / fluid &amp; blood transfusion/ surgical procedure):</strong></td>
                                                </tr>
                                                <tr>
                                                    <td colspan="4">
                                                        <asp:TextBox ID="transferIntervention" runat="server" Height="60px" Width="645px" CssClass="form-control form-rounded" TextMode="MultiLine"></asp:TextBox>
                                                    </td>
                                                </tr>
                                                <tr>
                                                    <td >&nbsp;</td>
                                                    <td >&nbsp;</td>
                                                    <td>&nbsp;</td>
                                                </tr>
                                                </table>
                                <br />
                                </asp:Panel>
                                <div class="container-fluid">
                                    <div class="row">
                                        <div class="col-lg-12" style="top: 0px; left: 2px; margin-top: 0px;">
                                            <div class="col-lg-4"></div>
                                            <div class="col-lg-4">
                                                <div class="col-lg-6" style="text-align: center;">
                                                    <asp:Button ID="resetTransferBtn" runat="server" Text="Reset" class="btn-danger" Height="35px" Width="75px" OnClick="resetTransferBtn_Click" />
                                                </div>
                                                <div class="col-lg-6" style="text-align: center;">
                                                    <asp:Button ID="TransferSave" runat="server" Text="Save &amp; Continue" class="btn-primary" Height="35px" Width="119px" OnClick="SaveTransfer" ValidationGroup="transferpage" />
                                                </div>
                                            </div>
                                            <div class="col-lg-4"></div>
                                        </div>
                                    </div>
                                </div>
                            </div>
<!-- /.Emergency Data Page-->
                            <div id="emergency" role="tabpanel" class="tab-pane active">
                                <h3 style="text-align:center">&nbsp;&nbsp;</h3>
                                <asp:Panel ID="pemergency" runat="server">
                                <table class="nav-justified">
                                    <tr>
                                        <td style="width: 368px; height: 20px;" class="tdFont">Direct Admit</td>
                                        <td style="width: 352px; height: 20px;" class="tdFont">Readmission</td>
                                        <td style="height: 20px" class="tdFont">Date and Time entered ED</td>
                                    </tr>
                                    <tr>
                                        <td style="width: 368px">
                                            <asp:DropDownList ID="ddEmergencyDirectAdmit" runat="server" Height="30px" Width="100px" CssClass="form-control form-rounded" >
                                                <asp:ListItem>Yes</asp:ListItem>
                                                <asp:ListItem>No</asp:ListItem>
                                            </asp:DropDownList>
                                        </td>
                                        <td style="width: 352px">
                                            <asp:DropDownList ID="ddEmergencyReadmission" runat="server" Height="30px" Width="100px" CssClass="form-control form-rounded" >
                                                <asp:ListItem>Yes</asp:ListItem>
                                                <asp:ListItem>No</asp:ListItem>
                                            </asp:DropDownList>
                                        </td>
                                        <td>
                                            <table><tr>
                                                <td><asp:TextBox ID="emergencyEDDate" runat="server" Height="30px" Width="150px" CssClass="form-control form-rounded"></asp:TextBox></td>
                                                <td>&nbsp;</td>
                                                <td><asp:TextBox ID="emergencyEDTime" runat="server" Height="30px" Width="100px" CssClass="form-control form-rounded"></asp:TextBox></td>
                                                   </tr></table>
                                            
                                            
                                        </td>
                                    </tr>
                                    <tr>
                                        <td style="width: 368px">&nbsp;</td>
                                        <td style="width: 352px">&nbsp;</td>
                                        <td>&nbsp;</td>
                                    </tr>
                                    <tr>
                                        <td style="width: 368px" class="tdFont">Triage level</td>
                                        <td style="width: 352px" class="tdFont">Signs of Life</td>
                                        <td class="tdFont">ED Death</td>
                                    </tr>
                                    <tr>
                                        <td style="width: 368px">
                                            <asp:TextBox ID="emergencyTriageLevel" runat="server" Height="30px" Width="150px" CssClass="form-control form-rounded"></asp:TextBox>
                                        </td>
                                        <td style="width: 352px">
                                            <asp:DropDownList ID="ddEmergencySignOfLife" runat="server" Height="30px" Width="200px" CssClass="form-control form-rounded">
                                                <asp:ListItem>Arrived with signs of life</asp:ListItem>
                                                <asp:ListItem>Arrived with no signs of life</asp:ListItem>
                                                <asp:ListItem>N/A</asp:ListItem>
                                                <asp:ListItem>Unknown</asp:ListItem>
                                            </asp:DropDownList>
                                        </td>
                                        <td>
                                            <asp:DropDownList ID="ddEmergencyEDDeath" runat="server" Height="30px" Width="200px" CssClass="form-control form-rounded">
                                                <asp:ListItem>N/A</asp:ListItem>
                                                <asp:ListItem>Dead on arrival</asp:ListItem>
                                                <asp:ListItem>Dead on failed resuscitation atempt&lt;15 min</asp:ListItem>
                                                <asp:ListItem>Dead on failed resuscitation atempt&gt;15 min</asp:ListItem>
                                                <asp:ListItem>Dead on Ed</asp:ListItem>
                                            </asp:DropDownList>
                                        </td>
                                    </tr>
                                    <tr>
                                        <td style="width: 368px">&nbsp;</td>
                                        <td style="width: 352px">&nbsp;</td>
                                        <td>&nbsp;</td>
                                    </tr>
                                    <tr>
                                        <td class="auto-style28">Trauma Team activated</td>
                                        <td id="ttactivation0" runat="server" class="auto-style29">Date and Time</td>
                                        <td id="ttactivation1" runat="server" class="auto-style30">Response Level</td>
                                    </tr>
                                    <tr>
                                        <td class="auto-style25">
                                            <asp:DropDownList ID="ddEmergencyTraumaTeam" runat="server" Height="30px" Width="100px" CssClass="form-control form-rounded" OnSelectedIndexChanged="ddEmergencyTraumaTeam_SelectedIndexChanged" AutoPostBack="True">
                                                <asp:ListItem>N/A</asp:ListItem>
                                                <asp:ListItem>Yes </asp:ListItem>
                                                <asp:ListItem>No</asp:ListItem>
                                            </asp:DropDownList>
                                        </td>
                                        <td id="ttactivation2" runat="server" class="auto-style26">
                                            <table>
                                                <tr>
                                                    <td>
                                                        <asp:TextBox ID="emergencyTTDate" runat="server" CssClass="form-control form-rounded" Height="30px" Width="150px"></asp:TextBox>
                                                    </td>
                                                    <td>&nbsp;</td>
                                                    <td>
                                                        <asp:TextBox ID="emergencyTTTime" runat="server" CssClass="form-control form-rounded" Height="30px" Width="100px"></asp:TextBox>
                                                    </td>
                                                </tr>
                                            </table>
                                        </td>
                                        <td id="ttactivation3" runat="server" class="auto-style27">
                                            <asp:DropDownList ID="ddTraumaTeamResponseLevel" runat="server" Height="30px" Width="200px" CssClass="form-control form-rounded">
                                                <asp:ListItem>Full Trauma Response</asp:ListItem>
                                                <asp:ListItem>Modified Trauma Response</asp:ListItem>
                                                <asp:ListItem>Trauma Consult</asp:ListItem>
                                                <asp:ListItem>None</asp:ListItem>
                                            </asp:DropDownList>
                                        </td>
                                    </tr>
                                    <tr>
                                        <td style="width: 368px; height: 21px;"></td>
                                        <td style="width: 352px; height: 21px;"></td>
                                        <td style="height: 21px"></td>
                                    </tr>
                                    <tr>
                                        <td style="width: 368px">&nbsp;</td>
                                        <td style="width: 352px">&nbsp;</td>
                                        <td>&nbsp;</td>
                                    </tr>
                                    <tr  id="specialities0" runat="server">
                                        <td style="width: 368px"><b style=font-size:small>Specialities involved</b> :</td>
                                        <td style="width: 352px">&nbsp;</td>
                                        <td>&nbsp;</td>
                                    </tr>
                                    
                                    <tr  id="specialities1" runat="server">
                                        <td style="width: 368px">&nbsp;</td>
                                        <td style="width: 352px">&nbsp;</td>
                                        <td>&nbsp;</td>
                                    </tr>
                                    
                                    <tr id="specialities2" runat="server">
                                        <td style="width: 368px" class="tdFont">Speciality</td>
                                        <td style="width: 352px" class="tdFont">Time called</td>
                                        <td class="tdFont">Available for care</td>
                                    </tr>
                                    <tr  id="specialities3" runat="server">
                                        <td class="auto-style25">
                                            <asp:DropDownList ID="ddEmergencySpeciality" runat="server" Height="34px" Width="200px" CssClass="form-control form-rounded">
                                                <asp:ListItem>ED physcian</asp:ListItem>
                                                <asp:ListItem>Trauma Surgeon</asp:ListItem>
                                                <asp:ListItem>General Surgeon</asp:ListItem>
                                                <asp:ListItem>Anesthesiologist</asp:ListItem>
                                                <asp:ListItem>Othropedic Surgeon</asp:ListItem>
                                                <asp:ListItem>Neuro Surgeon</asp:ListItem>
                                                <asp:ListItem>Thoraric Surgeon</asp:ListItem>
                                                <asp:ListItem>Plastic Surgeon</asp:ListItem>
                                                <asp:ListItem>Radiologist</asp:ListItem>
                                                <asp:ListItem>ENT/Maxillofacial</asp:ListItem>
                                                <asp:ListItem>Obstretics</asp:ListItem>
                                                <asp:ListItem>Paediatiric Surgeon</asp:ListItem>
                                                <asp:ListItem>Consulting Surgeon</asp:ListItem>
                                                <asp:ListItem>Other</asp:ListItem>
                                            </asp:DropDownList>
                                        </td>
                                        <td class="auto-style26">
                                            <asp:TextBox ID="emergencySpecialityTime" runat="server" Height="30px" Width="100px" CssClass="form-control form-rounded"></asp:TextBox>
                                        </td>
                                        <td class="auto-style27">
                                            <asp:TextBox ID="emergencySpecialityTimeAvailable" runat="server" Height="30px" Width="100px" CssClass="form-control form-rounded"></asp:TextBox>
                                        </td>
                                    </tr>
                                    <tr>
                                        <td style="width: 368px; height: 20px;">
                                                        <asp:TextBox ID="emergencyOtherSpeciality" runat="server" Height="30px" Width="300px" placeholder="Specify" CssClass="form-control form-rounded" Visible="False"></asp:TextBox>
                                                    </td>
                                        <td style="width: 352px; height: 20px;"></td>
                                        <td style="height: 20px"></td>
                                    </tr>
                                    <tr>
                                        <td style="width: 368px; height: 20px;">&nbsp;</td>
                                        <td style="width: 352px; height: 20px;">&nbsp;</td>
                                        <td style="height: 20px">&nbsp;</td>
                                    </tr>
                                    <tr>
                                        <td style="width: 368px; height: 20px;">
                                            <table><tr>
                                                <td><b style="font-size:small;color:red">Vital Signs at-</b></td>
                                                <td>&nbsp;&nbsp;&nbsp;</td>
                                                <td><asp:TextBox ID="emergencyVitalsAtDate" runat="server" Height="30px" Width="150px" CssClass="form-control form-rounded"></asp:TextBox></td>
                                                <td> <asp:TextBox ID="emergencyVitalsAtTime" runat="server" Height="30px" Width="100px" CssClass="form-control form-rounded"></asp:TextBox></td>
                                                   </tr></table></td>
                                        <td style="width: 352px; height: 20px;">
                                            
                                                        
                                                       
                                                    </td>
                                        <td style="height: 20px"></td>
                                    </tr>
                                    <tr>
                                        <td style="width: 368px">&nbsp;</td>
                                        <td style="width: 352px">&nbsp;</td>
                                        <td>&nbsp;</td>
                                    </tr>
                                    <tr>
                                        <td style="width: 368px" class="tdFont">First Pulse Rate</td>
                                        <td style="width: 352px" class="tdFont">First systolic B.P</td>
                                        <td class="tdFont">First spontaneous Respiratory rate</td>
                                    </tr>
                                    <tr>
                                        <td class="auto-style77">
                                            <asp:TextBox ID="emergencyFirstPulseRate" runat="server" Height="30px" Width="100px" CssClass="form-control form-rounded"></asp:TextBox>
                                            <asp:RegularExpressionValidator ID="ValEmergencyPulseRate" runat="server" ControlToValidate="emergencyFirstPulseRate" ErrorMessage="Enter Numeric Value" Font-Size="XX-Small" ForeColor="Red" ValidationExpression="\d+" ValidationGroup="emergency"></asp:RegularExpressionValidator>
                                        </td>
                                        <td class="auto-style78">
                                            <asp:TextBox ID="emergencyFirstSystolicBP" runat="server" Height="30px" Width="100px" CssClass="form-control form-rounded"></asp:TextBox>
                                            <asp:RegularExpressionValidator ID="ValEmergencyFirstSystsolic" runat="server" ControlToValidate="emergencyFirstSystolicBP" ErrorMessage="Enter Numeric Value" Font-Size="XX-Small" ForeColor="Red" ValidationExpression="\d+" ValidationGroup="emergency"></asp:RegularExpressionValidator>
                                        </td>
                                        <td class="auto-style79">
                                            <asp:TextBox ID="emergencySpontRespRate" runat="server" Height="30px" Width="100px" CssClass="form-control form-rounded" ></asp:TextBox>
                                            <asp:RegularExpressionValidator ID="ValEmergencySpontaneous" runat="server" ControlToValidate="emergencySpontRespRate" ErrorMessage="Enter Numeric Value" Font-Size="XX-Small" ForeColor="Red" ValidationExpression="\d+" ValidationGroup="emergency"></asp:RegularExpressionValidator>
                                        </td>
                                    </tr>
                                    <tr>
                                        <td style="width: 368px">&nbsp;</td>
                                        <td style="width: 352px">&nbsp;</td>
                                        <td>&nbsp;</td>
                                    </tr>
                                    <tr>
                                        <td style="width: 368px" class="tdFont">Lowest systolic B.P</td>
                                        <td style="width: 352px" class="tdFont">Respiratory rate controlled </td>
                                        <td class="tdFont">Temperature</td>
                                    </tr>
                                    <tr>
                                        <td style="width: 368px">
                                            <asp:TextBox ID="emergencyLowestSysBP" runat="server" Height="30px" Width="100px" CssClass="form-control form-rounded"></asp:TextBox>
                                        </td>
                                        <td style="width: 352px">
                                            <asp:DropDownList ID="ddEmergencyRespRateControlled" runat="server" Height="30px" Width="100px" CssClass="form-control form-rounded">
                                                <asp:ListItem>Yes</asp:ListItem>
                                                <asp:ListItem>No</asp:ListItem>
                                            </asp:DropDownList>
                                        </td>
                                        <td>
                                            <table><tr>
                                                <td><asp:TextBox ID="emergencyTemp" runat="server" Height="30px" Width="100px" CssClass="form-control form-rounded"></asp:TextBox>
                                                    <asp:RegularExpressionValidator ID="ValEmergencyTemp" runat="server" ControlToValidate="emergencyTemp" ErrorMessage="Enter Numeric Value" Font-Size="XX-Small" ForeColor="Red" ValidationExpression="\d+" ValidationGroup="emergency"></asp:RegularExpressionValidator>
                                                    <br />
                                            </td>
                                                <td style="vertical-align: top"><asp:DropDownList ID="ddEmergencyCelsius" runat="server" CssClass="form-control form-rounded" Height="30px">
                                                    <asp:ListItem>Celsius</asp:ListItem>
                                                    <asp:ListItem>Fahrenheit</asp:ListItem>
                                                    </asp:DropDownList></td>
                                                   </tr></table>
                                            
                                            
                                        </td>
                                    </tr>
                                    <tr>
                                        <td style="width: 368px">
                                            <asp:RegularExpressionValidator ID="ValEmergencyLowestSystolicBP" runat="server" ControlToValidate="emergencyLowestSysBP" ErrorMessage="Enter Numeric Value" Font-Size="XX-Small" ForeColor="Red" ValidationExpression="\d+" ValidationGroup="Emergency"></asp:RegularExpressionValidator>
                                        </td>
                                        <td style="width: 352px">&nbsp;</td>
                                        <td>&nbsp;</td>
                                    </tr>
                                    <tr>
                                        <td style="width: 368px; height: 20px;" class="tdFont">Oxygen sat (Room Air)</td>
                                        <td style="width: 352px; height: 20px;" class="tdFont">Oxygen Sat. (with supplement)</td>
                                        <td style="height: 20px" class="tdFont">First Hematocrit</td>
                                    </tr>
                                    <tr>
                                        <td style="width: 368px">
                                            <asp:TextBox ID="emergencyOxygenSatRoom" runat="server" Height="30px" Width="100px" CssClass="form-control form-rounded"></asp:TextBox>
                                        </td>
                                        <td style="width: 352px">
                                            <asp:TextBox ID="emergencyOxygenSupplement" runat="server" Height="30px" Width="100px" CssClass="form-control form-rounded"></asp:TextBox>
                                        </td>
                                        <td>
                                            <asp:TextBox ID="emergencyFirstHematocrit" runat="server" Height="30px" Width="150px" CssClass="form-control form-rounded"></asp:TextBox>
                                        </td>
                                    </tr>
                                    <tr>
                                        <td style="width: 368px">
                                            &nbsp;</td>
                                        <td style="width: 352px">
                                            &nbsp;</td>
                                        <td>
                                            &nbsp;&nbsp;&nbsp;</td>
                                    </tr>
                                    <tr>
                                        <td style="width: 368px"><table><tr>
                                                <td><b style="font-size: small;color:red">GCS At- </b>&nbsp;&nbsp;</td>
                                            <td>&nbsp;</td>
                                                <td><asp:TextBox ID="emergencyGCSAtDate" runat="server" Height="30px" Width="150px" CssClass="form-control form-rounded"></asp:TextBox></td>
                                                <td><asp:TextBox ID="emergencyGCSAtTime" runat="server" Height="30px" Width="100px" CssClass="form-control form-rounded"></asp:TextBox></td></tr></table></td>
                                        <td style="width: 352px">
                                            
                                                        
                                                        
                                                     </td>
                                        <td>&nbsp;</td>
                                    </tr>
                                    <tr>
                                        <td style="width: 368px" class="tdFont">Eye</td>
                                        <td style="width: 352px" class="tdFont">Verbal</td>
                                        <td class="tdFont">Motor</td>
                                        <td class="tdFont">Total</td>
                                    </tr>
                                    <tr>
                                        <td style="width: 368px">
                                            <asp:DropDownList ID="ddEmergencyEye" runat="server" CssClass="form-control form-rounded" Width="150px" AutoPostBack="True">
                                                <asp:ListItem Value="4">4 Spontaneous</asp:ListItem>
                                                <asp:ListItem Value="3">3 To Voice</asp:ListItem>
                                                <asp:ListItem Value="2">2 To Pain</asp:ListItem>
                                                <asp:ListItem Value="1">1 None</asp:ListItem>
                                                <asp:ListItem Value="1">Obstruction to eye</asp:ListItem>
                                            </asp:DropDownList>
                                        </td>
                                        <td style="width: 352px">
                                            <asp:DropDownList ID="ddEmergencyVerbal" runat="server" CssClass="form-control form-rounded" Width="150px" AutoPostBack="True" >
                                                <asp:ListItem Value="5">5 Oriented</asp:ListItem>
                                                <asp:ListItem Value="4">4 Confused</asp:ListItem>
                                                <asp:ListItem Value="3">3 Inappropriate words</asp:ListItem>
                                                <asp:ListItem Value="2">2 Incomprehensible</asp:ListItem>
                                                <asp:ListItem Value="1">1 None</asp:ListItem>
                                                <asp:ListItem Value="1">Intubated</asp:ListItem>
                                            </asp:DropDownList>
                                            </td>
                                        <td>
                                            <asp:DropDownList ID="ddEmergencyMotor" runat="server" AutoPostBack="True" CssClass="form-control form-rounded" OnSelectedIndexChanged="ddEmergencyMotor_SelectedIndexChanged" Width="200px">
                                                <asp:ListItem Value="6">6 Obeys Command</asp:ListItem>
                                                <asp:ListItem Value="5">5 Localizes pain</asp:ListItem>
                                                <asp:ListItem Value="4">4 Withdraws to pain</asp:ListItem>
                                                <asp:ListItem Value="3">3 Abnormal Flexon</asp:ListItem>
                                                <asp:ListItem Value="2">2 Abnormal Extension</asp:ListItem>
                                                <asp:ListItem Value="1">1 None</asp:ListItem>
                                                <asp:ListItem Value="1">Pharmacologically paralysed</asp:ListItem>
                                            </asp:DropDownList>
                                        </td>
                                        <td>
                                            <asp:TextBox ID="emergencyGCSTotal" runat="server" CssClass="form-control form-rounded" Height="30px" Width="150px" ReadOnly="True"></asp:TextBox>
                                        </td>
                                    </tr>
                                    <tr>
                                        <td style="width: 368px">
                                            &nbsp;</td>
                                        <td style="width: 352px">&nbsp;</td>
                                        <td>&nbsp;</td>
                                    </tr>
                                    <tr>
                                        <td style="width: 368px"><b style="font-size:small;color:red">Trauma Score</b></td>
                                        <td style="width: 352px">&nbsp;</td>
                                        <td>&nbsp;</td>
                                    </tr>
                                    <tr>
                                        <td style="width: 368px">&nbsp;</td>
                                        <td style="width: 352px">&nbsp;</td>
                                        <td>&nbsp;</td>
                                    </tr>
                                    <tr>
                                        <td style="width: 368px" class="tdFont">Revised trauma score</td>
                                        <td style="width: 352px" class="tdFont">Paediatric trauma score</td>
                                        <td class="tdFont">ED procedure done</td>
                                    </tr>
                                    <tr>
                                        <td style="width: 368px; height: 21px;">
                                            <asp:TextBox ID="emergencyTraumaScore" runat="server" Width="100px" CssClass="form-control form-rounded" Height="30px" ReadOnly="True"></asp:TextBox>
                                        </td>
                                        <td style="width: 352px; height: 21px;">
                                            <asp:TextBox ID="emergencyPediatricTraumaScore" runat="server" Width="100px" Height="30px" CssClass="form-control form-rounded"></asp:TextBox>
                                        </td>
                                        <td style="height: 21px">
                                            <asp:TextBox ID="emergencyEDProcedure" runat="server" Width="300px" Height="60px" CssClass="form-control form-rounded" TextMode="MultiLine"></asp:TextBox>
                                        </td>
                                    </tr>
                                    <tr>
                                        <td style="width: 368px; height: 21px;">
                                            &nbsp;</td>
                                        <td style="width: 352px; height: 21px;">
                                            &nbsp;</td>
                                        <td style="height: 21px">
                                            &nbsp;</td>
                                    </tr>
                                    <tr>
                                        <td style="width: 368px" class="tdFont">Pre-existing condition</td>
                                        <td style="width: 352px" class="tdFont">Care-issues faced</td>
                                        <td class="tdFont">ED discharged disposition</td>
                                    </tr>
                                    <tr>
                                        <td style="width: 368px; vertical-align: top;">
                                            <asp:DropDownList ID="ddEmergencyPreExistingCondition" runat="server" Width="200px" Height="30px" CssClass="form-control form-rounded">
                                            </asp:DropDownList>
                                                        <asp:TextBox ID="emergencyOtherPreExisting" runat="server" Height="30px" Width="300px" placeholder="Specify" CssClass="form-control form-rounded" Visible="False"></asp:TextBox>
                                                    <br />
                                        </td>
                                        <td style="width: 352px">
                                            <asp:DropDownList ID="ddEmergencyCareIssueFaced" runat="server" Width="200px" Height="30px" CssClass="form-control form-rounded">
                                            </asp:DropDownList>
                                            <asp:DropDownList ID="ddEmergencyCareIssueFaced1" runat="server" Width="200px" Height="30px" CssClass="form-control form-rounded">
                                            </asp:DropDownList>
                                            <asp:DropDownList ID="ddEmergencyCareIssueFaced2" runat="server" Width="200px" Height="30px" CssClass="form-control form-rounded">
                                            </asp:DropDownList>
                                        </td>
                                        <td style="vertical-align: top">
                                            <asp:DropDownList ID="ddEmergencyDischargeDisposition" runat="server" Width="200px" Height="30px" CssClass="form-control form-rounded" OnSelectedIndexChanged="ddEmergencyDischargeDisposition_SelectedIndexChanged">
                                            </asp:DropDownList>
                                                    <br />
                                                        <asp:TextBox ID="emergencyOtherDischarge" runat="server" Height="30px" Width="300px" placeholder="Specify" CssClass="form-control form-rounded" Visible="False"></asp:TextBox>
                                        </td>
                                    </tr>
                                    <tr>
                                        <td style="width: 368px">
                                            &nbsp;</td>
                                        <td style="width: 352px">
                                            &nbsp;</td>
                                        <td>
                                            &nbsp;</td>
                                    </tr>
                                    <tr>
                                        <td style="width: 368px" class="tdFont">Admitting service</td>
                                        <td style="width: 352px" class="tdFont">Alcohol use indicator</td>
                                        <td class="tdFont">Drug use indicator</td>
                                    </tr>
                                    <tr>
                                        <td style="width: 368px">
                                            <asp:DropDownList ID="ddEmergencyAdmittingService" runat="server" Width="200px" Height="30px" CssClass="form-control form-rounded">
                                                <asp:ListItem>Trauma</asp:ListItem>
                                                <asp:ListItem>General Surgery</asp:ListItem>
                                                <asp:ListItem>Neurosurgery</asp:ListItem>
                                                <asp:ListItem>Orthopedic surgery</asp:ListItem>
                                                <asp:ListItem>ENT/Faciomaxillary</asp:ListItem>
                                                <asp:ListItem>Plastic Surgery</asp:ListItem>
                                                <asp:ListItem>Thoracic Surgery</asp:ListItem>
                                                <asp:ListItem>Pediatric Surgery</asp:ListItem>
                                                <asp:ListItem>Pediatrics</asp:ListItem>
                                                <asp:ListItem>Other surgical service</asp:ListItem>
                                                <asp:ListItem>Other non-surgical service</asp:ListItem>
                                                <asp:ListItem>N/A</asp:ListItem>
                                                <asp:ListItem>Not Known</asp:ListItem>
                                            </asp:DropDownList>
                                        </td>
                                        <td style="width: 352px">
                                            <asp:DropDownList ID="ddEmergencyAlcoholIndicator" runat="server" Height="30px" Width="200px" CssClass="form-control form-rounded">
                                                <asp:ListItem>No suspicion or evidence</asp:ListItem>
                                                <asp:ListItem>Yes, suspicion or evidence</asp:ListItem>
                                                <asp:ListItem>Yes, confirmed by breath or blood test</asp:ListItem>
                                                <asp:ListItem>N/A</asp:ListItem>
                                                <asp:ListItem>Not Known</asp:ListItem>
                                            </asp:DropDownList>
                                        </td>
                                        <td>
                                            <asp:DropDownList ID="ddEmergencyDrugUseIndicator" runat="server" Height="30px" Width="200px" CssClass="form-control form-rounded">
                                                <asp:ListItem>No- not suspected</asp:ListItem>
                                                <asp:ListItem>No-confirmed by test</asp:ListItem>
                                                <asp:ListItem>Suspected but not confirmed</asp:ListItem>
                                                <asp:ListItem>Yes-confirmed by test (prescription drugs)</asp:ListItem>
                                                <asp:ListItem Value="Yes-confirmed by test (illegal drugs)">Yes-confirmed by test (illegal drugs)</asp:ListItem>
                                                <asp:ListItem>N/A</asp:ListItem>
                                                <asp:ListItem>Not Known</asp:ListItem>
                                            </asp:DropDownList>
                                        </td>
                                    </tr>
                                    <tr>
                                        <td style="width: 368px">&nbsp;</td>
                                        <td style="width: 352px">&nbsp;</td>
                                        <td>&nbsp;</td>
                                    </tr>
                                    <tr>
                                        <td style="width: 368px">&nbsp;</td>
                                        <td style="width: 352px">&nbsp;</td>
                                        <td>&nbsp;</td>
                                    </tr>
                                </table>
                                    </asp:Panel>
                                <div class="container-fluid">
                                    <div class="row">
                                        <div class="col-lg-12" style="top: 0px; left: 2px; margin-top: 0px;">
                                            <div class="col-lg-4"></div>
                                            <div class="col-lg-4">
                                                <div class="col-lg-6" style="text-align: center;">
                                                    <asp:Button ID="resetEmergencyBtn" runat="server" Text="Reset" class="btn-danger" Height="35px" Width="75px" OnClick="resetEmergencyBtn_Click" />
                                                </div>
                                                <div class="col-lg-6" style="text-align: center;">
                                                    <asp:Button ID="SaveEmergency" runat="server" Text="Save &amp; Continue" class="btn-primary" Height="35px" Width="119px" OnClick="SaveEmergencyData" ValidationGroup="emergency" />
                                                </div>
                                            </div>
                                            <div class="col-lg-4"></div>
                                        </div>
                                    </div>
                                </div>
                            </div>
<!-- /.Operation Page-->
                            <div id="operation" role="tabpanel" class="tab-pane active" >
                                <h3 style="text-align:center">&nbsp;&nbsp;</h3>
                                <asp:Panel ID="poperation" runat="server">
                                <table  class="nav-justified">
                                    <tr>
                                        <td style="width: 412px; color: #0033CC; height: 20px;"><strong class="tdFont">Was surgery performed</strong></td>
                                        <td style="height: 20px"></td>
                                        <td style="height: 20px"></td>
                                    </tr>
                                    <tr>
                                        <td style="width: 412px">
                                            <asp:DropDownList ID="ddOperationPerformed" runat="server" Height="30px" Width="100px" CssClass="form-control form-rounded" OnSelectedIndexChanged="ddOperationPerformed_SelectedIndexChanged" AutoPostBack="True">
                                                <asp:ListItem Selected="True">Select</asp:ListItem>
                                                <asp:ListItem>Yes</asp:ListItem>
                                                <asp:ListItem>No</asp:ListItem>
                                            </asp:DropDownList>
                                        </td>
                                        <td>&nbsp;</td>
                                        <td>&nbsp;</td>
                                    </tr>
                                    <tr>
                                        <td style="width: 412px">&nbsp;</td>
                                        <td>&nbsp;</td>
                                        <td>&nbsp;</td>
                                    </tr>
                                </table>
                                <table id="operationtable" runat="server" class="nav-justified">
                                    <tr id="operation1" runat="server" style="color: #0033CC">
                                        <td class="tdFont" style="width: 70px; font-weight: bold;">Sl no.</td>
                                        <td style="width: 345px"><b class="tdFont">&nbsp;Type of surgery </b></td>
                                        <td style="width: 317px"><b class="tdFont">Start date/time</b></td>
                                        <td><b class="tdFont">OR disposition</b></td>
                                    </tr>
                                    <tr id="operation2" runat="server">
                                        <td class="modal-sm" style="width: 70px">1.</td>
                                        <td style="width: 345px">
                                            <asp:TextBox ID="operationTypeOfSurgery1" runat="server" Height="30px" Width="250px" CssClass="form-control form-rounded"></asp:TextBox>
                                        </td>
                                        <td style="width: 317px">
                                            <asp:TextBox ID="ddOperationDate1" runat="server" Height="30px" Width="150px"></asp:TextBox>
                                            <asp:TextBox ID="ddOperationTime1" runat="server" Height="30px" Width="100px"></asp:TextBox>
                                        </td>
                                        <td>
                                            <asp:DropDownList ID="ddOperationDisposition1" runat="server" CssClass="form-control form-rounded" Height="30px" Width="300px">
                                            </asp:DropDownList>
                                        </td>
                                    </tr>
                                    <tr id="operation3" runat="server">
                                        <td class="modal-sm" style="width: 70px; height: 20px"></td>
                                        <td style="width: 345px; height: 20px"></td>
                                        <td style="width: 317px; height: 20px"></td>
                                        <td style="height: 20px"></td>
                                    </tr>
                                    <tr id="operation5" runat="server">
                                        <td class="modal-sm" style="width: 70px">2.</td>
                                        <td style="width: 345px">
                                            <asp:TextBox ID="operationTypeOfSurgery2" runat="server" Height="30px" Width="250px" CssClass="form-control form-rounded"></asp:TextBox>
                                        </td>
                                        <td style="width: 317px">
                                            <asp:TextBox ID="ddOperationDate2" runat="server" Height="30px" Width="150px"></asp:TextBox>
                                            <asp:TextBox ID="ddOperationTime2" runat="server" Height="30px" Width="100px"></asp:TextBox>
                                        </td>
                                        <td>
                                           <table>
                                                <tr><td>  <asp:DropDownList ID="ddOperationDisposition2" runat="server" CssClass="form-control form-rounded" Height="30px" Width="300px">
                                            </asp:DropDownList></td>
                                                    <td><asp:Button ID="removeSurgery1" runat="server" BackColor="White" CssClass="form-control form-rounded" Font-Bold="True" ForeColor="Red" Height="33px" OnClick="removeSurgeryBtn1" Text="X" Width="41px" /></td>
                                                </tr>
                                               
                                            </table>
                                        </td>
                                    </tr>
                                    <tr id="operation6" runat="server">
                                        <td class="modal-sm" style="width: 70px">&nbsp;</td>
                                        <td style="width: 345px">&nbsp;</td>
                                        <td style="width: 317px">&nbsp;</td>
                                        <td>&nbsp;</td>
                                    </tr>
                                  
                                    <tr id="operation7" runat="server">
                                        <td class="modal-sm" style="width: 70px">3.</td>
                                        <td style="width: 345px">
                                            <asp:TextBox ID="operationTypeOfSurgery3" runat="server" Height="30px" Width="250px" CssClass="form-control form-rounded"></asp:TextBox>
                                        </td>
                                        <td style="width: 317px">
                                            <asp:TextBox ID="ddOperationDate3" runat="server" Height="30px" Width="150px"></asp:TextBox>
                                            <asp:TextBox ID="ddOperationTime3" runat="server" Height="30px" Width="100px"></asp:TextBox>
                                        </td>
                                        <td>
                                            <table>
                                                <tr>
                                                    <td><asp:DropDownList ID="ddOperationDisposition3" runat="server" CssClass="form-control form-rounded" Height="30px" Width="300px">
                                            </asp:DropDownList></td>
                                                    <td> <asp:Button ID="removeSurgery2" runat="server" BackColor="White" CssClass="form-control form-rounded" Font-Bold="True" ForeColor="Red" Height="33px" OnClick="removeSurgeryBtn2" Text="X" Width="41px" /></td>
                                                </tr>
                                            </table>
                                        </td>
                                    </tr>
                                  
                                    <tr  >
                                        <td class="modal-sm" style="width: 70px">&nbsp;</td>
                                        <td style="width: 345px">
                                            <asp:Button ID="btnOperationAdd" runat="server" BackColor="#5DBCD2" CssClass="form-control form-rounded" Font-Bold="True" OnClick="btnOperationAdd_Click" Text="Add" Width="60px" Height="30px" />
                                        </td>
                                        <td style="width: 317px">&nbsp;</td>
                                        <td>
                                            &nbsp;</td>
                                    </tr>
                                  
                                    
                                  
                                  
                                    <tr  >
                                        <td class="modal-sm" style="width: 70px">&nbsp;</td>
                                        <td style="width: 345px">
                                            &nbsp;</td>
                                        <td style="width: 317px">&nbsp;</td>
                                        <td>
                                            &nbsp;</td>
                                    </tr>
                                  
                                    
                                  
                                  
                                </table>
                                <br />
                                    </asp:Panel>
                                <div class="container-fluid">
                                    <div class="row">
                                        <div class="col-lg-12" style="top: 0px; left: 2px; margin-top: 0px;">
                                            <div class="col-lg-4"></div>
                                            <div class="col-lg-4">
                                                <div class="col-lg-6" style="text-align: center;">
                                                    <asp:Button ID="resetOperationBtn" runat="server" Text="Reset" class="btn-danger" Height="35px" Width="75px" OnClick="resetOperationBtn_Click" />
                                                </div>
                                                <div class="col-lg-6" style="text-align: center;">
                                                    <asp:Button ID="SaveOperation" runat="server" Text="Save &amp; Continue" class="btn-primary" Height="35px" Width="119px" OnClick="SaveOperationData" />
                                                </div>
                                            </div>
                                            <div class="col-lg-4"></div>
                                        </div>
                                    </div>
                                </div>
                            </div>
<!-- /.Diagnosis Page-->
                            <div id="diagnosis" role="tabpanel" class="tab-pane active" >
                                <h3 style="text-align:center">&nbsp;</h3>
                                <asp:Panel ID="pdiagnosis" runat="server">
                                <table class="nav-justified">
                                    <tr style="color: #0033CC">
                                        <td class="auto-style31"><b class="tdFont">Sl. No</b></td>
                                        <td style="width: 225px"><b class="tdFont">Body Region</b></td>
                                        <td style="width: 282px"><b class="tdFont">Type of Injury</b></td>
                                        <td style="width: 214px"><b class="tdFont">Anatomical part</b></td>
                                        <td style="width: 208px"><b class="tdFont">Level </b></td>
                                        <td><b class="tdFont">ICD 10 Code</b></td>
                                    </tr>
                                    <tr style="color: #0033CC">
                                        <td class="auto-style31"><b></b></td>
                                        <td style="width: 225px"><b></b></td>
                                        <td style="width: 282px"><b></b></td>
                                        <td style="width: 214px"><b></b></td>
                                        <td style="width: 208px"><b></b></td>
                                        <td><b></b></td>
                                    </tr>
                                    <tr>
                                        <td class="auto-style31">1.</td>
                                        <td style="width: 225px; height: 22px;">
                                            <asp:DropDownList ID="ddDiagnosisBodyRegion1" runat="server" Width="200px" Height="30px" CssClass="form-control form-rounded">
                                            </asp:DropDownList>
                                        </td>
                                        <td style="width: 282px; height: 22px;">
                                            <asp:DropDownList ID="ddDiagnosisTypeOfInjury1" runat="server" Width="200px" Height="30px" CssClass="form-control form-rounded">
                                            </asp:DropDownList>
                                        </td>
                                        <td style="width: 214px; height: 22px;">
                                            <asp:TextBox ID="diagnosisAnatomicalPart1" runat="server" Width="150px" Height="30px" CssClass="form-control form-rounded"></asp:TextBox>
                                        </td>
                                        <td style="width: 208px; height: 22px;">
                                            <asp:TextBox ID="diagnosisLevel1" runat="server" Width="150px" Height="30px" CssClass="form-control form-rounded"></asp:TextBox>
                                        </td>
                                        <td style="height: 22px">
                                            <asp:TextBox ID="diagnosisICDCode1" runat="server" Width="150px" Height="30px" CssClass="form-control form-rounded"></asp:TextBox>
                                        </td>
                                    </tr>
                                    <tr>
                                        <td class="auto-style31">&nbsp;</td>
                                        <td style="width: 225px">&nbsp;</td>
                                        <td style="width: 282px">&nbsp;</td>
                                        <td style="width: 214px">&nbsp;</td>
                                        <td style="width: 208px">&nbsp;</td>
                                        <td>&nbsp;</td>
                                    </tr>
                                    <tr id="diagnosis1" runat="server">
                                        <td class="auto-style31">2.</td>
                                        <td style="width: 225px">
                                            <asp:DropDownList ID="ddDiagnosisBodyRegion2" runat="server" Width="200px" Height="30px" CssClass="form-control form-rounded">
                                            </asp:DropDownList>
                                        </td>
                                        <td style="width: 282px">
                                            <asp:DropDownList ID="ddDiagnosisTypeOfInjury2" runat="server" Width="200px" Height="30px" CssClass="form-control form-rounded">
                                            </asp:DropDownList>
                                        </td>
                                        <td style="width: 214px">
                                            <asp:TextBox ID="diagnosisAnatomicalPart2" runat="server" Width="150px" Height="30px" CssClass="form-control form-rounded"></asp:TextBox>
                                        </td>
                                        <td style="width: 208px">
                                            <asp:TextBox ID="diagnosisLevel2" runat="server" Width="150px" Height="30px" CssClass="form-control form-rounded"></asp:TextBox>
                                        </td>
                                        <td>
                                            <table>
                                                <tr>
                                                    <td> <asp:TextBox ID="diagnosisICDCode2" runat="server" Width="150px" Height="30px" CssClass="form-control form-rounded"></asp:TextBox></td>
                                                    <td><asp:Button ID="removeDiagnosis1" runat="server" BackColor="White" CssClass="form-control form-rounded" Font-Bold="True" ForeColor="Red" Height="33px" OnClick="removeDiagnosisBtn1" Text="X" Width="41px" /></td>
                                                </tr>
                                            </table>
                                        </td>
                                    </tr>
                                    <tr>
                                        <td class="auto-style31"></td>
                                        <td style="width: 225px; height: 20px"></td>
                                        <td style="width: 282px; height: 20px"></td>
                                        <td style="width: 214px; height: 20px"></td>
                                        <td style="width: 208px; height: 20px"></td>
                                        <td style="height: 20px"></td>
                                    </tr>
                                    <tr id="diagnosis2" runat="server">
                                        <td class="auto-style31">3.</td>
                                        <td style="width: 225px">
                                            <asp:DropDownList ID="ddDiagnosisBodyRegion3" runat="server" Width="200px" Height="30px" CssClass="form-control form-rounded">
                                            </asp:DropDownList>
                                        </td>
                                        <td style="width: 282px">
                                            <asp:DropDownList ID="ddDiagnosisTypeOfInjury3" runat="server" Width="200px" Height="30px" CssClass="form-control form-rounded">
                                            </asp:DropDownList>
                                        </td>
                                        <td style="width: 214px">
                                            <asp:TextBox ID="diagnosisAnatomicalPart3" runat="server" Width="150px" Height="30px" CssClass="form-control form-rounded"></asp:TextBox>
                                        </td>
                                        <td style="width: 208px">
                                            <asp:TextBox ID="diagnosisLevel3" runat="server" Width="150px" Height="30px" CssClass="form-control form-rounded"></asp:TextBox>
                                        </td>
                                        <td>
                                            <table>
                                                <tr>
                                                    <td><asp:TextBox ID="diagnosisICDCode3" runat="server" Width="150px" Height="30px" CssClass="form-control form-rounded"></asp:TextBox></td>
                                                    <td><asp:Button ID="removeDiagnosis2" runat="server" BackColor="White" CssClass="form-control form-rounded" Font-Bold="True" ForeColor="Red" Height="33px" OnClick="removeDiagnosisBtn2" Text="X" Width="41px" /></td>

                                                </tr>
                                            </table>
                                        </td>
                                    </tr>
                                    <tr>
                                        <td class="auto-style31">&nbsp;</td>
                                        <td style="width: 225px">&nbsp;</td>
                                        <td style="width: 282px">&nbsp;</td>
                                        <td style="width: 214px">&nbsp;</td>
                                        <td style="width: 208px">&nbsp;</td>
                                        <td>&nbsp;</td>
                                    </tr>
                                    <tr id="diagnosis3" runat="server">
                                        <td class="auto-style31">4.</td>
                                        <td style="width: 225px">
                                            <asp:DropDownList ID="ddDiagnosisBodyRegion4" runat="server" Width="200px" Height="30px" CssClass="form-control form-rounded">
                                            </asp:DropDownList>
                                        </td>
                                        <td style="width: 282px">
                                            <asp:DropDownList ID="ddDiagnosisTypeOfInjury4" runat="server" Width="200px" Height="30px" CssClass="form-control form-rounded">
                                            </asp:DropDownList>
                                        </td>
                                        <td style="width: 214px">
                                            <asp:TextBox ID="diagnosisAnatomicalPart4" runat="server" Width="150px" Height="30px" CssClass="form-control form-rounded"></asp:TextBox>
                                        </td>
                                        <td style="width: 208px">
                                            <asp:TextBox ID="diagnosisLevel4" runat="server" Width="150px" Height="30px" CssClass="form-control form-rounded"></asp:TextBox>
                                        </td>
                                        <td>
                                            <table>
                                                <tr>
                                                 <td> <asp:TextBox ID="diagnosisICDCode4" runat="server" Width="150px" Height="30px" CssClass="form-control form-rounded"></asp:TextBox></td>
                                                 <td><asp:Button ID="removeDiagnosis3" runat="server" BackColor="White" CssClass="form-control form-rounded" Font-Bold="True" ForeColor="Red" Height="33px" OnClick="removeDiagnosisBtn3" Text="X" Width="41px" /> </td>
                                                </tr>
                                            </table>
                                        </td>
                                    </tr>
                                    <tr>
                                        <td class="auto-style31">&nbsp;</td>
                                        <td style="width: 225px">&nbsp;</td>
                                        <td style="width: 282px">&nbsp;</td>
                                        <td style="width: 214px">&nbsp;</td>
                                        <td style="width: 208px">&nbsp;</td>
                                        <td>
                                            <asp:Button ID="btnDiagnosisAdd0" runat="server" BackColor="#5DBCD2" CssClass="form-control form-rounded" Font-Bold="True" OnClick="btnDiagnosisAdd_Click" Text="Add" Width="60px" />
                                        </td>
                                    </tr>
                                    <tr>
                                        <td class="auto-style31">&nbsp;</td>
                                        <td style="width: 225px">
                                            &nbsp;</td>
                                        <td style="width: 282px">
                                            &nbsp;</td>
                                        <td style="width: 214px">
                                            &nbsp;</td>
                                        <td style="width: 208px">
                                            &nbsp;</td>
                                        <td>
                                            &nbsp;</td>
                                    </tr>
                                    <tr><td>&nbsp;</td></tr>
                                    <tr>
                                        <td style="color: #0033CC;" colspan="6"><strong class="tdFont">Injury Narrative</strong></td>
                                    </tr>
                                    <tr>
                                        <td colspan="6">
                                            <asp:TextBox ID="diagnosisInjuryNarrative" runat="server" Width="700px" Height="80px" CssClass="form-control form-rounded" TextMode="MultiLine"></asp:TextBox>
                                        </td>
                                    </tr>
                                    <tr>
                                        <td colspan="6">
                                            &nbsp;</td>
                                    </tr>
                                </table>
                                    </asp:Panel>
                                <div class="container-fluid">
                                    <div class="row">
                                        <div class="col-lg-12" style="top: 0px; left: 2px; margin-top: 0px;">
                                            <div class="col-lg-4"></div>
                                            <div class="col-lg-4">
                                                <div class="col-lg-6" style="text-align: center;">
                                                    <asp:Button ID="resetDiagnosisBtn" runat="server" Text="Reset" class="btn-danger" Height="35px" Width="75px" OnClick="resetDiagnosisBtn_Click" />
                                                </div>
                                                <div class="col-lg-6" style="text-align: center;">
                                                    <asp:Button ID="SaveDiagnosis" runat="server" Text="Save &amp; Continue" class="btn-primary" Height="35px" Width="119px" OnClick="SaveDiagnosisData" />
                                                </div>
                                            </div>
                                            <div class="col-lg-4"></div>
                                        </div>
                                    </div>
                                </div>
                            </div>
<!-- /.Outcome Page class="tab-pane fade"-->
                            <div id="outcome" role="tabpanel" class="tab-pane active">
                                <h3 style="text-align:center">&nbsp;&nbsp;&nbsp;</h3>
                                <asp:Panel ID="poutcome" runat="server">
                                <table class="nav-justified">
                                    
                                    <tr>
                                        <td class="auto-style69"tdFont" >
                                            <asp:DropDownList ID="ddOutcome" runat="server" Height="30px" Width="150px" CssClass="form-control form-rounded">
                                                <asp:ListItem>Discharge</asp:ListItem>
                                                <asp:ListItem>Death</asp:ListItem>
                                            </asp:DropDownList>
                                        </td>
                                        <td class="auto-style73">
                                            <table><tr>
                                                <td><asp:TextBox ID="Dischargedate1" runat="server" Height="30px" Width="150px" CssClass="form-control form-rounded" ></asp:TextBox></td>
                                                <td><asp:TextBox ID="Dischargetime1" runat="server" Height="30px" Width="100px" CssClass="form-control form-rounded" ></asp:TextBox></td>
                                                   </tr></table>
                                            
                                            
                                        </td>
                                        <td class="auto-style48">
                                            &nbsp;</td>
                                        <td style="height: 20px">
                                            &nbsp;</td>
                                    </tr>
                                    <tr>
                                        <td class="auto-style70"></td>
                                        <td class="auto-style74">&nbsp;</td>
                                        <td class="auto-style48"></td>
                                        <td style="height: 20px"></td>
                                    </tr>
                                    <tr style="color: #0033CC">
                                        <td class="auto-style71" style="font-weight: bold">Total hospital durationion</td>
                                        <td class="auto-style75" style="font-weight: bold"><b class="tdFont">Total ICU days</b></td>
                                        <td class="auto-style48"><b class="tdFont">Total ventilator days</b></td>
                                        <td style="height: 20px">&nbsp;</td>
                                    </tr>
                                    <tr>
                                        <td class="auto-style69">&nbsp;</td>
                                        <td class="auto-style73">&nbsp;</td>
                                        <td>&nbsp;</td>
                                        <td>&nbsp;</td>
                                    </tr>
                                    <tr>
                                        <td class="auto-style69">
                                            <table>
                                                <tr>
                                                    <td>
                                                        <asp:TextBox ID="hospitalduration" runat="server" Height="30px" Width="100px" CssClass="form-control form-rounded"></asp:TextBox>
                                                        <br />
                                                        <asp:RegularExpressionValidator ID="ValTotalHospitalDuration" runat="server" ControlToValidate="hospitalduration" ErrorMessage="Enter Numeric Value" Font-Size="XX-Small" ForeColor="Red" ValidationExpression="\d+" ValidationGroup="outcome"></asp:RegularExpressionValidator>
                                                    </td>
                                                    <td style="vertical-align: top">
                                                        <asp:DropDownList ID="hospitalduration2" runat="server" CssClass="form-control form-rounded">
                                                            <asp:ListItem>Hours</asp:ListItem>
                                                            <asp:ListItem>Days</asp:ListItem>
                                                            <asp:ListItem>Weeks</asp:ListItem>
                                                            <asp:ListItem>Months</asp:ListItem>
                                                            <asp:ListItem>Years</asp:ListItem>
                                                        </asp:DropDownList>
                                                    </td>
                                                </tr>
                                            </table>


                                        </td>
                                        <td class="auto-style73">
                                            <asp:TextBox ID="totalICUdays" runat="server" Height="30px" Width="100px" CssClass="form-control form-rounded"></asp:TextBox>
                                            <br />
                                            <asp:RegularExpressionValidator ID="ValTotalICUDays" runat="server" ControlToValidate="totalICUdays" ErrorMessage="Enter Numeric Value" Font-Size="XX-Small" ForeColor="Red" ValidationExpression="\d+" ValidationGroup="outcome"></asp:RegularExpressionValidator>
                                        </td>
                                        <td>
                                            <asp:TextBox ID="totalVentilatorDays" runat="server" Height="30px" Width="100px" CssClass="form-control form-rounded"></asp:TextBox>
                                            <br />
                                            <asp:RegularExpressionValidator ID="ValTotalReimbursement0" runat="server" ControlToValidate="totalVentilatorDays" ErrorMessage="Enter Numeric Value" Font-Size="XX-Small" ForeColor="Red" ValidationExpression="\d+" ValidationGroup="outcome"></asp:RegularExpressionValidator>
                                        </td>
                                        <td>
                                            &nbsp;</td>
                                    </tr>
                                    <tr>
                                        <td class="auto-style70"></td>
                                        <td class="auto-style74">&nbsp;</td>
                                        <td class="auto-style48"></td>
                                        <td style="height: 20px"></td>
                                    </tr>
                                    <tr>
                                        <td class="auto-style70" style="color: #FF0000"><strong>Blood transfusion</strong></td>
                                        <td class="auto-style74" style="color: #FF0000">&nbsp;</td>
                                        <td class="auto-style48"></td>
                                        <td style="height: 20px"></td>
                                    </tr>
                                    <tr>
                                        <td class="auto-style69">&nbsp;</td>
                                        <td class="auto-style73">&nbsp;</td>
                                        <td>&nbsp;</td>
                                        <td>&nbsp;</td>
                                    </tr>
                                    <tr>
                                        <td class="modal-sm" colspan="4">
                                            <table class="nav-justified">
                                                <tr style="color: #0033CC">
                                                    <td class="tdFont" style="height: 20px; width: 250px; font-weight: bold">PRBC</td>
                                                    <td style="height: 20px; width: 273px"><b class="tdFont">FFP</b></td>
                                                    <td style="height: 20px; width: 303px"><b class="tdFont">Cryoprecipitate</b></td>
                                                    <td style="height: 20px; width: 303px" class="tdFont">Platelet</td>
                                                    <td style="height: 20px"><b class="tdFont">Other</b></td>
                                                    <td style="height: 20px">&nbsp;</td>
                                                    <td style="height: 20px">&nbsp;</td>
                                                </tr>
                                                <tr>
                                                    <td class="modal-sm" style="width: 150px">
                                                        <asp:TextBox ID="outcomePRBC" runat="server" Height="30px" Width="100px" CssClass="form-control form-rounded"></asp:TextBox>
                                                    </td>
                                                    <td class="modal-sm" style="width: 150px">
                                                        <asp:TextBox ID="outcomeFFP" runat="server" Height="30px" Width="100px" CssClass="form-control form-rounded"></asp:TextBox>
                                                    </td>
                                                    <td class="modal-sm" style="width: 150px">
                                                        <asp:TextBox ID="outcomeCryopercipitate" runat="server" Height="30px" Width="100px" CssClass="form-control form-rounded"></asp:TextBox>
                                                    </td>
                                                    <td class="modal-sm" style="width: 150px">
                                                        <asp:TextBox ID="outcomePlatelet" runat="server" Height="30px" Width="100px" CssClass="form-control form-rounded"></asp:TextBox>
                                                    </td>
                                                    <td>
                                                        <asp:TextBox ID="outcomeOther" runat="server" Height="30px" Width="100px" CssClass="form-control form-rounded"></asp:TextBox>
                                                    </td>
                                                    <td>
                                                        &nbsp;</td>
                                                </tr>
                                            </table>
                                        </td>
                                    </tr>
                                    <tr>
                                        <td class="auto-style70"></td>
                                        <td class="auto-style74">&nbsp;</td>
                                        <td class="auto-style48"></td>
                                        <td style="height: 20px"></td>
                                    </tr>
                                    <tr>
                                        <td class="auto-style72">Discharge disposition</td>
                                        <td class="auto-style76">&nbsp;</td>
                                        <td><span style="color: #0033CC"><b class="tdFont">Complication</b></span></td>
                                        <td>&nbsp;</td>
                                    </tr>
                                    <tr>
                                        <td class="auto-style69">
                                            <asp:DropDownList ID="ddOutcomeDischargeDisposition" runat="server" Height="30px" Width="200px" CssClass="form-control form-rounded" AutoPostBack="True" OnSelectedIndexChanged="ddOutcomeDischargeDisposition_SelectedIndexChanged" >
                                            </asp:DropDownList>
                                        </td>
                                        <td class="auto-style73">
                                            &nbsp;</td>
                                        <td>
                                            <asp:DropDownList ID="ddOutcomeComplication" runat="server" Height="30px" Width="200px" CssClass="form-control form-rounded">
                                            </asp:DropDownList>
                                        </td>
                                        <td>&nbsp;</td>
                                    </tr>
                                    <tr>
                                        <td class="auto-style69">
                                                        <asp:TextBox ID="outcomeOtherDisposition" runat="server" Height="30px" Width="300px" placeholder="Specify" CssClass="form-control form-rounded" Visible="False"></asp:TextBox>
                                        </td>
                                        <td class="auto-style73">
                                            &nbsp;</td>
                                        <td>
                                            &nbsp;</td>
                                        <td>&nbsp;</td>
                                    </tr>
                                    <tr>
                                        <td class="auto-style69">&nbsp;</td>
                                        <td class="auto-style73">&nbsp;</td>
                                        <td>&nbsp;</td>
                                        <td>&nbsp;</td>
                                    </tr>
                                    <tr>
                                        <td class="auto-style70" style="color: #FF0000"><strong>Discharge/Transfer GCS</strong></td>
                                        <td class="auto-style74" style="color: #FF0000">&nbsp;</td>
                                        <td class="auto-style48"></td>
                                        <td style="height: 20px"></td>
                                    </tr>
                                    <tr>
                                        <td class="auto-style69">&nbsp;</td>
                                        <td class="auto-style73">&nbsp;</td>
                                        <td>&nbsp;</td>
                                        <td>&nbsp;</td>
                                    </tr>
                                    <tr style="color: #0033CC">
                                        <td class="auto-style71" style="font-weight: bold">Eye opening</td>
                                        <td class="auto-style75" style="font-weight: bold"><b class="tdFont">Verbal Response</b></td>
                                        <td class="auto-style48"><b class="tdFont">Motor response</b></td>
                                        <td style="height: 20px" class="tdFont">Total</td>
                                    </tr>
                                    <tr>
                                        <td class="auto-style69">
                                                                    <asp:DropDownList ID="ddOutcomeEye" runat="server" CssClass="form-control form-rounded" Width="200px">
                                                                        <asp:ListItem Value="4">4 Spontaneous</asp:ListItem>
                                                                        <asp:ListItem Value="3">3 To Voice</asp:ListItem>
                                                                        <asp:ListItem Value="2">2 To Pain</asp:ListItem>
                                                                        <asp:ListItem Value="1">1 None</asp:ListItem>
                                                                        <asp:ListItem Value="1">Obstruction to Eye</asp:ListItem>
                                                                    </asp:DropDownList>
                                        </td>
                                        <td class="auto-style73">
                                                                    <asp:DropDownList ID="ddOutcomeVerbal" runat="server" CssClass="form-control form-rounded" Width="150px" >
                                                                        <asp:ListItem Value="5">5 Oriented</asp:ListItem>
                                                                        <asp:ListItem Value="4">4 Confused</asp:ListItem>
                                                                        <asp:ListItem Value="3">3 Inappropriate words</asp:ListItem>
                                                                        <asp:ListItem Value="2">2 Incomprehensible</asp:ListItem>
                                                                        <asp:ListItem Value="1">1 None</asp:ListItem>
                                                                        <asp:ListItem Value="1">Intubated</asp:ListItem>
                                                                    </asp:DropDownList>
                                                                    </td>
                                        <td>
                                                                    <asp:DropDownList ID="ddOutcomeMotor" runat="server" AutoPostBack="True" CssClass="form-control form-rounded" OnSelectedIndexChanged="ddOutcomeMotor_SelectedIndexChanged" Width="200px">
                                                                        <asp:ListItem Value="6">6 Obeys Command</asp:ListItem>
                                                                        <asp:ListItem Value="5">5 Localizes pain</asp:ListItem>
                                                                        <asp:ListItem Value="4">4 Withdraws to pain</asp:ListItem>
                                                                        <asp:ListItem Value="3">3 Abnormal Flexon</asp:ListItem>
                                                                        <asp:ListItem Value="2">2 Abnormal Extension</asp:ListItem>
                                                                        <asp:ListItem Value="1">1 None</asp:ListItem>
                                                                        <asp:ListItem Value="1">Pharmacologically paralysed</asp:ListItem>
                                                                    </asp:DropDownList>
                                        </td>
                                        <td>
                                            <asp:TextBox ID="outcomeGCSTotal" runat="server" Height="30px" Width="200px" CssClass="form-control form-rounded"></asp:TextBox>
                                        </td>
                                    </tr>
                                    <tr>
                                        <td class="auto-style69">&nbsp;</td>
                                        <td class="auto-style73">&nbsp;</td>
                                        <td>&nbsp;</td>
                                        <td>&nbsp;</td>
                                    </tr>
                                    <tr style="color: #0033CC">
                                        <td class="auto-style72" style="font-weight: bold">Glasgow Outcome Scale</td>
                                        <td class="auto-style76" style="font-weight: bold">&nbsp;</td>
                                        <td><b class="tdFont">Consults</b></td>
                                        <td>&nbsp;</td>
                                    </tr>
                                    <tr>
                                        <td class="auto-style69">
                                            <asp:DropDownList ID="ddOutcomeGCS" runat="server" Height="30px" Width="200px" CssClass="form-control form-rounded">
                                                <asp:ListItem>Dead</asp:ListItem>
                                                <asp:ListItem>Vegetative state</asp:ListItem>
                                                <asp:ListItem>Moderately disabled</asp:ListItem>
                                                <asp:ListItem>Good recovery</asp:ListItem>
                                                <asp:ListItem>N/A</asp:ListItem>
                                                <asp:ListItem>Unknown</asp:ListItem>
                                                <asp:ListItem></asp:ListItem>
                                            </asp:DropDownList>
                                        </td>
                                        <td class="auto-style73">
                                            &nbsp;</td>
                                        <td>
                                            <asp:DropDownList ID="ddOutcomeConsults" runat="server" Height="30px" Width="200px" CssClass="form-control form-rounded">
                                                <asp:ListItem>Physical therapy</asp:ListItem>
                                                <asp:ListItem>Orthopedic surgeon</asp:ListItem>
                                                <asp:ListItem>Neurosurgeon</asp:ListItem>
                                                <asp:ListItem>Pediatric surgeon</asp:ListItem>
                                                <asp:ListItem>Psychiatrist</asp:ListItem>
                                                <asp:ListItem>Intensivist</asp:ListItem>
                                                <asp:ListItem>Social Work</asp:ListItem>
                                                <asp:ListItem>Rehab consult</asp:ListItem>
                                                <asp:ListItem>Other</asp:ListItem>
                                                <asp:ListItem>N/A</asp:ListItem>
                                                <asp:ListItem>Unknown</asp:ListItem>
                                            </asp:DropDownList>
                                        </td>
                                        <td>
                                            &nbsp;</td>
                                    </tr>
                                    <tr>
                                        <td class="auto-style70"></td>
                                        <td class="auto-style74">&nbsp;</td>
                                        <td class="auto-style48"></td>
                                        <td style="height: 20px"></td>
                                    </tr>
                                    <tr>
                                        <td class="auto-style70"><b class="tdFont">Brain death before expiring</b></td>
                                        <td class="auto-style74">&nbsp;</td>
                                        <td class="auto-style30">Life support withdrawn</td>
                                        <td style="height: 20px">&nbsp;</td>
                                    </tr>
                                    <tr>
                                        <td class="auto-style70">
                                            <asp:DropDownList ID="ddOutcomeBrainDead" runat="server" Height="30px" Width="200px" CssClass="form-control form-rounded">
                                                <asp:ListItem Selected="True">Select</asp:ListItem>
                                                <asp:ListItem Value="1">Yes</asp:ListItem>
                                                <asp:ListItem Value="0">No</asp:ListItem>
                                                <asp:ListItem Value="2">N/A</asp:ListItem>
                                                <asp:ListItem Value="3">Unknown</asp:ListItem>
                                            </asp:DropDownList>
                                        </td>
                                        <td class="auto-style74">&nbsp;</td>
                                        <td class="auto-style48">
                                            <asp:DropDownList ID="ddOutcomeLifeSupport" runat="server" Height="30px" Width="200px" CssClass="form-control form-rounded">
                                                <asp:ListItem Selected="True">Select</asp:ListItem>
                                                <asp:ListItem Value="1">Yes</asp:ListItem>
                                                <asp:ListItem Value="0">No</asp:ListItem>
                                                <asp:ListItem Value="2">N/A</asp:ListItem>
                                                <asp:ListItem Value="3">Unknown</asp:ListItem>
                                            </asp:DropDownList>
                                        </td>
                                        <td style="height: 20px">&nbsp;</td>
                                    </tr>
                                    <tr style="color: #0033CC">
                                        <td class="auto-style72" style="font-weight: bold">&nbsp;</td>
                                        <td class="auto-style76" style="font-weight: bold">&nbsp;</td>
                                        <td>&nbsp;</td>
                                        <td>&nbsp;</td>
                                    </tr>
                                    <tr>
                                        <td class="auto-style69">
                                            <b class="tdFont">Autopsy done</b></td>
                                        <td class="auto-style73">
                                            &nbsp;</td>
                                        <td>
                                            <b class="tdFont">Results requested</b></td>
                                        <td class="tdFont">
                                            Results received</td>
                                    </tr>
                                    <tr>
                                        <td class="auto-style69">
                                            <asp:DropDownList ID="ddOutcomeAutopsy" runat="server" Height="30px" Width="200px" CssClass="form-control form-rounded">
                                                <asp:ListItem Selected="True">Select</asp:ListItem>
                                                <asp:ListItem Value="1">Yes</asp:ListItem>
                                                <asp:ListItem Value="0">No</asp:ListItem>
                                                <asp:ListItem Value="2">N/A</asp:ListItem>
                                                <asp:ListItem Value="3">Unknown</asp:ListItem>
                                            </asp:DropDownList>
                                        </td>
                                        <td class="auto-style73">&nbsp;</td>
                                        <td>
                                            <asp:DropDownList ID="ddOutcomeAutopsyRequested" runat="server" Height="30px" Width="200px" CssClass="form-control form-rounded">
                                                <asp:ListItem Selected="True">Select</asp:ListItem>
                                                <asp:ListItem Value="1">Yes</asp:ListItem>
                                                <asp:ListItem Value="0">No</asp:ListItem>
                                                <asp:ListItem Value="2">N/A</asp:ListItem>
                                                <asp:ListItem Value="3">Unknown</asp:ListItem>
                                            </asp:DropDownList>
                                        </td>
                                        <td>
                                            <asp:DropDownList ID="ddOutcomeAutopsyResultsRecv" runat="server" Height="30px" Width="200px" CssClass="form-control form-rounded">
                                                <asp:ListItem Selected="True">Select</asp:ListItem>
                                                <asp:ListItem Value="1">Yes</asp:ListItem>
                                                <asp:ListItem Value="0">No</asp:ListItem>
                                                <asp:ListItem Value="2">N/A</asp:ListItem>
                                                <asp:ListItem Value="3">Unknown</asp:ListItem>
                                            </asp:DropDownList>
                                        </td>
                                    </tr>
                                    <tr style="color: #0033CC">
                                        <td class="auto-style72" style="font-weight: bold">&nbsp;</td>
                                        <td class="auto-style76" style="font-weight: bold">&nbsp;</td>
                                        <td>&nbsp;</td>
                                        <td>&nbsp;</td>
                                    </tr>
                                    <tr>
                                        <td class="auto-style69">
                                            <b class="tdFont">Organ donated</b></td>
                                        <td class="auto-style73">
                                            &nbsp;</td>
                                        <td id="organs1" runat="server">
                                            <b class="tdFont">Organs donated</b></td>
                                        <td>
                                            &nbsp;</td>
                                    </tr>
                                    <tr>
                                        <td class="auto-style69">
                                            <asp:DropDownList ID="ddOutcomeOrgansDonated" runat="server" Height="30px" Width="200px" CssClass="form-control form-rounded" AutoPostBack="True" OnSelectedIndexChanged="ddOutcomeOrgansDonated_SelectedIndexChanged">
                                                <asp:ListItem Selected="True">Select</asp:ListItem>
                                                <asp:ListItem Value="1">Yes</asp:ListItem>
                                                <asp:ListItem Value="0">No</asp:ListItem>
                                                <asp:ListItem Value="2">N/A</asp:ListItem>
                                                <asp:ListItem Value="3">Unknown</asp:ListItem>
                                            </asp:DropDownList>
                                        </td>
                                        <td class="auto-style73">&nbsp;</td>
                                        <td id="organs2" runat="server">
                                            <asp:TextBox ID="outcomeOrgans" runat="server" Height="30px" Width="200px" CssClass="form-control form-rounded"></asp:TextBox>
                                        </td>
                                        <td>&nbsp;</td>
                                    </tr>
                                    <tr>
                                        <td class="auto-style69">&nbsp;</td>
                                        <td class="auto-style73">&nbsp;</td>
                                        <td>&nbsp;</td>
                                        <td>&nbsp;</td>
                                    </tr>
                                    <tr>
                                        <td class="auto-style69">&nbsp;</td>
                                        <td class="auto-style73">&nbsp;</td>
                                        <td>&nbsp;</td>
                                        <td>&nbsp;</td>
                                    </tr>
                                    <tr>
                                        <td class="auto-style69">&nbsp;</td>
                                        <td class="auto-style73">&nbsp;</td>
                                        <td>&nbsp;</td>
                                        <td>&nbsp;</td>
                                    </tr>
                                </table>
                                    </asp:Panel>
                                <div class="container-fluid">
                                    <div class="row">
                                        <div class="col-lg-12" style="top: 0px; left: 2px; margin-top: 0px;">
                                            <div class="col-lg-4"></div>
                                            <div class="col-lg-4">
                                                <div class="col-lg-6" style="text-align: center;">
                                                    <asp:Button ID="resetOutcomeBtn" runat="server" Text="Reset" class="btn-danger" Height="35px" Width="75px" OnClick="resetOutcomeBtn_Click" />
                                                </div>
                                                <div class="col-lg-6" style="text-align: center;">
                                                    <asp:Button ID="Button16" runat="server" Text="Save &amp; Continue" class="btn-primary" Height="35px" Width="119px" OnClick="SaveOutcomeData" ValidationGroup="outcome" />
                                                </div>
                                            </div>
                                            <div class="col-lg-4"></div>
                                        </div>
                                    </div>
                                </div>
                            </div>
<!-- /.Finance Page-->
                            <div id="finance"  role="tabpanel" class="tab-pane active">
                                <h3 style="text-align:center"></h3>
                                <asp:Panel ID="pfinance" runat="server">
                                <table class="nav-justified">
                                    <tr style="color: #0033CC">
                                        <td class="tdFont" style="width: 342px; font-weight: bold">Financial Information Available</td>
                                        <td style="width: 364px">&nbsp;</td>
                                        <td>&nbsp;</td>
                                    </tr>
                                    <tr>
                                        <td class="modal-lg" style="width: 342px">
                                            <asp:DropDownList ID="ddFinance" runat="server" Height="30px" Width="100px" CssClass="form-control form-rounded" AutoPostBack="True" OnSelectedIndexChanged="ddFinance_SelectedIndexChanged">
                                                <asp:ListItem Selected="True">Select</asp:ListItem>
                                                <asp:ListItem Value="1">Yes</asp:ListItem>
                                                <asp:ListItem Value="0">No</asp:ListItem>
                                            </asp:DropDownList>
                                        </td>
                                        <td style="width: 364px">
                                            &nbsp;</td>
                                        <td>
                                            &nbsp;</td>
                                    </tr>
                                    <tr>
                                        <td class="modal-lg" style="width: 342px">&nbsp;</td>
                                        <td style="width: 364px">&nbsp;</td>
                                        <td>&nbsp;</td>
                                    </tr>
                                    <tr id="finance1" runat="server">
                                        <td class="modal-lg" style="width: 342px"><b class="tdFont">Primary Payment Method</b></td>
                                        <td style="width: 364px"><b class="tdFont">Secondary Payment Method</b></td>
                                        <td>&nbsp;</td>
                                    </tr>
                                    <tr id="finance2" runat="server">
                                        <td class="modal-lg" style="width: 342px">
                                            <asp:DropDownList ID="ddPrimaryPayment" runat="server" Height="30px" Width="300px" CssClass="form-control form-rounded">
                                            </asp:DropDownList>
                                        </td>
                                        <td style="width: 364px">
                                            <asp:DropDownList ID="ddSecondaryPayment" runat="server" Height="30px" Width="300px" CssClass="form-control form-rounded">
                                            </asp:DropDownList>
                                        </td>
                                        <td>&nbsp;</td>
                                    </tr>
                                    <tr>
                                        <td class="modal-lg" style="width: 342px">&nbsp;</td>
                                        <td style="width: 364px">&nbsp;</td>
                                        <td>&nbsp;</td>
                                    </tr>
                                    <tr id="finance3" runat="server">
                                        <td class="tdFont" >Total Hospital Charges</span></td>
                                        <td style="width: 364px; font-weight: bold"><span style="color: #0033CC"><b class="tdFont">Total Reimbursement</b></span></td>
                                        <td>&nbsp;</td>
                                    </tr>
                                    <tr id="finance4" runat="server">
                                        <td class="modal-lg" style="width: 342px">
                                            <asp:TextBox ID="totalHospitalCharges" runat="server" Height="30px" Width="151px" CssClass="form-control form-rounded"></asp:TextBox>
                                            <br />
                                            <asp:RegularExpressionValidator ID="ValTotalHospitalCharges" runat="server" ControlToValidate="totalHospitalCharges" ErrorMessage="Enter Numeric Value" Font-Size="XX-Small" ForeColor="Red" ValidationExpression="\d+" ValidationGroup="financial"></asp:RegularExpressionValidator>
                                        </td>
                                        <td style="width: 364px">
                                            <asp:TextBox ID="totalReinbursment" runat="server" Height="30px" Width="149px" CssClass="form-control form-rounded"></asp:TextBox>
                                            <br />
                                            <asp:RegularExpressionValidator ID="ValTotalReimbursement" runat="server" ControlToValidate="totalReinbursment" ErrorMessage="Enter Numeric Value" Font-Size="XX-Small" ForeColor="Red" ValidationExpression="\d+" ValidationGroup="financial"></asp:RegularExpressionValidator>
                                        </td>
                                        <td>&nbsp;</td>
                                    </tr>
                                    <tr>
                                        <td class="modal-lg" style="width: 342px">&nbsp;</td>
                                        <td style="width: 364px">&nbsp;</td>
                                        <td>&nbsp;</td>
                                    </tr>
                                </table>
                                    </asp:Panel>
                                <div class="container-fluid">
                                    <div class="row">
                                        <div class="col-lg-12" style="top: 0px; left: 2px; margin-top: 0px;">
                                            <div class="col-lg-4"></div>
                                            <div class="col-lg-4">
                                                <div class="col-lg-6" style="text-align: center;">
                                                    <asp:Button ID="resetFinancialBtn" runat="server" Text="Reset" class="btn-danger" Height="35px" Width="75px" OnClick="resetFinancialBtn_Click" />
                                                </div>
                                                <div class="col-lg-6" style="text-align: center;">
                                                    <asp:Button ID="SaveFinance_Btn" runat="server" Text="Save" class="btn-primary" Height="35px" Width="119px" OnClick="SaveFinance_Click" ValidationGroup="financial" />
                                                </div>
                                            </div>
                                            <div class="col-lg-4"></div>
                                        </div>
                                    </div>
                                </div>
                            </div>
            </div>
        </div>
</div> 
 
</div>
            <asp:HiddenField ID="hfTab" runat="server" /> 
        </ContentTemplate>
            </asp:updatepanel>
        </form>
        <script src="https://cdn.syncfusion.com/ej2/dist/ej2.min.js"></script>
      <link href="https://cdn.syncfusion.com/ej2/material.css" rel="stylesheet">
       
        <script src="https://ajax.googleapis.com/ajax/libs/jquery/1.11.3/jquery.min.js"></script>
        <link href="assets/bootstrap-timepicker/css/bootstrap-timepicker.css" rel="stylesheet" />
        <script src="assets/bootstrap-timepicker/js/bootstrap-timepicker.min.js"></script>
        <script> var jt = $.noConflict(true);</script>
        <script>
            function loaddate() {
                var datepicker1 = new ej.calendars.DatePicker({
            
            format: 'dd-MM-yyyy', width: "200px"
            });
            datepicker1.appendTo("#<%=patientDob.ClientID%>");
            var datepicker2 = new ej.calendars.DatePicker({
                value: new Date(),
                format: 'dd-MM-yyyy', width: "200px"
            });
            datepicker2.appendTo("#<%=txtdate.ClientID%>");
            var datepicker3 = new ej.calendars.DatePicker({
            
            format: 'dd-MM-yyyy', width: "200px"
            });
            datepicker3.appendTo("#<%=injurydate.ClientID%>");
            var datepicker4 = new ej.calendars.DatePicker({
            
            format: 'dd-MM-yyyy', width: "150px"
            });
            datepicker4.appendTo("#<%=transferArrivalDate.ClientID%>");
            var datepicker5 = new ej.calendars.DatePicker({
            
            format: 'dd-MM-yyyy', width: "150px"
            });
            datepicker5.appendTo("#<%=transferDepartedDate.ClientID%>");
            var datepicker6 = new ej.calendars.DatePicker({
            
            format: 'dd-MM-yyyy', width: "150px"
            });
            datepicker6.appendTo("#<%=emergencyTTDate.ClientID%>");
            var datepicker7 = new ej.calendars.DatePicker({
            
            format: 'dd-MM-yyyy', width: "150px"
            });
            datepicker7.appendTo("#<%=emergencyEDDate.ClientID%>");
            var datepicker8 = new ej.calendars.DatePicker({
            
            format: 'dd-MM-yyyy', width: "150px"
            });
            datepicker8.appendTo("#<%=Dischargedate1.ClientID%>");
            var datepicker9 = new ej.calendars.DatePicker({
            
            format: 'dd-MM-yyyy', width: "150px"
            });
            datepicker9.appendTo("#<%=emergencyVitalsAtDate.ClientID%>");
            var datepicker10 = new ej.calendars.DatePicker({
            
            format: 'dd-MM-yyyy', width: "150px"
            });
            datepicker10.appendTo("#<%=emergencyGCSAtDate.ClientID%>");
            var datepicker11 = new ej.calendars.DatePicker({
            
            format: 'dd-MM-yyyy', width: "150px"
            });
            datepicker11.appendTo("#<%=transferGCSAtDate.ClientID%>");
             var datepicker12 = new ej.calendars.DatePicker({
            
            format: 'dd-MM-yyyy', width: "150px"
            });
            datepicker12.appendTo("#<%=transferVitalsAtDate.ClientID%>");

            var datepicker14 = new ej.calendars.DatePicker({
            
            format: 'dd-MM-yyyy', width: "150px"
            });
            datepicker14.appendTo("#<%=ddOperationDate1.ClientID%>");

            var datepicker15 = new ej.calendars.DatePicker({
            
            format: 'dd-MM-yyyy', width: "150px"
            });
            datepicker15.appendTo("#<%=ddOperationDate2.ClientID%>");

            var datepicker15 = new ej.calendars.DatePicker({
            
            format: 'dd-MM-yyyy', width: "150px"
            });
            datepicker15.appendTo("#<%=ddOperationDate3.ClientID%>");
            }
            function loadtime() {
                jt(function () {
                jt("#<%=time1.ClientID%>").timepicker({
                    showInputs: false
                });
                jt("#<%=injuryTime.ClientID%>").timepicker({
                    showInputs: false
                });
                jt("#<%=transferArrivalTime.ClientID%>").timepicker({
                    showInputs: false
                });
                jt("#<%=transferDepartedTime.ClientID%>").timepicker({
                    showInputs: false
                });
                jt("#<%=emergencyEDTime.ClientID%>").timepicker({
                    showInputs: false
                });
                jt("#<%=emergencyTTTime.ClientID%>").timepicker({
                    showInputs: false
                });
                jt("#<%=emergencySpecialityTime.ClientID%>").timepicker({
                    showInputs: false
                });
                jt("#<%=Dischargetime1.ClientID%>").timepicker({
                    showInputs: false
                });
                jt("#<%=emergencyGCSAtTime.ClientID%>").timepicker({
                    showInputs: false
                });
                jt("#<%=emergencyVitalsAtTime.ClientID%>").timepicker({
                    showInputs: false
                });
                jt("#<%=transferGCSAtTime.ClientID%>").timepicker({
                    showInputs: false
                });
                jt("#<%=transferVitalsAtTime.ClientID%>").timepicker({
                    showInputs: false
                });
                 jt("#<%=ddOperationTime1.ClientID%>").timepicker({
                    showInputs: false
                });
                 jt("#<%=ddOperationTime2.ClientID%>").timepicker({
                    showInputs: false
                });
                 jt("#<%=ddOperationTime3.ClientID%>").timepicker({
                    showInputs: false
                    });
                 jt("#<%=emergencySpecialityTimeAvailable.ClientID%>").timepicker({
                    showInputs: false
                     });
                })
            }
        </script>
           <script>
            //Re-Create for on page postbacks
            var prm = Sys.WebForms.PageRequestManager.getInstance();
            prm.add_endRequest(function () {
               

                //date
                loaddate();

                //time
                loadtime();

            });
   
           
           
        </script>
</body>
</html>
  





