<%@ page contentType="text/html; charset=iso-8859-1" language="java" import="java.sql.*" errorPage="" %>
<html>
<head>
<title>Untitled Document</title>
<meta http-equiv="Content-Type" content="text/html; charset=iso-8859-1">
</head>

<body>
<%

String aa = request.getParameter("admin");
session.setAttribute("admin",aa);
System.out.println(aa);
String bb = request.getParameter("pass");

if(aa.equals("admin")&& bb.equals("admin"))

{
	response.sendRedirect("district.jsp");
	}




%>
</body>
</html>
