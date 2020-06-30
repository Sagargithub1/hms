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
out.println(id);
PatientBean p=PatientDao.getPatientById(id);
out.println(p.getPatientName()+" "+p.getPatientAddress());
int status=PatientDao.updatePatient(p);
if(status>0){
	out.println("Successfully Updated");
}
%>

</body>
</html>