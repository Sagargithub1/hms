<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@page import="com.hms.bean.PatientBean,com.hms.dao.PatientDao,java.util.*" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Update Patient</title>
</head>
<body>
<h1 align="center">Update Patients Details</h1><hr>

<%
String id=request.getParameter("pat_id");
PatientBean p=PatientDao.getPatientById(Integer.parseInt(id));
%>


<form action="successfulUpdation.jsp" method="post">

		<tr>
			<td>Patient Id*</td>
			<td><input type="text" name="patId"  value="<%= p.getPatientId()%>"></td>
			
		</tr>
		<br />
		<br />
		<tr>
			<td>Patient Name*</td>
			<td><input type="text" name="patName" value="<%=p.getPatientName() %>" placeholder="Enter Patient Name"></td>
		</tr>
		<br />
		<br />
		<tr>
			<td>Patient Age*</td>
			<td><input type="text" name="patAge" value="<%=p.getPatientAge() %>" placeholder="Enter patient age"></td>
		</tr>
		<br />
		<br />
		<tr>
			<td>Date Of Admission</td>
			<td><input type="date" name="patDateOfAdmission" value="<%=p.getDateOfJoining()%>"></td>
		</tr>
		<br />
		<br />
		<tr>
			<td>Type Of Bed*</td>
			<td><select id="typeOfBed" name="patBed" value="<%=p.getTypeOfBed()%>">
					<option value="General">General</option>
					<option value="Semi">Semi</option>
					<option value="Single">Single</option>
			</select></td>
		</tr>
		<br />
		<br />
		<tr>
			<td>Address*</td>
			<td><textarea rows="3" cols="20" name="patAddress" ><%=p.getPatientAddress() %></textarea></td>
		</tr>
		<br />
		<br />
		<tr>
			<td>State*</td>
			<td><select id="state" name="patState" value="<%=p.getPatientState()%>">
					<option>West Bengal</option>
					<option>Assam</option>
			</select></td>
		</tr>
		<br />
		<br />
		<tr>
			<td>City*</td>
			<td><select id="city" name="patCity" value="<%=p.getPatientCity()%>">
					<option>Kolkata</option>
					<option>Guwahati</option>
			</select></td>
		</tr>
		<br />
		<br />


		<tr>
			<td><input type="submit" value="Submit"></td>
			<td><input type="reset" value="Reset"></td>
		</tr>

		</table>
	</form>


</body>
</html>