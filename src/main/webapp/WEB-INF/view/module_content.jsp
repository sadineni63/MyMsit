<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>

<!DOCTYPE html>
<html lang="en">

<head>

<meta charset="utf-8">
<meta name="viewport"
	content="width=device-width, initial-scale=1.0, maximum-scale=1.0, user-scalable=no" />
<meta http-equiv="X-UA-Compatible" content="IE=edge">
<meta name="viewport" content="width=device-width, initial-scale=1">
<meta name="description" content="">
<meta name="author" content="">

<title>Blank Page</title>

<!-- Bootstrap Core CSS -->
<link href="resources/css/bootstrap.min.css" rel="stylesheet">

<!-- Custom CSS -->
<link href="resources/css/sb-admin.css" rel="stylesheet">

<!-- Morris Charts CSS -->
<link href="resources/css/plugins/morris.css" rel="stylesheet">

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
<script type="text/javascript" src="resources/js/notifications.js"></script>
<script>
	$(function() {
		$("#header").load("resources/header.jsp");
	});
</script>
<link href="resources/font-awesome/css/font-awesome.css" rel="stylesheet">
<link href="resources/css/notifications.css" rel="stylesheet">
</head>

<body>

	<div id="wrapper">

		<!-- Navigation -->
		<!-- Navigation -->
		<div id="header"></div>
		<div id="page-wrapper">

			<div class="container-fluid">

				<!-- Page Heading -->
				<div class="row">
				<div class="col-lg-8">
				<label>Course:</label><input readonly = "readonly">
				<label>Module:</label><input type = "text" readonly = "readonly">
				<label>Week:</label><input type = "text" readonly = "readonly"><br><br>
						<div class="hero-unit">
							<label>Introduction: </label>
							<textarea class="form-control" rows="2" id="comment"></textarea>
						</div>
						<br>
						<div class="hero-unit">
							<label>Learning Objective: </label>
							<textarea class="form-control" rows="4" id="comment"></textarea>
						</div>
						<br>
						<div class="hero-unit">
							<label>Resources: </label>
							<textarea class="form-control" rows="2" id="comment"></textarea>
						</div>
						<br>
						<div class="hero-unit">
							<label>Tasks: </label>
							<textarea class="form-control" rows="5" id="comment"></textarea>
						</div>
						<br>
						<div class="hero-unit">
							<label>Submissions: </label>
							<textarea class="form-control" rows="3" id="comment"></textarea>
						</div>
						<br>
						<div class="hero-unit">
							<label>Dead line: </label>
							<textarea class="form-control" rows="1" id="comment"></textarea>
						</div>
						<br>
						<center>
							<button class="btn btn-primary" type="button">Submit</button>
						</center>
					</div>
				</div>
			</div>
			<!-- /.container-fluid -->

		</div>
		<!-- /#page-wrapper -->

	</div>
	<!-- /#wrapper -->

	<!-- jQuery -->
	<script src="resources/js/jquery.js"></script>

	<!-- Bootstrap Core JavaScript -->
	<script src="resources/js/bootstrap.min.js"></script>

	<!-- Morris Charts JavaScript -->
	<script src="resources/js/plugins/morris/raphael.min.js"></script>
	<script src="resources/js/plugins/morris/morris.min.js"></script>
	<script src="resources/js/plugins/morris/morris-data.js"></script>
</body>

</html>
