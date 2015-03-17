<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html lang="en">
<head>
<meta charset="utf-8">
<meta http-equiv="X-UA-Compatible" content="IE=edge">
<meta name="viewport" content="width=device-width, initial-scale=1">
<meta name="description" content="">
<meta name="author" content="">
<title>Login Here</title>
<link href="../resources/css/loginstyle.css" rel="stylesheet">
<script src="../resources/js/prefixfree.min.js"></script>
</head>
<body>
	<div class="body">
		<div class="header">
			<div>MSIT Login</div>
		</div>
		<br>
		<div class="login">
			<form action="signin.do" method="post" onsubmit="">
				<input type="text" required="required"
					placeholder="username or email" name="username"><br> <input
					type="password" required="required" placeholder="password"
					name="password"><br>
				<p class="remember_me">
					<label> <input type="checkbox" name="remember_me"
						id="remember_me"> Remember me on this computer
					</label>
				</p>
				<input type="submit" value="Login">
			</form>
			<% Object status= request.getSession().getAttribute("loginstatus");
				if(status!=null)
				{
					if(status.toString().equalsIgnoreCase("failed"))
					{
						%>
						<label id="failuremsg" style="color: red;">Invalid username/password</label>
						<%
					}
					session.removeAttribute("loginstatus");
				}
				else
				{
					Object username= request.getSession().getAttribute("username");
					if(username!=null)
					{
					%>
						<jsp:forward page="/dashboard"></jsp:forward>
					<%
					}
				}
			%>
			<label id="statusmsg"></label>
		</div>
	</div>
	<script src="../resources/js/jquery.js"></script>
</body>
</html>