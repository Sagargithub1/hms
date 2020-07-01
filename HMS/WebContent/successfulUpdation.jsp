<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@page import="com.hms.dao.PatientDao,com.hms.bean.PatientBean" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Updated Successfully</title>
</head>
<body>
<%-- <jsp:useBean id="u" class="com.hms.bean.PatientBean"></jsp:useBean>
<jsp:setProperty property="*" name="u"/> --%>

<%
int id=Integer.parseInt(request.getParameter("patId"));
String patientName=request.getParameter("patName");
int patientAge=Integer.parseInt(request.getParameter("patAge"));
//date of joining
String typeOfBed=request.getParameter("patBed");
String patientAddress=request.getParameter("patAddress");
String patientState=request.getParameter("patState");
String patientCity=request.getParameter("patCity");

PatientBean p=new PatientBean();
p.setPatientId(id);
p.setPatientName(patientName);
p.setPatientAge(patientAge);
p.setTypeOfBed(typeOfBed);
p.setPatientAddress(patientAddress);
p.setPatientState(patientState);
p.setPatientCity(patientCity);

try{
	int status=PatientDao.updatePatient(p);
	if(status>0){
		out.println("Successfully Updated");
	}
	else{
		out.println("errror in updation");
	}
	
}catch(Exception e){System.out.println(e);}

%>

<a href="ViewPatients.jsp">View Patients</a>
</body>
</html>