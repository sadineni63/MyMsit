<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<html>
<head>
<title>Create Profile</title>
<link href="resources/css/editprofile.css" rel="stylesheet">

<!-- Bootstrap Core CSS -->
<link href=" resources/css/bootstrap.min.css" rel="stylesheet">

<!-- Custom CSS -->
<link href=" resources/css/sb-admin.css" rel="stylesheet">

<!-- Morris Charts CSS -->
<link href=" resources/css/plugins/morris.css" rel="stylesheet">

<link href="resources/css/dashboard.css" rel="stylesheet">


<!-- Custom Fonts -->
<link href="resources/font-awesome/css/font-awesome.min.css"
	rel="stylesheet" type="text/css">

<!-- HTML5 Shim and Respond.js IE8 support of HTML5 elements and media queries -->
<!-- WARNING: Respond.js doesn't work if you view the page via file:// -->
<!--[if lt IE 9]>
        <script src="https://oss.maxcdn.com/libs/html5shiv/3.7.0/html5shiv.js"></script>
        <script src="https://oss.maxcdn.com/libs/respond.js/1.4.2/respond.min.js"></script>
    <![endif]-->
<script type="text/javascript" src="resources/js/jquery.js"></script>

<script type="text/javascript" src="resources/js/todo.js"></script>
<script type="text/javascript">

$(function() {
	$("#header").load("resources/header.jsp");
});

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
	<div id="wrapper">
		<div class="body">

			<div id="header"></div>
			<div class="row">
				<div class="col-lg-12">
					<h1 class="page-header">Edit profile</h1>
					<ol class="breadcrumb">
						<li class="active"><i class="fa fa-dashboard"></i> Dashboard
						</li>
						<li class="active"><i class="glyphicon glyphicon-user"></i>
							Edit profile</li>
					</ol>
				</div>
			</div>
			<div class="row">
				<div class="details">
					<form action="create_profile" method="post">
						<br> <br> <input type="text" required="required"
							contenteditable="false" placeholder="User name" name="username"
							id="username" value="${username}"> <br> <br> <input type="text" required="required"
							contenteditable="false" placeholder="Name" name="name"
							id="name"> <br> <br><input
							type="date" required="required" placeholder="DOB" name="dob"
							id="dob"> <br> <br> <input type="email"
							required="required" placeholder="Email id" name="email"
							id="email"><br> <br> <input type="number"
							required="required" placeholder="phone number" name="phno"
							id="phno"> <br> <br>
						<textarea required="required" rows="5" cols="29"
							placeholder="Address" name="addr" id="addr"></textarea>
						<br> <br> <input type="text" required="required"
							placeholder="blood group" name="bgrp" id="bgrp"> <label
							id="lcmsg"></label> <br> <br> <br> <input
							type="submit" value="Submit">
					</form>

				</div>
			</div>
			<!-- /.row -->
		</div>
		<!-- /.container-fluid -->

	</div>
	<!-- /#page-wrapper -->

	</div>
	</div>
	</div>
	<script src=" resources/js/jquery.js"></script>

	<!-- Bootstrap Core JavaScript -->
	<script src=" resources/js/bootstrap.min.js"></script>
	<script src=" resources/js/plugins/morris/morris.min.js"></script>
	<!-- Morris Charts JavaScript -->
	<script src=" resources/js/plugins/morris/raphael.min.js"></script>

	<script src=" resources/js/plugins/morris/morris-data.js"></script>
	<script src=" resources/js/parse-1.3.0.min.js"></script>
	<script type="text/javascript">
		var _gaq = _gaq || [];
		_gaq.push([ '_setAccount', 'UA-36251023-1' ]);
		_gaq.push([ '_setDomainName', 'jqueryscript.net' ]);
		_gaq.push([ '_trackPageview' ]);

		(function() {
			var ga = document.createElement('script');
			ga.type = 'text/javascript';
			ga.async = true;
			ga.src = ('https:' == document.location.protocol ? 'https://ssl'
					: 'http://www')
					+ '.google-analytics.com/ga.js';
			var s = document.getElementsByTagName('script')[0];
			s.parentNode.insertBefore(ga, s);
		})();
	</script>
</body>
</html>
