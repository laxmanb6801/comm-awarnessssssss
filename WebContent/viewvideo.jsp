﻿<%@ page import="java.io.*,java.text.ParseException,java.lang.*,java.sql.*,java.util.*,java.util.Date,java.text.*,java.text.SimpleDateFormat" %>
<%@page import="com.oreilly.servlet.*,java.sql.*,java.lang.*,databaseconnection.*,java.text.SimpleDateFormat,java.util.*,java.io.*,javax.servlet.*, 

javax.servlet.http.*"  errorPage="Error.jsp"%>
<%@page import=" java.security.MessageDigest"%>

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
h{
font-size:25px;
color:red;
}



</style>

</head>
<body id="fp_body">

<div id="tooplate_fp_100_wrapper">
	<div id="tooplate_fp_wrapper">
	
		<div id="tooplate_header">
			
			
			<div id="tooplate_menu">
				<ul>
					<li><a href="index.html">Home</a></li>
					<li><a href="viewcompliant.jsp">View</a></li>
					<li><a href="viewvideo.jsp"  class="current">Video</a></li>
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
          <p>&nbsp;</p>
          <p>&nbsp;</p>
          <p><strong><font color="#FFFFFF" size="4">Video Play</font></strong></p></td>
        </tr>
        <tr> 
          <td><img  src="images/gallery/image_03_b.jpg" width="396" height="263"></td>
          <td>
		      <%
		
		
		
		String vname=(String)session.getAttribute("vname");
	
Connection con=null;
ResultSet rs=null;
PreparedStatement ps=null;
Statement st=null;
try
{
con=databasecon.getconnection();
 st=con.createStatement();   
 String sqll="select id,video from compliant where video='"+vname+"'";
 rs=st.executeQuery(sqll);
while(rs.next()){
	
	String id=rs.getString("id");
	session.setAttribute("sid",id);
	
	String f=rs.getString("video");
	System.out.println("@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@"+f);
	
	

%>
						
		  </td>
       <!-- </tr>
		<tr>-->

<td>

<video width="550" height="300" controls="controls" autoplay="autoplay">
  <source src="documents/<%=f%>" type="video/mp4" />
   <source src="documents/<%=f%>" type="video/ogg" />
  <source src="documents/<%=f%>" type="video/webm" />
  <object data="documents/<%=f%>" width="620" height="240">
    <embed src="documents/<%=f%>" width="620" height="240" />
  </object> 
</video>


</td>

</tr>

		
		<% 

}


}

catch(Exception e2)
{
System.out.println(e2);
}





%>
		
      </table>
		</div> <!-- end of middle -->
		
		
	</div> <!-- end of fp wrapper -->
</div> <!-- end of fp 100% wrapper -->
</body>
</html>
