<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@page import="com.hms.dao.PatientDao" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Updated Successfully</title>
</head>
<body>
<jsp:useBean id="u" class="com.hms.bean.PatientBean"></jsp:useBean>
<jsp:setProperty property="*" name="u"/>

<%
int i=PatientDao.updatePatient(u);
out.println("Patient Updated");
%>

</body>
</html>