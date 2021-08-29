<%@ page contentType="text/html; charset=utf-8" language="java" import="java.sql.*" errorPage="" %>
<%@ page import="java.sql.*,databaseconnection.*"%>

<%
 String username=(String)session.getAttribute("sessname");
 String id=(String)session.getAttribute("id");
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

function validate()
{
	
		if(document.form1.mydropdown.selectedIndex==0)
		{
			alert("Choose any option from the list");
			document.form1.mydropdown.focus() ;
			return false;
		}

	if ( ( form1.sex[0].checked == false ) && ( form1.sex[1].checked == false )) 
	{
	alert ( "Please choose your search option!" ); 
     document.form1.sex[0].focus() ;
     document.form1.sex[1].focus() ;
	return false;
	}
	var un=document.form1.query.value;
	if(un=="")
	{
		alert("search using any keyword");
			document.form1.query.focus() ;
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
                <a href="home.jsp" style="font-size:12px;margin-left:7px;margin-right:7px;text-decoration:none;">Home</a></li>
             <li style="margin-top:-5px;margin-bottom:-5px;">
                    <a href="edit.jsp" data-toggle="modal" style="font-size:12px;margin-left:7px;margin-right:7px;text-decoration:none;" >
                           Account Edit</a></li>
              <li style="margin-top:-5px;margin-bottom:-5px;">
                    <a href="view.jsp"  style="font-size:12px;margin-left:7px;margin-right:7px;text-decoration:none;" >
                          Account View</a></li>    
						  
						  
						  <li  class="active" style="margin-top:-5px;margin-bottom:-5px;">
                    <a href="search.jsp"  style="font-size:12px;margin-left:7px;margin-right:7px;text-decoration:none;" >
                          Search</a></li>
						  
						  
						  <li style="margin-top:-5px;margin-bottom:-5px;">
                    <a href="request.jsp"  style="font-size:12px;margin-left:7px;margin-right:7px;text-decoration:none;" >
                          Request</a></li>
						  
						  
						    
						           
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
            <%

/*
String name=null,email=null,password=null,dob=null,gender=null,address=null,mobile=null;		
try
 {
	Connection con=databasecon.getconnection(); 
    Statement st=con.createStatement();
	
			ResultSet rs = st.executeQuery("select * from user where id='"+id+"'");
			if (rs.next()) 
			{
				
				name=rs.getString("name");
				email=rs.getString("email");
				password=rs.getString("password");
				dob=rs.getString("dob");
				gender=rs.getString("gender");
				address=rs.getString("address");
				mobile=rs.getString("mobile");
				
				
				
				
				//out.print(id);
				session.setAttribute("sessname",name);
				session.setAttribute("id",id);
				
								
				 
			}
			 }
	catch (Exception e) {
			
			e.printStackTrace();
		}

			*/
            
           
		   
		   
		   %>
		   
		   
		     
   <h1 align="left">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<font color="#FCE7B7" face="Courier New, Courier, monospace" size="+2"><a href="search1.jsp?<%="private"%>">Privare Search</a>&nbsp;&nbsp;<a href="search1.jsp?<%="public"%>">Public Search</a></font></h1>
    
    
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