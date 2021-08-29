<%@ page import="java.sql.*"%>
<%@ page import="java.sql.*,databaseconnection.*" errorPage="" %>
<html>
<head>
<title>Untitled Document</title>
<meta http-equiv="Content-Type" content="text/html; charset=iso-8859-1">
</head>
<body>
<%
String id=request.getQueryString();
session.setAttribute("id",id);
//out.print(id);

String sta="REQUESTED";

try
{
Connection conn=databasecon.getconnection(); 
//Class.forName("com.mysql.jdbc.Driver");
//Connection conn = DriverManager.getConnection("jdbc:mysql://localhost:3306/abnormal", "root", "admin");
PreparedStatement ps=conn.prepareStatement("update user_history set status='"+sta+"' where userid='"+id+"'");
ps.executeUpdate();
response.sendRedirect("userview.jsp");
                      

}
catch(Exception e1)
{
out.println(e1.getMessage());
}
%>
</body>
</html>
