<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@page import="com.hms.bean.PatientBean,com.hms.dao.PatientDao,java.util.*" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Update Patient</title>
<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0/css/bootstrap.min.css" integrity="sha384-Gn5384xqQ1aoWXA+058RXPxPg6fy4IWvTNh0E263XmFcJlSAwiGgFAW/dAiS6JXm" crossorigin="anonymous">
<script src="https://code.jquery.com/jquery-3.2.1.slim.min.js" integrity="sha384-KJ3o2DKtIkvYIK3UENzmM7KCkRr/rE9/Qpg6aAZGJwFDMVNA/GpGFF93hXpG5KkN" crossorigin="anonymous"></script>
<script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.12.9/umd/popper.min.js" integrity="sha384-ApNbgh9B+Y1QKtv3Rn7W3mgPxhU9K/ScQsAP7hUibX39j7fakFPskvXusvfa0b4Q" crossorigin="anonymous"></script>
<script src="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0/js/bootstrap.min.js" integrity="sha384-JZR6Spejh4U02d8jOt6vLEHfe/JQGiRRSQQxSfFWpi1MquVdAyjUar5+76PVCmYl" crossorigin="anonymous"></script>

<style>
body {
	background-color: #cfe3ff;
}


</style>

</head>
<body>
<h1 align="center">Update Patients Details</h1><hr>
<%
String id=request.getParameter("pat_id");
PatientBean p=PatientDao.getPatientById(Integer.parseInt(id));
%>
<div>
	<form  action="successfulUpdation.jsp" method="post">
	<table>
		<tr>
			<td>Patient Id*</td>
			<td><input type="text" name="patId" value="<%=p.getPatientId() %>"></td>
		</tr>
		<tr>
			<td>Patient Name*</td>
			<td><input type="text" name="patName" value="<%=p.getPatientName() %>" placeholder="Enter Patient Name"></td>
		</tr>
		<tr>
			<td>Patient Age*</td>
			<td><input type="text" name="patAge" value="<%=p.getPatientAge() %>" placeholder="Enter patient age"></td>
		</tr>
		<tr>
			<td>Date Of Admission</td>
			<td><input type="date" name="patDateOfAdmission" value="<%=p.getDateOfJoining()%>"></td>
		</tr>
		<tr>
			<td>Type Of Bed*</td>
			<td><select id="typeOfBed" name="patBed" value="<%=p.getTypeOfBed()%>">
					<option value="General">General</option>
					<option value="Semi">Semi</option>
					<option value="Single">Single</option>
			</select></td>
		</tr>
		<tr>
			<td>Address*</td>
			<td><textarea rows="3" cols="20" name="patAddress" ><%=p.getPatientAddress() %></textarea></td>
		</tr>
		<tr>
			<td>State*</td>
			<td><select id="state" name="patState" value="<%=p.getPatientState()%>">
					<option>West Bengal</option>
					<option>Assam</option>
			</select></td>
		</tr>
		<tr>
			<td>City*</td>
			<td><select id="city" name="patCity" value="<%=p.getPatientCity()%>">
					<option>Kolkata</option>
					<option>Guwahati</option>
			</select></td>
		</tr>
		<tr>
			<td><input type="submit" value="Submit"></td>
			<td><input type="reset" value="Reset"></td>
		</tr>

		</table>
	</form>
	
</div>


</body>
</html>