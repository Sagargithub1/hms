<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>HMS-Developer</title>
</head>
<body>

<%-- <% String userName=(String)request.getAttribute("userName"); 
out.println(userName);%>   
 --%>
<%
response.setHeader("Cache-Control", "no-cache,no-store,must-revalidate");
response.setHeader("pragma", "no-cache"); // http 1.0
response.setHeader("Expires","0");//proxies
if(session.getAttribute("Developer")==null){
	response.sendRedirect("login.jsp");
}
%>


Welcome ${Developer} 
I m Developer

</body>
</html>