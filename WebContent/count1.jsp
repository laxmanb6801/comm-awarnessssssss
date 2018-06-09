<%@page import="com.oreilly.servlet.*,java.sql.*,java.lang.*,databaseconnection.*"%>
<%@page import=" java.security.MessageDigest"%>

<html>
<head>
</head>
<body>

<%

String aa = (String)session.getAttribute("district");
		String bb = (String)session.getAttribute("category");
		
		String count = null;
		
		
		try {
			


			Connection con=databasecon.getconnection(); 
            Statement st=con.createStatement();
			String sql2=("select indistrict,category from compliant where category='"+bb+"'" );
			
			ResultSet rs1=st.executeQuery(sql2);
			if(rs1.next())
		     {
				rs1.getString("indistrict");
			rs1.getString("category");
				 }
			PreparedStatement ps=con.prepareStatement("insert into compliantcount(category,count) values(?,?)");
           	
       
				ps.setString(1,bb);
				ps.setString(2,count);				
     	
			ps.executeUpdate();
		
      
		} 
		catch (Exception e) 
		{
			out.println(e.getMessage());
		}
	
 %>
</form>
</body>
</html>