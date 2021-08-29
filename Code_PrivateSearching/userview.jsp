<%@ page contentType="text/html; charset=utf-8" language="java" import="java.sql.*" errorPage="" %>
<%@ page import="java.sql.*,databaseconnection.*"%>

<%
 String username="ADMIN";
// String id=(String)session.getAttribute("id");
%>
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
                <a href="adminhome.jsp" style="font-size:16px;margin-left:10px;margin-right:10px;text-decoration:none;">Home</a></li>
             <li style="margin-top:-5px;margin-bottom:-5px;">
                    <a href="adminfront.jsp" data-toggle="modal" style="font-size:16px;margin-left:10px;margin-right:10px;text-decoration:none;" >
                           FileUpload</a></li>
              <li class="active" style="margin-top:-5px;margin-bottom:-5px;">
                    <a href="userview.jsp"  style="font-size:16px;margin-left:10px;margin-right:10px;text-decoration:none;" >
                         Users</a></li>    
						  
						  
						          
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
           
			
			
			<table class="table table-striped table-hover">
                    <thead style="background-color:#FC9;color:#F0C;font-size:20px;">
                    	<tr>
                        	<th>User-ID</th>
                            <th>Password</th>
                            <th>Name</th>
                            <th>E-Mail</th>
                            <th>Mobile</th>
                            <th>Type</th>
                            
                            <th>Action</th>
                        </tr>
                    </thead>
                    <tbody style="color:#093;font-size:18px;">
                    
                        	
         <%
		
		Connection con = null;
		String user_id=null,fname=null,email=null,password=null,gender=null,mobile=null,address=null,status=null,dob=null,typee=null;
		
		try{
				con=databasecon.getconnection(); 
				Statement st=con.createStatement();
				ResultSet rs = st.executeQuery("SELECT * FROM user");
				while(rs.next())
				{
					user_id=rs.getString("id");
					fname=rs.getString("name");
					email=rs.getString("email");
					dob=rs.getString("dob");
					gender=rs.getString("gender");
					password=rs.getString("password");
					mobile=rs.getString("mobile");
					typee=rs.getString("address");
					//status=rs.getString("status");

%>

                        <tr>
                            <td><%=user_id%></td>
                            <td><%=password%></td>
                            <td><%=fname%></td>
                            <td><%=email%></td>
                            <td><%=mobile%></td>
                             <td><%=typee%></td>
                             
                            <td><a href="userhistory.jsp?<%=user_id%>"><button class="btn btn-danger" style="width:110px;">
                            			<i class="icon-trash icon-black" style="margin-right:5px;"></i>History</button></a></td>
                        </tr>

        
        <%
				}
						}
							
		catch (Exception e) {
			e.printStackTrace();
		}
		
		

%>
                    </tbody>
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