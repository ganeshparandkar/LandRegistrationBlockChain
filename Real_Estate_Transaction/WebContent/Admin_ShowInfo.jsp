<%@ page language="java" contentType="text/html; charset=ISO-8859-1" pageEncoding="ISO-8859-1"%>
<%@page import="java.sql.ResultSet"%>
<%@page import="com.connection.Dbconn"%>
<%@page import="java.sql.Connection"%>
<%@page import="java.sql.Statement"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
<meta name="keywords" content="" />
<meta name="description" content="" />
<meta http-equiv="content-type" content="text/html; charset=utf-8" />
<title></title>
<link href="http://fonts.googleapis.com/css?family=Oswald" rel="stylesheet" type="text/css" />
<link href='http://fonts.googleapis.com/css?family=Arvo' rel='stylesheet' type='text/css'>
<link href="style.css" rel="stylesheet" type="text/css" media="screen" />
</head>
<body>
<div id="wrapper" style="width: 100%">
	<div id="header-wrapper">
		<div id="header">
			<div id="logo">
				<jsp:include page="titlepage.jsp"></jsp:include><p></p>
			</div>
		</div>
	</div>
	<!-- end #header -->
	<div id="menu-wrapper">
		<div id="menu">
			<ul>
				 <li><a href="AdminProfile.jsp">Home</a></li>
				 <li><a href="Fileupload.jsp">Upload</a></li>
				 <li><a href="Admin_ShowInfo.jsp">Show Transaction</a></li>
     <li><a href="Login">Logout</a></li>
			</ul>
		</div>
	</div>
	<!-- end #menu -->
	<div>
		<div>
			<div id="page-bgbtm" align="center">
				<div >
					<div >
						<div style="width: 100%">
						
						<table width="50%"  border="1">
	       <tr>
			<td class="col-md-2"><h3>T-ID</h3> </td>
			<td class="col-md-2"><h3>Owner_Name</h3> </td>
			<td class="col-md-2"><h3>Land_area</h3> </td>
			<td class="col-md-2"><h3>Second Owner_Name</h3> </td>
			<td class="col-md-2"><h3>View</h3> </td>
			 </tr>
		   
		   <% 
        	Connection connection = Dbconn.conn();
            Statement statement = connection.createStatement();
        
            ResultSet resultset =statement.executeQuery("select * from tbltransation ") ; 
			while(resultset.next())
             {
       		 %>	
       		 <tr>
           
              <td> <%= resultset.getString("Id") %> </td>
                 <td> <%= resultset.getString("Owner_Name") %> </td>
                  <td><%=resultset.getString("Land_area") %></td>
                   <td><%=resultset.getString("User_Name") %></td>
                  
               <td> <a href="A_ShowInfo.jsp?candidateid=<%=resultset.getString("Id")%>"><input type="button" name="Turn On" value="View" class="btn btn-info"></a></td>
                </tr>
       		  <% 
             } 
              %>
 
			</table>
							
						</div>
						
					<!-- end #content -->
					
				<div style="clear: both;">&nbsp;</div>
			</div>
		</div>
	</div>
	<!-- end #page -->
</div>
</div>
<div id="footer">
	<p></p>
</div>
</div>
<!-- end #footer -->
</body>
</html>