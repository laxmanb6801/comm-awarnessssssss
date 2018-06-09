<%@ page language="java" import="java.sql.*,databaseconnection.*;" errorPage="" %>
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
					<li><a href="index.html" class="current">Home</a></li>
					<li><a href="login.jsp">Login</a></li>
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
          <p><strong><font color="#FFFFFF" size="4">Registration page</font></strong></p></td>
        </tr>
        <tr> 
          <td><img  src="images/gallery/image_03_b.jpg" width="396" height="263"></td>
         <td> 
		 
		 <% 

			String  pblm=request.getParameter("a");
 			System.out.println(pblm);

try

        {

Connection con=databasecon.getconnection();

Statement st=con.createStatement();

//String sql="select indistrict,sum(count) from compliant GROUP BY indistrict";

String sql = ("SELECT indistrict,SUM(count) FROM compliant WHERE category='"+pblm+"' GROUP BY indistrict");
ResultSet rs=st.executeQuery(sql);

while(rs.next())

    {
	

  %>

		 <script type="text/javascript" src="/assets/script/canvasjs.min.js"></script>
<script type="text/javascript" src="css/canvasjs.min.js"></script>
  	
      <script type="text/javascript">
      window.onload = function () {
          var chart = new CanvasJS.Chart("chartContainer", {
              theme: "theme2",//theme1
              title:{
                  text: " "              
             },
              data: [              
              {
// Change type to "bar", "splineArea", "area", "spline", "pie",etc.
                  type: "column",
                  dataPoints: [
                 
               
				  { label: "category ", y: 10 },
				  { label: "count", y: 20 }
				  
                  ]
              }
              ]
          });

          chart.render();
      }
  </script>
		    <%
    
	}



}

catch(Exception e)

        {

out.println(e);

}

%>
		 
		 
		 </td>
        </tr>
      </table>
		</div> <!-- end of middle -->
		
		
	</div> <!-- end of fp wrapper -->
</div> <!-- end of fp 100% wrapper -->
</body>
</html>