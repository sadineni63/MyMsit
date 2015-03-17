<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<%@page import="net.mymsit.controllers.LoginRequestHandler"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Login Validation</title>
</head>
<body>
	<%
		LoginRequestHandler loginRequestHandler = new LoginRequestHandler();
		String username = request.getParameter("username");
		String password = request.getParameter("password");
		
	%>
</body>
</html>