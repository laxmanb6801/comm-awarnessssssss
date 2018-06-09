<%@ page contentType="text/html; charset=iso-8859-1" language="java" import="java.sql.*" errorPage="" %>
<html>
<head>
<title>Untitled Document</title>
<meta http-equiv="Content-Type" content="text/html; charset=iso-8859-1">
</head>

<body>
<%

String aa = request.getParameter("dname");
String bb = request.getParameter("pass");

if(aa.equals("developer")&& bb.equals("developer"))

{
	response.sendRedirect("compl_type.jsp");
	}

%>
</body>
</html>
