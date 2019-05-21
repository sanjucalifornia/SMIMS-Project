<%@ Page Language="C#" AutoEventWireup="true" CodeFile="search_1.aspx.cs" Inherits="search_1" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>Search Patient</title>
    
    <script src="//netdna.bootstrapcdn.com/bootstrap/3.1.0/js/bootstrap.min.js"></script>
    <link href="css/bootstrap.css" rel="stylesheet" />
    <link href="//netdna.bootstrapcdn.com/font-awesome/4.0.3/css/font-awesome.css" rel="stylesheet"/>
    <link href="css/new.css" rel="stylesheet" />
    <link href="css/custom.css" rel="stylesheet" />
    <link href="css/GridView.css" rel="stylesheet" />
    <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.0/css/bootstrap.min.css"/>
    <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.3.1/jquery.min.js"></script>
    <script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.0/js/bootstrap.min.js"></script>
    <script>$(function () {

            $('#slide-submenu').on('click', function () {
                $(this).closest('.list-group').fadeOut('slide', function () {
                    $('.mini-submenu').fadeIn();
                });

            });

            $('.mini-submenu').on('click', function () {
                $(this).next('.list-group').toggle('slide');
                $('.mini-submenu').hide();
            })
        })
    </script>
</head>
<body>
    <form id="form1" runat="server">
    <div class="container-fluid">
    <nav class="navbar navbar-default" role="navigation" style="background-color: #0099CC">
    <div class="container-fluid">
    <!-- Brand and toggle get grouped for better mobile display -->
    <div class="navbar-header" >
      <button type="button" class="navbar-toggle" data-toggle="collapse" data-target="#bs-example-navbar-collapse-1">
        <span class="sr-only">Toggle navigation</span>
        <span class="icon-bar"></span>
        <span class="icon-bar"></span>
        <span class="icon-bar"></span>
      </button>
      <a class="navbar-brand" href="#" style="font-weight: normal; color: #FFFFFF; font-size: large;">Trauma Registry</a>
    </div>

    <!-- Collect the nav links, forms, and other content for toggling -->
    <div class="collapse navbar-collapse" id="bs-example-navbar-collapse-1">
      <ul class="nav navbar-nav">
        
        
        
          
        
      </ul>
     
      <ul class="nav navbar-nav navbar-right">
      
      </ul>
    </div><!-- /.navbar-collapse -->
  </div><!-- /.container-fluid -->
</nav>

	<div class="row">
		<div class="col-lg-2 col-sm-4 col-md-3 sidebar">
    <div class="mini-submenu">
        <span class="icon-bar"></span>
        <span class="icon-bar"></span>
        <span class="icon-bar"></span>
    </div>
    <div class="list-group">
        <span href="#" class="list-group-item active">
            Menu
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
            <i class="fa fa-envelope"></i> Report
        </a>
    </div>        
</div>
        <div class="col-lg-10 ">
            
                <div>
                    <table>
                    <tr><td><h4>Search by :</h4></td><td>&nbsp;</td></tr>
                    <tr><td>
                        <asp:DropDownList ID="DropDownList1" runat="server" AutoPostBack="True" Height="30px"  Width="200px">
                            <asp:ListItem Value="fname">First Name</asp:ListItem>
                            <asp:ListItem Value="lname">Last Name</asp:ListItem>
                            <asp:ListItem Value="police">Police Station</asp:ListItem>
                            <asp:ListItem Value="gcs">GCS Value</asp:ListItem>
                        </asp:DropDownList>
                        </td><td>&nbsp;</td></tr>
                    <tr><td>&nbsp;</td><td>&nbsp;</td></tr> 
                    <tr><td>
                        <asp:TextBox ID="TextBox1" runat="server" Height="22px" Width="200px"></asp:TextBox>
                        </td><td>&nbsp;</td></tr>
                    
                    
                        
                    <tr><td>&nbsp;</td><td>&nbsp;</td></tr>
                    
                    
                        
                       <tr><td>
                                
                                <asp:Button ID="Button2" runat="server" Text="Search" OnClick="Search_btn2_Click" Height="23px" />
                                
                            </td><td>&nbsp;</td></tr> 
                       <tr><td>
                                
                                <asp:Label ID="Label1" runat="server" Visible="False">&quot;No record found for the Patient&quot;</asp:Label>
                                
                            </td><td>&nbsp;</td><td> </td><td>&nbsp;</td><td>&nbsp;</td><td>&nbsp;</td></tr>
                        <tr>
                            <td>
                                
                                &nbsp;</td>
                            <td>
                                
                                &nbsp;</td>
                        </tr>
                        
                        
                        <tr>
                            <td>
                                
                                </td>
                            <td>
                                
                                &nbsp; </td>
                        </tr>
                        
                        
                        </table>
                    <table style="width:80%">
                        <tr><td> 
                            <div style=" margin-left: auto; margin-right: auto">

                                <asp:GridView ID="GridView2" runat="server" AutoGenerateColumns="False" Width="498px" CssClass="myGridClass" >
                                     <RowStyle HorizontalAlign="Center" />
                                    <Columns >
                                        <asp:BoundField DataField="pid" HeaderText="Trauma ID" SortExpression="pid" />
                                        <asp:BoundField DataField="firstname" HeaderText="First Name" SortExpression="firstname" />
                                        <asp:BoundField DataField="lastname" HeaderText="Last Name" SortExpression="lastname" />

                                        <asp:TemplateField>
                                            <ItemTemplate>
                                                <asp:LinkButton ID="Lbl" runat="server" CommandArgument='<%#Eval("pid") %>' OnClick="Lbl_Click" Text="Update" />
                                            </ItemTemplate>
                                        </asp:TemplateField>

                                    </Columns>

                                </asp:GridView>

                            </div></td></tr>
                    </table>

                </div>
         

    </div>
        <br />
       
        
    
        
        </div>
        </form>
</body>
</html>
