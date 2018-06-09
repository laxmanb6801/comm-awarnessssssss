<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    <%@ page import="java.sql.*,databaseconnection.*" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Community Awareness</title>
</head>
<body>
<%
String a= request.getParameter("name");
System.out.println(a);
String b = request.getParameter("district");
session.setAttribute("district",b);
System.out.println(b);
String c = request.getParameter("address");
session.setAttribute("address",c);
System.out.println(c);
String d = request.getParameter("pin");
session.setAttribute("pin",d);
System.out.println(d);
String e = request.getParameter("mno");
session.setAttribute("mno",e);
System.out.println(e);
String f = request.getParameter("email");
session.setAttribute("email",f);
System.out.println(f);
String g = request.getParameter("uname");
String h = request.getParameter("pass");
System.out.println(h);

Connection con = null;
PreparedStatement ps = null;

try
{
	con = databasecon.getconnection();
	ps= con.prepareStatement("insert into reg(name,district,address,pin,mobile,email,uname,pass) values('"+a+"','"+b+"','"+c+"','"+d+"','"+e+"','"+f+"','"+g+"','"+h+"')");
	int x = ps.executeUpdate();
	if(x>0)
	{
		response.sendRedirect("login.jsp");
	}
}
catch(Exception e1)
{
	e1.printStackTrace();
}


%>
</body>
</html>