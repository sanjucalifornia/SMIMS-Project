<%@ Page Language="C#" AutoEventWireup="true"%>    
      
<html xmlns="http://www.w3.org/1999/xhtml" >
<head>
<title>untitled</title>
    <link href="assets/datetime/css/bootstrap-datetimepicker.min.css" rel="stylesheet" />
    
    <link href="assets/datetime/bootstrap/css/bootstrap.min.css" rel="stylesheet" />
    
 
</head>
<body >
    <form id="form1" runat="server">
        


                 <div class="form-group">
                <label for="dtp_input1" class="col-md-2 control-label">DateTime Picking</label>
                <div class="input-group date form_datetime col-md-3" >
                    <input class="form-control" size="16" type="text" value="" readonly>
                    <span class="input-group-addon"><span class="glyphicon glyphicon-remove"></span></span>
					<span class="input-group-addon"><span class="glyphicon glyphicon-th"></span></span>
                </div>
                     
                     <asp:TextBox ID="TextBox1" runat="server" data-date-format="dd MM yyyy - HH:ii"></asp:TextBox>
            </div>


    </form>
    <script src="assets/datetime/bootstrap/js/bootstrap.min.js"></script>
    <script src="assets/datetime/jquery/jquery-1.8.3.min.js"></script>
    <script src="assets/datetime/js/bootstrap-datetimepicker.min.js"></script>
    
    <script type="text/javascript">
    $("#<%=TextBox1.ClientID%>").datetimepicker({
        //language:  'fr',
        weekStart: 1,
        todayBtn:  1,
		autoclose: 1,
		todayHighlight: 1,
		startView: 2,
		forceParse: 0,
        showMeridian: 1
    });
	$('.form_date').datetimepicker({
        language:  'fr',
        weekStart: 1,
        todayBtn:  1,
		autoclose: 1,
		todayHighlight: 1,
		startView: 2,
		minView: 2,
		forceParse: 0
    });
	$('.form_time').datetimepicker({
        language:  'fr',
        weekStart: 1,
        todayBtn:  1,
		autoclose: 1,
		todayHighlight: 1,
		startView: 1,
		minView: 0,
		maxView: 1,
		forceParse: 0
        });
        </script>
</body>
</html>