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
session.setAttribute("name",name);

String id=request.getParameter("id");
session.setAttribute("id",id);

String key=request.getParameter("key");
session.setAttribute("key",key);

String subkey=request.getParameter("subkey");
session.setAttribute("subkey",subkey);

String c=request.getParameter("cname");
session.setAttribute("cname",c);

//String c=name+key+subkey;
//out.print(c);

String acitive="1";
Connection conn=null;
PreparedStatement ps=null;

try
{
Class.forName("com.mysql.jdbc.Driver");
conn = DriverManager.getConnection("jdbc:mysql://localhost:3306/privatesearching","root", "root");
//conn=databasecon.getconnection();
ps=conn.prepareStatement ("insert into files (filename,fileid,filekey,subkey,c,active) values (?,?,?,?,?,?)");


ps.setString(1,name);
ps.setString(2,id);
ps.setString(3,key);
ps.setString(4,subkey);
ps.setString(5,c);
ps.setString(6,acitive);

int x=ps.executeUpdate();

            if(x==0)
                {
                response.sendRedirect("adminfront1.jsp");}
            else
                {
                response.sendRedirect("adminfront1.jsp");
                }
        }
        catch(Exception e)
        {
            out.println(e.getMessage());
        }
		
		
        
%>

</body>
</html>
