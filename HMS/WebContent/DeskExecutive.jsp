<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>DeskExecutive</title>
</head>
<body>
<% 
	if(session.getAttribute("DeskExecutive")==null){
	response.sendRedirect("login.jsp");
}
%>
<nav>
<ul>
<a href="AddPatients.jsp">Add Patients</a><br/>
<a href="ViewPatients.jsp">View Patients</a><br/>
<a href="UpdatePatients.jsp">Update Patients</a><br/>
<a href="DeletePatients.jsp">Delete Patients</a><br/>
</ul>
</nav>
</body>
</html>