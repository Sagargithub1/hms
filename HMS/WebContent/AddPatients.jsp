<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Add Patient</title>
</head>
<body>
<center>
	<h1>Add Patients Details</h1>
	<hr>
	<form action="/AddPatient" method="post">
	Patient SSN No.*		<input type="text" name="patSsnNumber" placeholder="Enter the 9-digit SSN No"><br/><br/>
	Patient Name*				<input type="text" name="patName"	 placeholder="Enter Patient Name"><br/><br/>
	Patient Age*	<input type="text" name="patAge" placeholder="Enter patient age"><br/><br/>
	Date Of Admission* <input type="datetime" name="patDateOfAdmission"><br/><br/>
	Type Of Bed* 	<select id="typeOfBed" name="patBed">
    				<option value="General">General</option>
    				<option value="Semi">Semi</option>
    				<option value="Single">Single</option>
   					</select>	<br/><br/>
	Address*		<textarea rows="5" cols="10" name="patAddress"></textarea>  <br/><br/>
	State*			<select id="state" name="patState">
					<option>West Bengal</option>
					<option>Assam</option>
					</select><br/><br/>	
	City*			<select id="city" name="patCity">
					<option>Kolkata</option>
					<option>Guwahati</option>	
					</select>				
	<br/><br/>
	<input type="submit" value="Submit">    <input type="reset" value="Reset">  
	
	</form>
	
</center>
</body>
</html>