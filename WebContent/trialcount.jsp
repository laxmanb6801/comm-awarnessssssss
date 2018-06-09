<%@page import="com.oreilly.servlet.*,java.sql.*,databaseconnection.*,java.util.*,java.io.*,javax.servlet.*, javax.servlet.http.*"%>

<%
        
		//String aa = (String)session.getAttribute("district");
		String bb = (String)session.getAttribute("kk");
		System.out.println("***********************************************"+bb);
		String  dis=request.getParameter("bbb");
		System.out.println("&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&"+dis);
		String vname=request.getParameter("aaa");
		session.setAttribute("vname",vname);
		System.out.println("&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&"+vname);
		int count=0;
		String status ="granted";
		
		
		String animals_list[] = vname.split(",");

String c = animals_list[0];
session.setAttribute("vname",c);
System.out.println("&&&&&&&&&&&&&"+c);
		
String d = animals_list[1];
System.out.println("&&&&&&&&&&&&&%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%"+d);
		
		
		
		
		
	//	String indistrict = "Kanchipuram";

Statement st = null;
		ResultSet rs1=null;		
		
try{
		
			Connection	con=databasecon.getconnection();
			st=con.createStatement();
String sql1="select * from compliant where category='"+bb+"' AND indistrict='"+d+ "'";
				rs1=st.executeQuery(sql1);

if(rs1.next())
{

	count=rs1.getInt("count")+1;
try{
				Connection	con2=databasecon.getconnection();
				//PreparedStatement ps=con.prepareStatement("Update compliant set count=? where category='"+bb+"' and indistrict='"+d+ "'" );
				PreparedStatement ps=con.prepareStatement("Update compliant set count=?,status=? where category='"+bb+"' and indistrict='"+d+ "'" );
				ps.setInt(1,count);
				ps.setString(2,status);
			ps.executeUpdate();
			
			response.sendRedirect("viewvideo.jsp");


}

		catch (Exception ex) 
				{
					out.println(ex.getMessage());
				}
		
				
				}
					
	
	
		
	
		else
		
		

	response.sendRedirect("count1.jsp");
	}
	
	catch (Exception e) 
		{
			out.println(e.getMessage());
				
				
			
			
		}
 %>
