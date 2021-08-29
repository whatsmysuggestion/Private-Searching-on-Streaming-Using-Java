<%@ page  import="java.sql.*"%>
<%@ page import="java.sql.*,databaseconnection.*"%>
<%@ page import="java.sql.*,databaseconnection.*"%>
<%@ page import="java.io.*,java.util.*,javax.mail.*"%>
<%@ page import="javax.mail.internet.*,javax.activation.*"%>
<%@ page import="javax.servlet.http.*,javax.servlet.*" %>
<%@ page import="java.sql.*,databaseconnection.*"%>
<%@ page import="java.util.Date"%>
<%@ page import="java.text.DateFormat"%>
<%@ page import="java.text.SimpleDateFormat"%>
<%@ page import="java.util.zip.*"%>
<%@ page import="java.sql.*,databaseconnection.*"%>
<html>
<head>
<title>Untitled Document</title>
<meta http-equiv="Content-Type" content="text/html; charset=iso-8859-1">
</head>

<body>
<%
String ids=(String)session.getAttribute("ids");

 String id=(String)session.getAttribute("id");
String empid=request.getQueryString();
session.setAttribute("empid1",empid);
//int empid=3445;
String se=null;
String se1=null;
String filekey=null;
try
{
Class.forName("com.mysql.jdbc.Driver");	
Connection con1 = DriverManager.getConnection("jdbc:mysql://localhost:3306/privatesearching","root","root");
PreparedStatement ps1=con1.prepareStatement("select active,filename,fileid,filekey from files where fileid='"+empid+"'");
ResultSet rs1=ps1.executeQuery();
while (rs1.next())
{
String name=rs1.getString("active");
se1=rs1.getString("filename");
se=rs1.getString("fileid");
filekey=rs1.getString("filekey");


int pr1=Integer.parseInt(name);
int quantity1=1;
int sum = pr1+quantity1;
String sum1=Integer.toString(sum);
//out.print(sum1);

///////////////--------------/////////////////-------INSERT HISTORY-----------------------///////////////--------------///////////
//String mobile=request.getParameter("mobile");
//out.print(mobile);


java.util.Date dNow = new java.util.Date();  
SimpleDateFormat ft =new SimpleDateFormat ("MM/dd/yyyy HH:mm");    
String ClickTime=ft.format(dNow).toString();
//out.print(ClickTime);




String getUrl=request.getRequestURI().toString();
String servletPath=request.getServletPath();
String name1=getUrl;//+servletPath;
String status="STORED";


Connection conn1=null;
PreparedStatement ps2=null;
try
{
conn1=databasecon.getconnection();
ps2=conn1.prepareStatement ("insert into user_history (urlHistory,EncrypyUrl,Product,dateTime,userid,status) values (?,AES_ENCRYPT(?,'key'),?,?,?,?)");


ps2.setString(1,name1);
ps2.setString(2,name1);
ps2.setString(3,filekey);
ps2.setString(4,ClickTime);
ps2.setString(5,ids);
ps2.setString(6,status);

int x=ps2.executeUpdate();
            
                
        }
        catch(Exception ee)
        {
            out.println(ee.getMessage());
        }
 
 //////////////////////----------------------INSERT HISTORY-----------------------//////////////////////////////////////////
 





//session.setAttribute("cash1",sum1);










try
{
Class.forName("com.mysql.jdbc.Driver");
Connection conn = DriverManager.getConnection("jdbc:mysql://localhost:3306/privatesearching", "root", "admin");
PreparedStatement ps=conn.prepareStatement("update files set active='"+sum1+"' where fileid='"+empid+"'");
ps.executeUpdate();
response.sendRedirect("odownload.jsp");
}
catch(Exception e1)
{
out.println(e1.getMessage());
}

}
}
catch(Exception e1)
{
out.println(e1.getMessage());
}


%>

</body>
</html>
