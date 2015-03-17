<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Login Here</title>
<link href="css/loginstyle.css" rel="stylesheet">
<script src="js/prefixfree.min.js"></script>
</head>
<body>
	<%
		if (String.valueOf(session.getAttribute("username")) != null) {
			String role = String.valueOf(session.getAttribute("role"));
			if (role.equalsIgnoreCase("mentor"))
				response.sendRedirect("mentor_dashboard");
			else if (role.equalsIgnoreCase("student"))
				response.sendRedirect("student_dashboard");
		}
	%>
	<div class="body">
		<div class="header">
			<div>MSIT Log In</div>
		</div>
		<br>
		<div class="login">
			<form action="signin.do" method="post" onsubmit="">
				<input type="text" required="required"
					placeholder="username or email" name="user"><br> <input
					type="password" required="required" placeholder="password"
					name="password"><br>
				<p class="remember_me">
					<label> <input type="checkbox" name="remember_me"
						id="remember_me"> Remember me on this computer
					</label>
				</p>
				<input type="submit" value="Log In">
			</form>
		</div>
		
	</div>
	<script src='js/jquery.js'></script>
</body>
</html>