<%@ page import="java.sql.*,databaseconnection.*"%>
 
<%@page import="java.sql.*,java.lang.*,databaseconnection.*,java.text.SimpleDateFormat,java.util.*,java.io.*,javax.servlet.*, javax.servlet.http.*" %>
<%@ page import = "java.util.Date,java.text.SimpleDateFormat"%>	 
<html>
<head>
<title>Untitled Document</title>
<meta http-equiv="Content-Type" content="text/html; charset=iso-8859-1">
</head>
<body>
<%

String name=request.getParameter("name");
//out.print(name);
String email=request.getParameter("email");
//out.print(email);
String password=request.getParameter("password");
//out.print(password);
String birth=request.getParameter("birth");
//out.print(birth);
String gender=request.getParameter("gender");
//out.print(gender);
String address=request.getParameter("address");
//out.print(address);
String mobile=request.getParameter("mobile");
String id=request.getParameter("userid");
//out.print(mobile);




Connection conn=null;
PreparedStatement ps=null;
String stat="ACTIVE";

try
{
conn=databasecon.getconnection();
ps=conn.prepareStatement ("insert into user (name,email,password,dob,gender,address,mobile,id) values (?,?,?,?,?,?,?,?)");

ps.setString(1,name);
ps.setString(2,email);
ps.setString(3,password);
ps.setString(4,birth);
ps.setString(5,gender);
ps.setString(6,address);
ps.setString(7,mobile);
ps.setString(8,id);

int x=ps.executeUpdate();
            response.sendRedirect("index.html?Registrationsuccess");
  // response.sendRedirect("successreg.jsp");
                
        }
        catch(Exception ee)
        {
            out.println(ee.getMessage());
        }
 
 
 
 
        
%>

</body>
</html>
