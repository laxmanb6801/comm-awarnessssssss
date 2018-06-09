<%@page import="com.oreilly.servlet.*,java.sql.*,java.lang.*,databaseconnection.*,java.text.SimpleDateFormat,java.util.*,java.io.*,javax.servlet.*, javax.servlet.http.*" %> 
<%@page import="com.oreilly.servlet.MultipartRequest"%>
<%@page import=" java.security.MessageDigest"%>

<%@ page import="java.io.*"%>
<%@ page import="java.util.*"%>
<%@ page import="java.sql.*,databaseconnection.*"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Insert title here</title>
</head>
<body>
<%


Connection con=null;

ResultSet rs=null;

PreparedStatement ps=null;

ArrayList list = new ArrayList();

		ServletContext context = getServletContext();
		String a=request.getParameter("file");
		session.setAttribute("video",a);
		System.out.println(a);
		String dirName =context.getRealPath("\\documents\\"); 
			
		System.out.println(dirName);
		String paramname=null;
		String blood=null,datafile=null;
		
		String username =null, dt1=null,  address=null,  district=null,  pin =null, mno = null,  email = null;  
		String inplace = null,  indistrict = null,  category ="Practice of untouchability",  complaint = null;
		String status="Process";
		
		int id=0;
		String date1=null;
		File file1 = null;
	try {
			
			/* MultipartRequest multi = new MultipartRequest(request, dirName,	103333 * 1033324 * 103333324); // 10MB */

			MultipartRequest multi = new MultipartRequest(request,dirName,103333*1033324*103333324);
			
			Enumeration params = multi.getParameterNames();
			while (params.hasMoreElements()) 
			{
				paramname = (String) params.nextElement();
				
				
				if(paramname.equalsIgnoreCase("blood"))
				{
					blood=multi.getParameter(paramname);
				}
			
				if(paramname.equalsIgnoreCase("date"))
				{
					date1=multi.getParameter(paramname);
				}
				if(paramname.equalsIgnoreCase("datafile"))
				{
					datafile=multi.getParameter(paramname);
				}
				
				
				if(paramname.equalsIgnoreCase("username"))
				{
					username=multi.getParameter(paramname);
				}
				if(paramname.equalsIgnoreCase("dt1"))
				{
					dt1=multi.getParameter(paramname);
				}
				if(paramname.equalsIgnoreCase("address"))
				{
					address=multi.getParameter(paramname);
				}
				if(paramname.equalsIgnoreCase("district"))
				{
					district=multi.getParameter(paramname);
				}
					if(paramname.equalsIgnoreCase("pin"))
				{
					pin=multi.getParameter(paramname);
				}
					if(paramname.equalsIgnoreCase("mno"))
				{
					mno=multi.getParameter(paramname);
				}
					if(paramname.equalsIgnoreCase("email"))
				{
					email=multi.getParameter(paramname);
				}
					if(paramname.equalsIgnoreCase("inplace"))
				{
					inplace=multi.getParameter(paramname);
				}
					if(paramname.equalsIgnoreCase("indistrict"))
				{
					indistrict=multi.getParameter(paramname);
				}
					if(paramname.equalsIgnoreCase("category"))
				{
					category=multi.getParameter(paramname);
				}
				
					if(paramname.equalsIgnoreCase("complaint"))
				{
					complaint=multi.getParameter(paramname);
				}
				if(paramname.equalsIgnoreCase("status"))
				{
					status=multi.getParameter(paramname);
				}
				
			}
					
			int f = 0;
	Enumeration files = multi.getFileNames();	
	while (files.hasMoreElements()) 
	{
		paramname = (String) files.nextElement();
		if(paramname.equals("d1"))
		{
			paramname = null;
		}
		
		if(paramname != null)
		{
			f = 1;
			datafile = multi.getFilesystemName(paramname);
			String fPath = context.getRealPath("\\documents\\"+datafile);
			file1 = new File(fPath);
			FileInputStream fs = new FileInputStream(file1);
			list.add(fs);
		}		
	}
	
	        FileInputStream fs1 = null;


	
con = databasecon.getconnection();	

		ps = con.prepareStatement("insert into compliant(name,date1,address,district,pin,mno,email,inplace,indistrict,category,compliant,video,status) values(?,?,?,?,?,?,?,?,?,?,?,?,?)");
					
ps.setString(1,username);
ps.setString(2,dt1);
ps.setString(3,address);
ps.setString(4,district);

ps.setString(5,pin);
ps.setString(6,mno);
ps.setString(7,email);
ps.setString(8,inplace);
ps.setString(9,indistrict);
ps.setString(10,category);
ps.setString(11,complaint);
ps.setString(12,datafile);
ps.setString(13,status);


int s = ps.executeUpdate();
/* response.sendRedirect("ccccmsg.jsp?message=successfully Submited"); */
response.sendRedirect("success.jsp");

con.close();
ps.close();


}catch(Exception ex){

out.println("Error in connection : "+ex);

}


%>
</body>
</html>
<%
session.setAttribute("video",a);



%>