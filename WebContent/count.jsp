<%@page import="com.oreilly.servlet.*,java.sql.*,databaseconnection.*,java.util.*,java.io.*,javax.servlet.*, javax.servlet.http.*"%>

<%
        
		//String aa = (String)session.getAttribute("district");
		String bb = (String)session.getAttribute("kk");
		System.out.println("***********************************************"+bb);
		
		String vname=request.getParameter("aaa");
		session.setAttribute("vname",vname);
		
		int count=0;

Statement st = null;
		ResultSet rs1=null;		
		
try{
		
			Connection	con=databasecon.getconnection();
			st=con.createStatement();
String sql1="select * from compliant where category='"+bb+"'";
				rs1=st.executeQuery(sql1);

if(rs1.next())
{

	count=rs1.getInt("count")+1;
try{
				Connection	con2=databasecon.getconnection();
				PreparedStatement ps=con.prepareStatement("Update compliant set count=? where category='"+bb+"'" );
				
				ps.setInt(1,count);
			ps.executeUpdate();
			
			response.sendRedirect("viewvideo.jsp");


}

		catch (Exception ex) 
				{
					out.println(ex.getMessage());
				}
		
				/*response.sendRedirect("viewvideo.jsp");*/
			
				}
					
	
	
		
	
		else
		
		

	response.sendRedirect("count1.jsp");
	}
	
	catch (Exception e) 
		{
			out.println(e.getMessage());
				
				
			
			
		}
 %>
