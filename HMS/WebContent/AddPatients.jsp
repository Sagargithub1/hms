<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Add Patient</title>
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
</style>
</head>
<center>
	<h1>Add Patients Details</h1>
</center>
<hr>

<div class="form">

	<form action="PatientServlet" method="post">

		<tr>
			<td>Patient SSN No.*</td>
			<td><input type="text" name="patSsnNumber" maxlength="9"
				placeholder="Enter the 9-digit SSN No"></td>
		</tr>
		<br />
		<br />
		<tr>
			<td>Patient Name*</td>
			<td><input type="text" name="patName"
				placeholder="Enter Patient Name"></td>
		</tr>
		<br />
		<br />
		<tr>
			<td>Patient Age*</td>
			<td><input type="text" name="patAge"
				placeholder="Enter patient age"></td>
		</tr>
		<br />
		<br />
		<tr>
			<td>Date Of Admission</td>
			<td><input type="date" name="patDateOfAdmission"></td>
		</tr>
		<br />
		<br />
		<tr>
			<td>Type Of Bed*</td>
			<td><select id="typeOfBed" name="patBed">
					<option value="General">General</option>
					<option value="Semi">Semi</option>
					<option value="Single">Single</option>
			</select></td>
		</tr>
		<br />
		<br />
		<tr>
			<td>Address*</td>
			<td><textarea rows="3" cols="20" name="patAddress"></textarea></td>
		</tr>
		<br />
		<br />
		<tr>
			<td>State*</td>
			<td><select id="state" name="patState">
					<option>West Bengal</option>
					<option>Assam</option>
			</select></td>
		</tr>
		<br />
		<br />
		<tr>
			<td>City*</td>
			<td><select id="city" name="patCity">
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


</div>







</body>
</html>