﻿<%@page import="com.oreilly.servlet.*,java.sql.*,java.lang.*,databaseconnection.*,java.text.SimpleDateFormat,java.util.*,java.io.*,javax.servlet.*, javax.servlet.http.*" %>
<%@page import=" java.security.MessageDigest"%>
<%@ page import="java.io.*"%>
<%@ page import="java.util.*"%>
<%@ page import="java.sql.*,databaseconnection.*"%>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
<!-- 
	Template 2019 Pinko
    http://www.tooplate.com/view/2019-pinko
-->
<title> Community Awareness </title>
<meta name="keywords" content="" />
<meta name="description" content="" />
<link href="tooplate_style.css" rel="stylesheet" type="text/css" />
<link rel="stylesheet" type="text/css" href="css/contentslider.css" />
<script type="text/javascript" src="js/contentslider.js">


</script>

<style>
.CSSTableGenerator {
	
	-moz-border-radius-bottomleft:25px;
	-webkit-border-bottom-left-radius:25px;
	border-bottom-left-radius:25px;
	
	-moz-border-radius-bottomright:25px;
	-webkit-border-bottom-right-radius:25px;
	border-bottom-right-radius:25px;
	
	-moz-border-radius-topright:25px;
	-webkit-border-top-right-radius:25px;
	border-top-right-radius:25px;
	
	-moz-border-radius-topleft:25px;
	-webkit-border-top-left-radius:25px;
	border-top-left-radius:25px;
}.CSSTableGenerator table{
    
}.CSSTableGenerator tr:last-child td:last-child {
	-moz-border-radius-bottomright:25px;
	-webkit-border-bottom-right-radius:25px;
	border-bottom-right-radius:25px;
}
.CSSTableGenerator table tr:first-child td:first-child {
	-moz-border-radius-topleft:25px;
	-webkit-border-top-left-radius:25px;
	border-top-left-radius:25px;
}
.CSSTableGenerator table tr:first-child td:last-child {
	-moz-border-radius-topright:25px;
	-webkit-border-top-right-radius:25px;
	border-top-right-radius:25px;
}.CSSTableGenerator tr:last-child td:first-child{
	-moz-border-radius-bottomleft:25px;
	-webkit-border-bottom-left-radius:25px;
	border-bottom-left-radius:25px;
}.CSSTableGenerator tr:hover td{
	background-color:#ffffaa;
		

}
.CSSTableGenerator td{
	vertical-align:middle;
		background:-o-linear-gradient(bottom, #dbb118 5%, #ffffaa 100%);	background:-webkit-gradient( linear, left top, left bottom, color-stop(0.05, #dbb118), color-stop(1, #ffffaa) ); 
	background:-moz-linear-gradient( center top, #dbb118 5%, #ffffaa 100% );
	filter:progid:DXImageTransform.Microsoft.gradient(startColorstr="#dbb118", endColorstr="#ffffaa");	background: -o-linear-gradient(top,#dbb118,ffffaa);

	background-color:#dbb118;

	border:1px solid #ffffff;
	border-width:0px 1px 1px 0px;
	text-align:center;
	padding:10px;
	font-size:14px;
	font-family:Arial;
	font-weight:bold;
	color:#000000;
}.CSSTableGenerator tr:last-child td{
	border-width:0px 1px 0px 0px;
}.CSSTableGenerator tr td:last-child{
	border-width:0px 0px 1px 0px;
}.CSSTableGenerator tr:last-child td:last-child{
	border-width:0px 0px 0px 0px;
}
.CSSTableGenerator tr:first-child td{
		background:-o-linear-gradient(bottom, #3f007f 5%, #000000 100%);	background:-webkit-gradient( linear, left top, left bottom, color-stop(0.05, #3f007f), color-stop(1, #000000) );
	background:-moz-linear-gradient( center top, #3f007f 5%, #000000 100% );
	filter:progid:DXImageTransform.Microsoft.gradient(startColorstr="#3f007f", endColorstr="#000000");	background: -o-linear-gradient(top,#3f007f,000000);

	background-color:#3f007f;
	border:0px solid #ffffff;
	text-align:center;
	border-width:0px 0px 1px 1px;
	font-size:17px;
	font-family:Arial;
	font-weight:bold;
	color:#ffffff;
}
.CSSTableGenerator tr:first-child:hover td{
	background:-o-linear-gradient(bottom, #3f007f 5%, #000000 100%);	background:-webkit-gradient( linear, left top, left bottom, color-stop(0.05, #3f007f), color-stop(1, #000000) );
	background:-moz-linear-gradient( center top, #3f007f 5%, #000000 100% );
	filter:progid:DXImageTransform.Microsoft.gradient(startColorstr="#3f007f", endColorstr="#000000");	background: -o-linear-gradient(top,#3f007f,000000);

	background-color:#3f007f;
}
.CSSTableGenerator tr:first-child td:first-child{
	border-width:0px 0px 1px 0px;
}
.CSSTableGenerator tr:first-child td:last-child{
	border-width:0px 0px 1px 1px;
}

</style>
</head>
<body id="fp_body">

<div id="tooplate_fp_100_wrapper">
	<div id="tooplate_fp_wrapper">
	
		<div id="tooplate_header">
			
			
			<div id="tooplate_menu">
				<ul>
					<li><a href="index.html" >Home</a></li>
					<li><a href="service.jsp" >Services</a></li>
					<li><a href="service_three" class="current">Pollution</a></li>
					<li><a href="status.jsp" >Status</a></li>
					<li><a href="logout.jsp">Logout</a></li>
					
				</ul>      	
			</div> 
      <!-- end of tooplate_menu -->
      </div>
    <!-- end of forever header -->
		
			
				 <table  align="center"width="553" height="360">
        <tr> 
          <td height="67" colspan="2" align="center">
          
           <p>&nbsp;</p>
          <p>&nbsp;</p>
          <p>&nbsp;</p>
          <p>&nbsp;</p>
         
        </tr>
        <tr> 
          <td><img  src="images/images (3).jpg" width="250" height="150"></td>
          <%
              String username = (String)session.getAttribute("username");
			  String address =(String)session.getAttribute("address");
			  String district = (String)session.getAttribute("district");
			  String pin = (String)session.getAttribute("pin");
			  String mobile = (String)session.getAttribute("mno");
			  String email =(String)session.getAttribute("email");
    
              %>
                
                 <%

java.util.Date now = new java.util.Date();
	String date=now.toString();
	 String DATE_FORMAT = "yyyy-MM-dd hh:mm:ss";
	 SimpleDateFormat sdf = new SimpleDateFormat(DATE_FORMAT);
     String strDateNew = sdf.format(now) ;


%>
                <td> <form action="service_store3.jsp" enctype="multipart/form-data" method="post">
                   <div class="CSSTableGenerator">
			      <table>
				  <tr><td colspan="2"> <p align="center">Compliant Registration Details</p></td></tr>
				
				  <tr><td colspan="2"> <h4><u><font color="#FF00FF">Your Details</font></u></h4></td></tr>
	  
                    <tr> 
                      <td>Name</td>
                      <td><input type="text" name="username" value="<%=username%>" (sssssssssss)></td>
                    </tr>
                    <tr><td>Date</td>
                    <td><input type="text" name="dt1" value="<%=strDateNew%>" ></td>
                    </tr>
                    <tr> 
                      <td>Address</td>
                      <td><input type="text" name="address" value="<%=address%>"></td></tr>
					  
                      
					  <tr><td>District</td>
					  <td><input type="text" name="district" value="<%=district%>"></td></tr>
					  
                      <tr> 
                      <td>Pincode</td>
                      <td><input type="text" name="pin"  value="<%=pin%>"></td></tr>
					  
                      <tr><td>Mobile</td>
                      <td><input type="text" name="mno" value="<%=mobile%>"></td></tr>
                    
                    <tr> 
                      <td>Email</td>
                      <td><input type="text" name="email"  value="<%=email%>"></td> </tr>
                    
                   
                   <tr><td colspan="2"> <h4><u><font color="#FF00FF">Incident's Details</font></u></h4></td></tr>
                    <tr> 
                      <td>Incident Address</td>
                      <td><textarea rows="5" cols="22" name="inplace" ></textarea> 
                      </td></tr>
                     
					 
					  <tr><td>Incident District</td>
					  
                     	<td><select name="indistrict" id="district"  style="width: 175px;" />
                        <option value="Select">Select</option> <option value="Kanchipuram">Kanchipuram</option> 
                        <option value="Tiruvallur">Tiruvallur</option> <option value="Cuddalore">Cuddalore</option> 
                        <option value="Villupuram">Villupuram</option> <option value="Vellore">Vellore</option> 
                        <option value="Tiruvannamalai">Tiruvannamalai</option></select> 
                      </td></tr>
                  
                    	<tr> 
                      <td>Write Complaint</td>
                      <td><textarea name="complaint" cols="22" rows="5"  ></textarea></td>
                    </tr>
                    <tr> 
                      <td>Vedio</td>
                      <td><input type="file" name="file" class="required input_field"></textarea> </td></tr>
                      
                 
                    <tr> 
                      <td></td>
                      <td><input type="submit" value="Submit" id="submit" name="submit" class="submit_btn float_l" /> 
                    
                   <input type="reset" value="Reset" id="reset" name="reset" class="submit_btn float_l" /></td>
                    </tr>
                  </table>
				   </div>
                </form></td>
        </tr>
      </table>
	  
	  <%
	  String cat = request.getParameter("category");
	  session.setAttribute("category",cat);
	  
	  %>
		</div> <!-- end of middle -->
		
		
	</div> <!-- end of fp wrapper -->
</div> <!-- end of fp 100% wrapper -->
</body>
</html>