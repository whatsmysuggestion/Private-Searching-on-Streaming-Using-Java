<%@page import="com.oreilly.servlet.*,java.sql.*,java.lang.*,databaseconnection.*,java.text.SimpleDateFormat,java.util.*,java.io.*,javax.servlet.*, javax.servlet.http.*"%>
<%@page import=" java.security.MessageDigest"%>
<%@page import=" java.security.*"%>
<%@page import="javax.crypto.*"%>

<%
		String uid=request.getQueryString();
		
		try {
				//Class.forName("com.mysql.jdbc.Driver");

				Connection con=databasecon.getconnection();
					PreparedStatement ps=con.prepareStatement("Delete FROM user_history where userid='"+uid+"';");
					int x=ps.executeUpdate();
						if (x>0) 
							{
														
								 response.sendRedirect("history1.jsp");
						}
						
	
			else
			{
				response.sendRedirect("history1.jsp");
			}
			

				
		} 
		catch (Exception e) 
		{
			out.println(e.getMessage());
		}
			
		
	
 %>
