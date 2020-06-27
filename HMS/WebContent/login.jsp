<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>HMS-Login</title>
</head>
<body>
<center><h1>Login</h1></center>
<form action="LoginServlet" method="post">
Login	<input type="text" name="username"><br/>
Password <input type="password" name="userpassword"><br/>
<input type="submit" value="Login">

</form>
</body>
</html>