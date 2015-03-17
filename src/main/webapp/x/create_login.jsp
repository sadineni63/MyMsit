<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<html>
<head>
<title>Login Creation</title>
<link href="css/create_login.css" rel="stylesheet">
<script type="text/javascript">

	function validate() {

		var message = document.getElementById('perr');
		if (message.innerHTML == "Passwords Do Not Match!") {
			return false;
		}

		var role = document.getElementById("role");
		var rolemsg = document.getElementById('rolemsg');
		if (role.value == "0") {
			rolemsg.innerHTML = "Please select a Role";
			role.focus();
			return false;
		}
		rolemsg.innerHTML = "";
		var lc = document.getElementById("learning_center");
		if (lc.value == "0") {
			var lcmsg = document.getElementById('lcmsg');
			lcmsg.innerHTML = "Please select a Learning Center";
			lc.focus();
			return false;
		}
		return true;
	}

	function checkPasswords() {
		var pass1 = document.getElementById('password');
		var pass2 = document.getElementById('repassword');
		var message = document.getElementById('perr');
		var match = "#66cc66";
		var notmatch = "#ff6666";
		if (pass1.value == pass2.value) {
			pass2.style.backgroundColor = match;
			message.style.color = match;
			message.innerHTML = "Passwords Match!";
		} else {
			//The passwords do not match.
			//Set the color to the bad color and
			//notify the user.
			pass2.style.backgroundColor = notmatch;
			message.style.color = notmatch;
			message.innerHTML = "Passwords Do Not Match!";
		}
	}

</script>
</head>
<body>
	<div class="body">
		<div class="header">
			<div>
				<h2>Login Registration Form</h2>
			</div>
		</div>
		<br>
		<div class="details">
			<form action="createLoginRequest.jsp" method="post" onsubmit="return validate(this);">
				<br> <br> <input type="text" required="required"
					placeholder="User name or Email" name="username" id="username"> <br> <br> <input
					type="password" required="required" placeholder="password"
					name="password" id="password"> <br> <br> <input
					type="password" required="required" placeholder="Confirm password"
					name="repassword" id="repassword" onchange="checkPasswords()">
				<label id="perr"> </label> <br> <br> <select name="role"
					id="role" class="required" title="Please Select a Role">
					<option value="0">Select Role</option>
					<option value="Student">Student</option>
					<option value="Mentor">Mentor</option>
					<option value="Alumni">Alumni</option>
				</select> <label id="rolemsg"></label> <br> <br> <select
					name="learning_center" id="learning_center"
					title="Please Select a Learning Center">
					<option value="0">Select Learning Center</option>
					<option value="IIIT_H">IIIT-H</option>
					<option value="JNTU_H">JNTU-H</option>
					<option value="JNTU_K">JNTU-K</option>
					<option value="JNTU_A">JNTU-A</option>
				</select> <label id="lcmsg"></label> <br> <br> <input type="submit"
					value="Create Login">
			</form>
			<% String status= request.getParameter("status");
				if(status!=null)
				{
					if(status.equalsIgnoreCase("success"))
					{
						%>
						<label id="successmsg">Login details are saved successfully</label>
					<%
					}
					else
					{
						%>
						<label id="failuremsg" style="color: red;">The given username already exists. Please try with another username</label>
						<%
					}
				}
			%>
			<label id="statusmsg"></label>
		</div>
	</div>
</body>
</html>
