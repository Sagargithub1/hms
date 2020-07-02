<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Add Patient</title>
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
h1{
text-align: center;
}
</style>
<script type="text/javascript">
            function validate()
            {
                var ssn_id = document.getElementById("patSsnNumber");
                var pat_name = document.getElementById("patName").value;
                var pat_address = document.getElementById("patAddress").value;
                var valid = true;
                if(ssn_id.value.length<=0 || pat_name=="")
                    {
                        alert("Don't leave the field empty!");
                        valid = false;
                    }
                    
                return valid;
            };
</script>

</head>

<h1>Add Patients Details</h1>

<hr>

<div class="form">

	<form action="PatientServlet" method="post">
	<table>
		<tr>
			<td>Patient SSN No.*</td>
			<td><input type="text" name="patSsnNumber" maxlength="9" pattern="[0-9]{9}"
				placeholder="Enter the 9-digit SSN No" required="required"></td>
		</tr>
		
		<tr>
			<td>Patient Name*</td>
			<td><input type="text" name="patName"
				placeholder="Enter Patient Name" required="required"></td>
		</tr>
		
		<tr>
			<td>Patient Age*</td>
			<td><input type="text" name="patAge"
				placeholder="Enter patient age" pattern="[0-9]{2,3}" required></td>
		</tr>
		
		<tr>
			<td>Date Of Admission</td>
			<td><input type="date" name="patDateOfAdmission" required="required"></td>
		</tr>
		
		<tr>
			<td>Type Of Bed*</td>
			<td><select id="typeOfBed" name="patBed">
					<option value="General">General</option>
					<option value="Semi">Semi</option>
					<option value="Single">Single</option>
			</select></td>
		</tr>
		
		<tr>
			<td>Address*</td>
			<td><textarea rows="3" cols="20" name="patAddress" required="required"></textarea></td>
		</tr>
		
		<tr>
			<td>State*</td>
			<td><select id="state" name="patState" required="Please select a option">
					
					<option>West Bengal</option>
					<option>Assam</option>
			</select></td>
		</tr>
		
		<tr>
			<td>City*</td>
			<td><select id="city" name="patCity">
					<option>Kolkata</option>
					<option>Guwahati</option>
			</select></td>
		</tr>
		
		<br>
		<tr>
			<td><input class="btn btn-success" type="submit" value="Submit"></td>
			<td><input class="btn btn-warning" type="reset" value="Reset"></td>
		</tr>

		</table>
	</form>


</div>







</body>
</html>