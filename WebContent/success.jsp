<%@page import="com.oreilly.servlet.*,java.sql.*,java.lang.*,databaseconnection.*,java.text.SimpleDateFormat,java.util.*,java.io.*,javax.servlet.*, javax.servlet.http.*" %>
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
					<li><a href="index.html" >Home</a></li>
					<li><a href="service_one" class="current">Child Labor</a></li>
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
          <td><img  src="images/gallery/image_03_b.jpg" width="396" height="263"></td>
          <%
              String username = (String)session.getAttribute("username");
    
              %>
                
                
                <td> 
				
				</td>
        </tr>
      </table>
<marquee><p><h1><font color="#FF0000">SUCCESSFULLY COMPLETED</font></h1></p></marquee>
		</div> <!-- end of middle -->
		
		
	</div> <!-- end of fp wrapper -->
</div> <!-- end of fp 100% wrapper -->
</body>
</html>