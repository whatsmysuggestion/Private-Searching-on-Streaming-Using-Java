<%@ page import="java.sql.*, javax.sql.*, databaseconnection.*, java.util.HashSet, java.util.ArrayList, java.util.Iterator, java.io.*"%>
<html>
<head>
<title></title>
<script language="JavaScript">

</script>
</head>
<body background="Images/clouds_background.jpg">
<%
    Thread.sleep(2000);
	session.removeAttribute("resumeBlob");
	//String id=request.getQueryString();
	
	String id=(String)session.getAttribute("empid1");
	Blob resume = null;
	Connection con = null;
	PreparedStatement ps = null;
	ResultSet rs = null;
	String sql1 = "select file from files1 where fileid = ?";
	try
	{
		con = databasecon.getconnection();
		ps = con.prepareStatement(sql1);
		ps.setString(1,id);
		rs = ps.executeQuery();
		rs.next();
		resume = rs.getBlob(1);
	}
	catch(Exception e)
	{
		out.println("Exception :"+e);
	}
	finally
	{
		if(con != null)
			con.close();
		if(ps != null)
			ps.close();
		if(rs != null)
			rs.close();
	}
	
	session.setAttribute("resumeBlob1",resume);
	response.sendRedirect("odownload1.jsp");
%>

</body>
</html>