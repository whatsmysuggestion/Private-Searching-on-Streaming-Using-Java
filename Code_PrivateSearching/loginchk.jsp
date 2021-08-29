<%@ page import="java.sql.*,databaseconnection.*"%>


<%
   String uname1= request.getParameter("username");
   
   String pass1= request.getParameter("password");
   
   
   if((uname1.equals("admin"))&(pass1.equals("admin")))
   {
	response.sendRedirect("adminhome.jsp");	
   }
   
   else
   {
     try
      {
	Connection con=databasecon.getconnection(); 
    Statement st=con.createStatement();
	
			ResultSet rs = st.executeQuery("select id,name from user where name='"+uname1+"' and password='"+pass1+"'");
			if (rs.next()) 
			{
				String id=rs.getString("id");
				//out.print(id);
				String ids=id;
				session.setAttribute("ids",ids);
				String name=rs.getString("name");
				//out.print(id);
				session.setAttribute("sessname",name);
				session.setAttribute("id",id);
				
				
				
				
								
				 response.sendRedirect("home.jsp"); 
				 
			}
			else
			{
				 response.sendRedirect("index.html?message=Login Failed"); 
			}
			
			
   }
	catch (Exception e) {
			
			e.printStackTrace();
		}

   }
%>

