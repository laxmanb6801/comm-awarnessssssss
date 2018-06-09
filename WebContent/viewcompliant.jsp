    <%@ page import="java.sql.*,databaseconnection.*" %>

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
					<li><a href="compl_type.jsp">Category</a></li>
					<li><a href="viewcompliant.jsp" class="current">View</a></li>
					<li><a href="logout.jsp">Logout</a></li>
					
				</ul>     	
			</div> 
      <!-- end of tooplate_menu -->
      </div>
    <!-- end of forever header -->
		
			
				 <table  align="center"width="553" height="360">
        <tr> 
          <td >
          
           <p>&nbsp;</p>
          <p>&nbsp;</p>
          </td>
        </tr>
		<%
		String cc = request.getParameter("category");
		%>
		<center> <!--<tr><td><a href="graph.jsp?a=<%=cc%>">View_Chart</a></td></tr> -->
		
		 
        <tr> 
       
         <td> 
		 
		 <div class="CSSTableGenerator">
		  <table width="536" height="66" align="center">
		   <p align="center"><font color="#660033" size="+2"><strong>View Compliant Details</strong></font></p>
		 <!--<tr><td colspan="12"> View Compliant Details</td></tr>-->
		  
                  <tr> 
				 
                    <td>Name</td>
                    <td>Date</td>
                 
                 
             	 <td>Email</td>
             	 <td>Incident Place</td>
				 
              	<td>Incident District</td>
             	 <td>Category</td>
             	
                    <td>Video File</td>
					<td>Status</td>
                    <td>Play</td>
                  </tr>
                  <%
				  String aa = request.getParameter("indistrict");
				  session.setAttribute("a",aa);
				  String aaa = request.getParameter("category");
				  session.setAttribute("kk",aaa);
				  	String a=request.getParameter("file");
					session.setAttribute("video",a);
					String videoplay = (String)session.getAttribute("video");
					
					String jj="process";
              Connection con =null;
              PreparedStatement ps = null;
              
             try 
             {
            	 con = databasecon.getconnection();
            	 ps = con.prepareStatement("select * from compliant where category='"+aaa+"' AND status='"+jj+"'");
            	 ResultSet rs = ps.executeQuery();
            	 
            	 while(rs.next())
            	 {
            		 %>
					
                  <tr> 
				     <td>  <%=rs.getString("name") %> </td>
                     <td>  <%=rs.getString("date1") %></td>
 					 <td><%=rs.getString("email") %></td> 
					 <td><%=rs.getString("inplace")%></td>
                    <td> <%=rs.getString("indistrict") %></td>
					<td> <%=rs.getString("category") %></td>
					<td> <%=rs.getString("video") %></td>
					<td> <%=rs.getString("status") %></td>
                                   
                    <td><button><a href="trialcount.jsp?aaa=<%=rs.getString("video") %> ,<%=rs.getString("indistrict")%>"><font color="black">Play</font></a></button></td>
				
                  </tr>
				 
                  <%
            	 }
             }
              catch(Exception e)
              {
            	  e.printStackTrace();
              }
      
              
              %>
			  
                </table>
				</div>
				</table>
				<table>
				 <center><a href="chart1.jsp?a=<%=cc%>"><font color="#FF0000" size="+1">View Chart</font></a></center>
				 </table> 
		 </center>
		</div> <!-- end of middle -->
		
		
	</div> <!-- end of fp wrapper -->
</div> <!-- end of fp 100% wrapper -->
</body>
</html>
