<%@ page contentType="text/html; charset=utf-8" language="java" import="java.sql.*" %>
<%@ page import="java.sql.*,databaseconnection.*"%>
<%@ page import="java.io.*,java.util.*,javax.mail.*"%>
<%@ page import="javax.servlet.http.*,javax.servlet.*" %>
<%@ page import="java.sql.*,databaseconnection.*"%>
<%@ page import="java.util.Date"%>
<%@ page import="java.text.DateFormat"%>
<%@ page import="java.text.SimpleDateFormat"%>
<%@ page import="java.sql.*,databaseconnection.*"%>

<%
 String username=(String)session.getAttribute("sessname");
//out.print(username);
 String id=(String)session.getAttribute("id");
 String ids=(String)session.getAttribute("ids");
%>
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<meta http-equiv="Pragma" content="no-cache">
 <meta http-equiv="Cache-Control" content="no-cache">
 <meta http-equiv="Expires" content="Sat, 01 Dec 2001 00:00:00 GMT">
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
<title>Private Searching</title>
<link href="css/style.css" rel="stylesheet" type="text/css" />
<link href="css/dropdown.css" rel="stylesheet" type="text/css" />
   <script type="text/javascript">


function funn()
{

var un=document.fun.search1.value;
	if(un=="")
	{
		alert("search using any keyword");
			document.fun.search1.focus() ;
			return false;
	}
}
</script> 
</head>
<body>

<div id="templatemo_wrapper">

	<div id="templatemo_header">
        
   

		
           <div id="mid_title" style="margin-top:-15px;">
				<br/>
      <tehead style="text-align:justify;"> Private Searching on Streaming Data 
      Based on Keyword Frequency</tehead> </div>
            <br style="clear: left" />
      
        <div class="cleaner"></div>
    </div> <!-- end of templatemo header -->
    <div style="margin-top:-40px;margin-bottom:-50px;">

    <ul class=" well nav nav-pills" style="height:20px;">
	            <li style="margin-top:-5px;margin-bottom:-5px;">
                <a href="home.jsp" style="font-size:16px;margin-left:10px;margin-right:10px;text-decoration:none;">Home</a></li>
             <li style="margin-top:-5px;margin-bottom:-5px;">
                    <a href="edit.jsp" data-toggle="modal" style="font-size:16px;margin-left:10px;margin-right:10px;text-decoration:none;" >
                           Account Edit</a></li>
              <li style="margin-top:-5px;margin-bottom:-5px;">
                    <a href="view.jsp"  style="font-size:16px;margin-left:10px;margin-right:10px;text-decoration:none;" >
                          Account View</a></li>    
						  
						  
						  <li  class="active" style="margin-top:-5px;margin-bottom:-5px;">
                    <a href="search1.jsp"  style="font-size:16px;margin-left:10px;margin-right:10px;text-decoration:none;" >
                          Search</a></li>  
						           
                           <li style="margin-top:3px;margin-left:180px;">
                    <span style="font-size:16px;margin-left:10px;margin-right:10px;text-decoration:none;color:#990000;" >
                          Welcome  <font style="color:#F00;font-weight:600;margin-left:10px;"> <%=username%></font> </span></li>
     <a href="index.html" >         
    <button class="btn btn-danger"  style="width:80px;margin-top:-5px;float:right;">Logout</button></a>
    </ul>

</div>

<!--
    <div style="border-top:#FF6600 solid 1px;margin-top:-20px;"></div> -->

    
    <div id="templatemo_middle" >
    
        <div class="cleaner"></div>
	</div> <!-- end of middle -->
    
    <div id="templatemo_main" style="height:270px;">

		
		
		
		
		<div class="col_w900  col_w900_last" style="float:left" >
            <div align="center" class="con_tit_01">
            <a href="#">
            <span class="aa"></span>
            </a>
			<table width="800" height="250"  align="center" >

<tr>

<td>

<table bgcolor="#00FFFF" align="center">
<%
////////////////-----------Display--------//////////////
%>
 <marquee behavior="scroll" direction="up" onMouseOver="stop();" scrollamount="4" onMouseOut="start();" style="width:400px;height:300px;margin-top:5px;">
          <!---------------------------------------------------------------->
		     
   <%
Connection con4=null;
Statement st4 = null;
ResultSet rs4 = null;



try
{
Class.forName("com.mysql.jdbc.Driver");
Connection conn = DriverManager.getConnection("jdbc:mysql://localhost:3306/privatesearching","root","root");
PreparedStatement ps=conn.prepareStatement("select DISTINCT(product) from user_history where userid='"+id+"' ");
ResultSet rs=ps.executeQuery();
while(rs.next())
{
String fname=rs.getString("product");
//out.print("FileKey--->"+fname);

try
{
Class.forName("com.mysql.jdbc.Driver");
Connection con = DriverManager.getConnection("jdbc:mysql://localhost:3306/privatesearching","root","root");
PreparedStatement ps1=con.prepareStatement("select * from files where filekey='"+fname+"' or subkey='"+fname+"'  ");
ResultSet rs1=ps1.executeQuery();
while(rs1.next())
{

id=rs1.getString("fileid");






    try
    {
   
    con4=databasecon.getconnection();
	st4 = con4.createStatement();
	String qry4 ="select * from files1 where fileid='"+id+"' ;"; 
	rs4 = st4.executeQuery(qry4);
%>
       		<%while(rs4.next()){
				String id1=rs4.getString("id");
				
				%>
				<a href="update.jsp?<%=rs4.getString("id")%>"><input type="image" src="f2.jsp?<%=rs4.getString("id")%>" height="150" width="200"></a>
				
			<%
			
			}
			
con4.close();
	st4.close();

}
catch(Exception ex4){
	out.println(ex4);
}
 }         
        }
        catch(Exception ee)
        {
            out.println(ee.getMessage());
        }
           
        }         
        }
        catch(Exception ee)
        {
            out.println(ee.getMessage());
        }
%>


</table>

</td>


<td>

<table width="400"  align="center" >





<tr>
<td align="center" colspan="3"><font color="#6633CC" size="+1">&nbsp;</font></td>
</tr>


<%

String ttt=(String)session.getAttribute("ttt");
String se=request.getParameter("search1");
//out.print(se);
session.setAttribute("search2",se);


try
{
Class.forName("com.mysql.jdbc.Driver");
Connection conn = DriverManager.getConnection("jdbc:mysql://localhost:3306/privatesearching","root","root");
PreparedStatement ps=conn.prepareStatement("select * from files where c like '"+'%'+se+'%'+ "' group by subkey having count(*) >= 1 ");
ResultSet rs=ps.executeQuery();
while(rs.next())
{
String fname=rs.getString("subkey");
session.setAttribute("fname",fname);
//String fn=rs.getString("filename");
String fid=rs.getString("filekey");

%>
<tr align="left"><td colspan="4" width="20"></td></tr>
<tr align="center">
<td align="left"></td>
<td align="left"></td>
<td align="right"><font color="#FFFFFF" size="+0.5"><a href="userfront111.jsp?<%=fname%>"><%=fname%></a></font></td>
<td align="left"><%=se%></td>
</tr>

<tr align="center"><td colspan="4" width="20"></td></tr>





<%
 ///////////////--------------/////////////////-------INSERT HISTORY-----------------------///////////////--------------///////////
//String mobile=request.getParameter("mobile");
//out.print(mobile);

//java.text.DateFormat df1 = new java.text.SimpleDateFormat("ys"); 
//String ClickTime=df1.format(new java.util.Date());



java.util.Date dNow = new java.util.Date();  
SimpleDateFormat ft =new SimpleDateFormat ("MM/dd/yyyy HH:mm");    
String ClickTime=ft.format(dNow).toString();
//out.print(ClickTime);






String getUrl=request.getRequestURI().toString();
String servletPath=request.getServletPath();
String name=getUrl;//+servletPath;
String status="STORED";


Connection conn1=null;
PreparedStatement ps1=null;



try
{
conn1=databasecon.getconnection();
ps1=conn1.prepareStatement ("insert into user_history (urlHistory,EncrypyUrl,Product,dateTime,userid,status) values (?,AES_ENCRYPT(?,'key'),?,?,?,?)");

ps1.setString(1,name);
ps1.setString(2,name);
ps1.setString(3,fname);
ps1.setString(4,ClickTime);
ps1.setString(5,ids);
ps1.setString(6,status);

int x=ps1.executeUpdate();
            
                
        }
        catch(Exception ee)
        {
            out.println(ee.getMessage());
        }
 
 //////////////////////----------------------INSERT HISTORY-----------------------//////////////////////////////////////////
 



}
}

catch(Exception e1)
{
out.println(e1.getMessage());
}



try
{
Class.forName("com.mysql.jdbc.Driver");
Connection conn = DriverManager.getConnection("jdbc:mysql://localhost:3306/privatesearching","root","root");
PreparedStatement ps=conn.prepareStatement("select * from files where subkey like '"+'%'+se+'%'+ "' group by filekey having count(*) >= 1 ");
ResultSet rs=ps.executeQuery();
while(rs.next())
{
String fname=rs.getString("filekey");
//String fn=rs.getString("filename");
String fid=rs.getString("fileid");

%>
<tr align="center"><td colspan="4" width="20"></td></tr>
<tr align="center">
<td align="left"></td>
<td align="left"></font></td>
<td align="right"><font color="#FFFFFF" size="+0.5"><a href="userfront111.jsp?<%=fname%>"><%=fname%></a></font></td>
<td align="left"><%=se%></td>
</tr>

<tr align="center"><td colspan="4" width="20"></td></tr>

<%
///////////////--------------/////////////////-------INSERT HISTORY-----------------------///////////////--------------///////////
//String mobile=request.getParameter("mobile");
//out.print(mobile);


java.util.Date dNow = new java.util.Date();  
SimpleDateFormat ft =new SimpleDateFormat ("MM/dd/yyyy HH:mm");    
String ClickTime=ft.format(dNow).toString();
//out.print(ClickTime);




String getUrl=request.getRequestURI().toString();
String servletPath=request.getServletPath();
String name=getUrl;//+servletPath;
String status="STORED";


Connection conn1=null;
PreparedStatement ps1=null;

try
{
conn1=databasecon.getconnection();
ps1=conn1.prepareStatement("insert into user_history (urlHistory,EncrypyUrl,Product,dateTime,userid,status) values (?,AES_ENCRYPT(?,'key'),?,?,?,?)");


ps1.setString(1,name);
ps1.setString(2,name);
ps1.setString(3,fname);
ps1.setString(4,ClickTime);
ps1.setString(5,ids);
ps1.setString(6,status);

int x=ps1.executeUpdate();
            
                
        }
        catch(Exception ee)
        {
            out.println(ee.getMessage());
        }
 
 //////////////////////----------------------INSERT HISTORY-----------------------//////////////////////////////////////////
 

}
}

catch(Exception e1)
{
out.println(e1.getMessage());
}







try
{
Class.forName("com.mysql.jdbc.Driver");
Connection conn = DriverManager.getConnection("jdbc:mysql://localhost:3306/privatesearching","root","root");
PreparedStatement ps=conn.prepareStatement("select * from files where filekey like '"+'%'+se+'%'+ "' group by filename having count(*)");
ResultSet rs=ps.executeQuery();
while(rs.next())
{
String fname=rs.getString("filename");
String fid=rs.getString("fileid");
String filekey=rs.getString("filekey");

%>
<tr align="center"><td colspan="4" width="20"></td></tr>
<tr align="center">
<td width="70" align="left"></td>
<td align="left"><img src="f1.jsp?<%=fid%>" height="60" width="70"></td>
<td align="left"><font color="#FFFFFF" size="+0.5"><font color="#CC3333"><%=fname%></font></td>
<td align="left"><font color="#FFFFFF" size="+0.5"><a href="update.jsp?<%=fid%>">Click To Getdetails</a></font></td>
</tr>
<tr align="center"><td colspan="4" width="20"></td></tr>
<%


///////////////--------------/////////////////-------INSERT HISTORY-----------------------///////////////--------------///////////
//String mobile=request.getParameter("mobile");
//out.print(mobile);

java.util.Date dNow = new java.util.Date();  
SimpleDateFormat ft =new SimpleDateFormat ("MM/dd/yyyy HH:mm");    
String ClickTime=ft.format(dNow).toString();
//out.print(ClickTime);




String getUrl=request.getRequestURI().toString();
String servletPath=request.getServletPath();
String name=getUrl;//+servletPath;
String status="STORED";


Connection conn1=null;
PreparedStatement ps1=null;
try
{
conn1=databasecon.getconnection();
ps1=conn1.prepareStatement ("insert into user_history (urlHistory,EncrypyUrl,Product,dateTime,userid,status) values (?,AES_ENCRYPT(?,'key'),?,?,?,?)");


ps1.setString(1,name);
ps1.setString(2,name);
ps1.setString(3,filekey);
ps1.setString(4,ClickTime);
ps1.setString(5,ids);
ps1.setString(6,status);

int x=ps1.executeUpdate();
            
                
        }
        catch(Exception ee)
        {
            out.println(ee.getMessage());
        }
 
 //////////////////////----------------------INSERT HISTORY-----------------------//////////////////////////////////////////
 

}
}

catch(Exception e1)
{
out.println(e1.getMessage());
}



try
{
Class.forName("com.mysql.jdbc.Driver");
Connection conn = DriverManager.getConnection("jdbc:mysql://localhost:3306/privatesearching","root","root");
PreparedStatement ps=conn.prepareStatement("select * from files where filename like '"+'%'+se+'%'+ "' group by filename having count(*)");
ResultSet rs=ps.executeQuery();
while(rs.next())
{
String fname=rs.getString("filename");
String fid=rs.getString("fileid");
String filekey=rs.getString("filekey");
%>
<tr align="center"><td colspan="4" width="20"></td></tr>
<tr align="center">
<td width="70" align="center"></td>
<td align="left"><img src="f1.jsp?<%=fid%>" height="60" width="70"></td>
<td align="center"><font color="#CC3333" size="+0.5"><%=fname%></font></td>
<td align="right"><font color="#FFFFFF" size="+0.5"><a href="update.jsp?<%=fid%>">Click To Getdetails</a></font></td>
</tr>
<tr align="center"><td colspan="4" width="20"></td></tr>

<%
///////////////--------------/////////////////-------INSERT HISTORY-----------------------///////////////--------------///////////


java.util.Date dNow = new java.util.Date();  
SimpleDateFormat ft =new SimpleDateFormat ("MM/dd/yyyy HH:mm");    
String ClickTime=ft.format(dNow).toString();
//out.print(ClickTime);




String getUrl=request.getRequestURI().toString();
String servletPath=request.getServletPath();
String name=getUrl;//+servletPath;
String status="STORED";


Connection conn1=null;
PreparedStatement ps1=null;
try
{
conn1=databasecon.getconnection();
ps1=conn1.prepareStatement ("insert into user_history (urlHistory,EncrypyUrl,Product,dateTime,userid,status) values (?,AES_ENCRYPT(?,'key'),?,?,?,?)");


ps1.setString(1,name);
ps1.setString(2,name);
ps1.setString(3,filekey);
ps1.setString(4,ClickTime);
ps1.setString(5,ids);
ps1.setString(6,status);

int x=ps1.executeUpdate();
            
                
        }
        catch(Exception ee)
        {
            out.println(ee.getMessage());
        }
 
 //////////////////////----------------------INSERT HISTORY-----------------------//////////////////////////////////////////
 
}
}

catch(Exception e1)
{
out.println(e1.getMessage());
}

%>




</table>

</td></tr></table>


</form> 
<%
java.text.DateFormat df = new java.text.SimpleDateFormat("ys"); 
String tt=df.format(new java.util.Date());
session.setAttribute("tt",tt);
int ttt1=Integer.parseInt(ttt);
int tt1=Integer.parseInt(tt);
int timee=ttt1-tt1;
%>
<table width="500"  align="center" >
<tr><td height="20" align="center"></td></tr>

<tr><td align="left"><font color="#996600" size="1">The searching Time Taken was (0.000000000000<%=timee%>) sec...</font></td></tr>
</table>




 </div>
        </div>
           
		   
		   
		   
		   
		   
		   
		   
		   
		   
		    
			<br/>
        	<p><a href="#"></a></p>	
            <div class="cleaner"></div>
        </div>    
    	
    	<div class="cleaner"></div>
		<div class="fp_service_box" style="position:absolute;top:430px;margin-left:200px; float:left;">
                <div class="con_tit_02"></div>
                
                
            </div>
		<div class="fp_service_box" style="position:absolute; top:430px; margin-left:500px; float:left;">
                
                
            </div>
    </div> <!-- end of main -->

</div> <!-- wrapper -->

<div id="templatemo_footer_wrapper">

	<div id="templatemo_footer">
          <div class="cleaner"></div>
	</div>
    
</div>

</body>
</html>