<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@page import="com.hms.dao.PatientDao" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Delete Patients</title>
</head>
<body>
<jsp:useBean id="u" class="com.hms.bean.PatientBean"></jsp:useBean>
<jsp:setProperty property="*" name="u"/>

<%
int id=Integer.parseInt(request.getParameter("pat_id"));
out.println(id);
u.setPatientId(id);
int status=PatientDao.deletePatient(u);
if(status>0){
	out.println("Deleted");
}

%>

</body>
</html>