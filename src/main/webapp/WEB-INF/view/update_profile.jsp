<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
	<%@ page import="net.mymsit.user.Profile" %>
<html>
<head>
<title>Update Profile</title>
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

</script>
</head>
<body>
	<div id="wrapper">
		<div class="body">

			<div id="header"></div>
			<%Profile profile=(Profile)request.getAttribute("profile"); %>
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
					<form action="update_profile.do" method="post">
						<br> <br> <input type="text" required="required"
							contenteditable="false" disabled="disabled" placeholder="User name" name="username"
							id="username" value="${username}"> <br> <br> <input type="text" required="required"
							contenteditable="false" placeholder="Name" name="name"
							id="name" value="${profile.name}"> <br> <br><input
							type="date" required="required" placeholder="DOB" name="dob"
							id="dob" value="${profile.dob}" > <br> <br> <input type="email"
							required="required" placeholder="Email id" name="email"
							id="email" value="${profile.email}"><br> <br> <input type="number"
							required="required" placeholder="phone number" name="phno"
							id="phno" value="${profile.pno}"> <br> <br>
						<textarea required="required" rows="5" cols="29"
							placeholder="Address" name="addr" id="addr">${profile.address}</textarea>
						<br> <br> <input type="text" required="required"
							placeholder="blood group" name="bgrp" id="bgrp" value="${profile.bGroup}"> <label
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
