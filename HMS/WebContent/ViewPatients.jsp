<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@page import="com.hms.dao.*,com.hms.bean.*,java.util.*" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>View Patients</title>
</head>
<body>
<h2>View Patients</h2>

<%
	List<PatientBean> list=PatientDao.getAllRecords();
	request.setAttribute("list", list);
	
%>

  
<table border="1" >
<tr><th>Patient Id</th><th>Name</th><th>Age</th><th>Address</th>  
<th>DOJ</th><th>Type Of Room</th><th>Edit</th><th>Delete</th></tr> 

<c:forEach items="${list}" var="u">

<tr><td>${u.getPatientId()}</td><td>${u.getPatientName()}</td><td>${u.getPatientAge()}</td>  
<td>${u.getPatientAddress()}</td><td>${u.getDateOfJoining()}</td><td>${u.getTypeOfBed()}</td>  
<td><a href="UpdatePatients.jsp?pat_id=${u.getPatientId()}">Edit</a></td> 
<td><a href="#">Delete</a></td></tr>  
</c:forEach>
<!-- 
<td><a href="editform.jsp?id=${u.getId()}">Edit</a></td>  
<td><a href="deleteuser.jsp?id=${u.getId()}">Delete</a></td></tr>  
 -->

</table>




</body>
</html>