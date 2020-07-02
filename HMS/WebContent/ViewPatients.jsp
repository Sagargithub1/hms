<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@page import="com.hms.dao.*,com.hms.bean.*,java.util.*" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>View Patients</title>
<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0/css/bootstrap.min.css" integrity="sha384-Gn5384xqQ1aoWXA+058RXPxPg6fy4IWvTNh0E263XmFcJlSAwiGgFAW/dAiS6JXm" crossorigin="anonymous">
<script src="https://code.jquery.com/jquery-3.2.1.slim.min.js" integrity="sha384-KJ3o2DKtIkvYIK3UENzmM7KCkRr/rE9/Qpg6aAZGJwFDMVNA/GpGFF93hXpG5KkN" crossorigin="anonymous"></script>
<script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.12.9/umd/popper.min.js" integrity="sha384-ApNbgh9B+Y1QKtv3Rn7W3mgPxhU9K/ScQsAP7hUibX39j7fakFPskvXusvfa0b4Q" crossorigin="anonymous"></script>
<script src="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0/js/bootstrap.min.js" integrity="sha384-JZR6Spejh4U02d8jOt6vLEHfe/JQGiRRSQQxSfFWpi1MquVdAyjUar5+76PVCmYl" crossorigin="anonymous"></script>

<style>
body {
	background-color: #cfe3ff;
}

div.form {
	display: block;
	text-align: center;
}

form {
	display: inline-block;
	margin-left: auto;
	margin-right: auto;
	text-align: left;
}
table{
display: inline-block;
	margin-left: auto;
	margin-right: auto;
	
}
h2{
text-align: center;
}
div{
float: none;
}
</style>

</head>
<body>
<h2>View Patients</h2>

<%
	List<PatientBean> list=PatientDao.getAllRecords();
	request.setAttribute("list", list);
	
%>

<div class="container">
<table class="table table-bordered table-light" >
<thead class="thead-dark">
<tr><th>Patient Id</th><th>Name</th><th>Age</th><th>Address</th>  
<th>DOJ</th><th>Type Of Room</th><th>Edit</th><th>Delete</th></tr>
</thead>
 

<c:forEach items="${list}" var="u">

<tr><td>${u.getPatientId()}</td><td>${u.getPatientName()}</td><td>${u.getPatientAge()}</td>  
<td>${u.getPatientAddress()}</td><td>${u.getDateOfJoining()}</td><td>${u.getTypeOfBed()}</td>  
<td><a class="btn btn-info" href="UpdatePatients.jsp?pat_id=${u.getPatientId()}">Edit</a></td>
<td><a class="btn btn-danger" href="DeletePatients.jsp?pat_id=${u.getPatientId()}" >Delete</a></td></tr>  
</c:forEach>
<!-- 
<td><a href="editform.jsp?id=${u.getId()}">Edit</a></td>  
<td><a href="deleteuser.jsp?id=${u.getId()}">Delete</a></td></tr>  
 -->

</table>


</div>  






</body>
</html>