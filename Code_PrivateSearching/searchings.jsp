<%@ page contentType="text/html; charset=iso-8859-1" language="java" import="java.sql.*" errorPage="" %>
<html>
<head>
<title>Untitled Document</title>
<meta http-equiv="Content-Type" content="text/html; charset=iso-8859-1">

<script type="text/javascript">

function validate()
{

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
<%


String stype=(String)session.getAttribute("searchtype");
out.print(stype);



String searchkey=request.getParameter("search1");
out.print(searchkey);





%>



</body>
</html>
