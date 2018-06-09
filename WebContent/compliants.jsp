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
					<li><a href="compl_type.jsp" class="current">Compliant Type</a></li>
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
          
        </tr>
        <tr> 
          <td><img  src="images/gallery/image_03_b.jpg" width="250" height="175"></td>
          <td>
		 <!-- <form method="post" name="f" action="viewcompliant.jsp">-->
		 <form method="post" name="f" action="compliants.jsp">
            
            	<table>
				
             
             <tr> <td></td><td align="center"> <input type="submit" value="Submit" id="submit" name="submit" />
            
              </table>
            </form>
						
		  </td>
        </tr>
      </table>
		</div> <!-- end of middle -->
		
		
	</div> <!-- end of fp wrapper -->
</div> <!-- end of fp 100% wrapper -->
</body>
</html>
<%
String cat = request.getParameter("category");
		session.setAttribute("category",cat);
		%>