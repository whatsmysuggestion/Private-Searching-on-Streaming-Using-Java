<%@ page contentType="text/html; charset=utf-8" language="java" import="java.sql.*" errorPage="" %>
<%@ page import="java.sql.*,databaseconnection.*"%>

<%
 String username="public";
 String id="public";
 String se=(String)session.getAttribute("se");
 session.setAttribute("se",se);
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
                <a href="index.html" style="font-size:16px;margin-left:10px;margin-right:10px;text-decoration:none;">Home</a></li>
               
						  
						  <li  class="active" style="margin-top:-5px;margin-bottom:-5px;">
                    <a href="publicsearch.jsp"  style="font-size:16px;margin-left:10px;margin-right:10px;text-decoration:none;" >
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
<form name="f2" action="userfront1.jsp" method="post" onsubmit="return reg()">
<table width="500"  align="center" >
<tr>
<td align="center" colspan="3"><font color="#6633CC" size="+1">&nbsp;</font></td>
</tr>


<%

String fn=(String)request.getQueryString();

String ttt=(String)session.getAttribute("ttt");



try
{
Class.forName("com.mysql.jdbc.Driver");
Connection conn = DriverManager.getConnection("jdbc:mysql://localhost:3306/privatesearching","root","root");
PreparedStatement ps=conn.prepareStatement("select * from files where filekey like '"+fn+ "' group by filename having count(*)");
ResultSet rs=ps.executeQuery();
while(rs.next())
{
String fname=rs.getString("filename");
String fid=rs.getString("fileid");

%>
<tr align="left">
<td width="70" align="left"></td>
<td align="left"><img src="f1.jsp?<%=fid%>" height="60" width="70"></td>
<td align="left"><font color="#CC3333"><%=fname%></font></td>
<td align="left"><font color="#FFFFFF" size="+0.5"><a href="update.jsp?<%=fid%>">Click To Getdetails</a></font></td>

</tr>
<%

///////////////--------------/////////////////-------INSERT HISTORY-----------------------///////////////--------------///////////
//String mobile=request.getParameter("mobile");
//out.print(mobile);

java.text.DateFormat df1 = new java.text.SimpleDateFormat("ys"); 
String ClickTime=df1.format(new java.util.Date());




String getUrl=request.getRequestURI().toString();
String servletPath=request.getServletPath();
String name=getUrl;//+servletPath;
String status="STORED";


Connection conn1=null;
PreparedStatement ps1=null;
//String name="mahe";
//out.print(name);
//out.print(se);
//out.print(ClickTime);
//out.print(id);
try
{
conn1=databasecon.getconnection();
ps1=conn1.prepareStatement ("insert into user_history (urlHistory,EncrypyUrl,Product,dateTime,userid,status) values (?,?,?,?,?,?)");

ps1.setString(1,name);
ps1.setString(2,name);
ps1.setString(3,se);
ps1.setString(4,ClickTime);
ps1.setString(5,id);
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