<%@page import="java.awt.Window"%>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    <%@ page import="java.sql.*,databaseconnection.*" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Insert title here</title>
</head>
<body>
<%

String bb = request.getParameter("uname");
session.setAttribute("username",bb);
System.out.println(bb);
String cc = request.getParameter("pass");


Connection con = null;
PreparedStatement ps = null;

try
{
	con = databasecon.getconnection();
	ps = con.prepareStatement("select * from reg  where uname='"+bb+"' and pass='"+cc+"'");
	ResultSet rs = ps.executeQuery();
	
	while(rs.next())
	{
		String b = rs.getString("district");
		session.setAttribute("district",b);
		System.out.println(b);
		
		String c = rs.getString("address");
		session.setAttribute("address",c);
		System.out.println(c);
		
		String d = rs.getString("pin");
		session.setAttribute("pin",d);
		System.out.println(d);
		
		String e = rs.getString("mobile");
		session.setAttribute("mno",e);
		System.out.println(e);
		
		String f = rs.getString("email");
		session.setAttribute("email",f);
		System.out.println(f);
		
		rs.getString("uname");
		rs.getString("pass");
	
		
		response.sendRedirect("service.jsp");
		
		
	}	

}

catch(Exception e)
{
	e.printStackTrace();
}

%>
</body>
</html>