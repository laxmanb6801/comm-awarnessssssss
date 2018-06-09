<%@ page import="java.sql.*" %>
<%@ page import="java.io.*" %>
<%@ page import="java.awt.*" %>
<%@ page import="org.jfree.chart.ChartFactory" %>
<%@ page import="org.jfree.chart.ChartUtilities" %>
<%@ page import="org.jfree.chart.JFreeChart" %>
<%@ page import="org.jfree.chart.plot.PlotOrientation"%>
<%@ page import="org.jfree.data.*" %>
<%@ page import="org.jfree.data.jdbc.JDBCCategoryDataset"%>

<%

			String  pblm=request.getParameter("a");
 			System.out.println(pblm);
//String query="select indistrict,sum(count) from compliant GROUP BY indistrict";
String query= ("SELECT indistrict,SUM(count) FROM compliant WHERE category='"+pblm+"' GROUP BY indistrict");

JDBCCategoryDataset dataset=new JDBCCategoryDataset("jdbc:mysql://localhost:3306/community awarness","com.mysql.jdbc.Driver","root","root");

dataset.executeQuery( query);
JFreeChart chart = ChartFactory .createBarChart3D("Regenerated Files", "filename", "Regenerated_count",dataset, PlotOrientation.VERTICAL, true, true, false);
                
try
{
ChartUtilities.saveChartAsJPEG(new File("G://PRAVEEN//Community awarness//WebContent//images//logotype2.jpg"), chart, 700, 300);

}
catch (IOException e)
{
System.out.println("Problem in creating chart.");
}
%>
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
					<li><a href="chart1.jsp" class="current">Graph</a></li>
					<li><a href="viewcompliant.jsp" >View</a></li>
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
          <p><strong><font color="#FF3300" size="4">Flow Chart</font></strong></p></td>
        </tr>
		<%
		String cc = request.getParameter("category");
		%>
		 <!--<tr><td><a href="graph.jsp?a=<%=cc%>">View_Chart</a></td></tr> -->
		 
        <tr> 
       
         
        <td><img src="images/logotype2.jpg">
</td>
        </tr>
      </table>
		</div> <!-- end of middle -->
		
		
	</div> <!-- end of fp wrapper -->
</div> <!-- end of fp 100% wrapper -->
</body>
</html>
