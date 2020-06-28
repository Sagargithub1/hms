<%@page import="com.hms.dao.PatientDao"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
<%-- <jsp:useBean id="pat" class="com.hms.bean.PatientBean">
</jsp:useBean>
<jsp:setProperty property="*" name="pat"/>


<%
	PatientDao patientDao= new PatientDao();
	int status=patientDao.addPatient(pat);
	if(status>0){
		out.println("Successfully Added");
	}
	else{
		out.println("Something bad");
	}
	
%> --%>
<%	out.println("Successfully added"); %>

</body>
</html>