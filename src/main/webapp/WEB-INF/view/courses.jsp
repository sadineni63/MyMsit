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

<title>Courses</title>

<!-- Bootstrap Core CSS -->
<link href="resources/css/bootstrap.min.css" rel="stylesheet">
<link href="resources/css/courses.css" rel="stylesheet">

<!-- Custom CSS -->
<link href="resources/css/sb-admin.css" rel="stylesheet">


<!-- Morris Charts CSS -->
<link href="resources/css/plugins/morris.css" rel="stylesheet">

<!-- Custom Fonts -->
<link href="resources/font-awesome/css/font-awesome.min.css" rel="stylesheet"
	type="text/css">

<!-- HTML5 Shim and Respond.js IE8 support of HTML5 elements and media queries -->
<!-- WARNING: Respond.js doesn't work if you view the page via file:// -->
<!--[if lt IE 9]>
        <script src="https://oss.maxcdn.com/libs/html5shiv/3.7.0/html5shiv.js"></script>
        <script src="https://oss.maxcdn.com/libs/respond.js/1.4.2/respond.min.js"></script>
    <![endif]-->
<script type="text/javascript" src="resources/js/jquery.js"></script>
<script>
	$(function() {
		$("#header").load("header.html");
	});

	$(function() {
		$('.panel').hover(function() {
			$(this).find('.panel-footer').slideDown(250);
		}, function() {
			$(this).find('.panel-footer').slideUp(250); //.fadeOut(205)
		});
	})
</script>


</head>

<body>

	<div id="wrapper">

		<!-- Navigation -->
				<!-- Navigation -->
	<nav class="navbar navbar-inverse navbar-fixed-top" role="navigation">
            <!-- Brand and toggle get grouped for better mobile display -->
            <div class="navbar-header">
            <button type="button" class="navbar-toggle" data-toggle="collapse"
					data-target=".navbar-collapse">
					<span class="sr-only">Toggle navigation</span> <span
						class="icon-bar"></span> <span class="icon-bar"></span> <span
						class="icon-bar"></span>
				</button>
                <a class="navbar-brand" href="dashboard.html"><span class="title">Master of Science in Information Technology</span></a>
            </div>
            <!-- Top Menu Items -->
            <ul class="nav navbar-right top-nav">
                              <li class="dropdown">
                    <a href="#" class="dropdown-toggle" data-toggle="dropdown"><i class="fa fa-user"></i> Welcome Welcome ${username} <b class="caret"></b></a>
                    <ul class="dropdown-menu">
                        <li>
                            <a href="#"><i class="fa fa-fw fa-user"></i> Profile</a>
                        </li>
                        <li>
                            <a href="#"><i class="fa fa-fw fa-gear"></i> Settings</a>
                        </li>
                        <li class="divider"></li>
                        <li>
                            <a href="#"><i class="fa fa-fw fa-power-off"></i> Log Out</a>
                        </li>
                    </ul>
                </li>
            </ul>
            <!-- Sidebar Menu Items - These collapse to the responsive navigation menu on small screens -->
            <div class="collapse navbar-collapse navbar-ex1-collapse">
                <ul class="nav navbar-nav side-nav">
                    <li>
                        <a href="dashboard.html"><i class="fa fa-fw fa-dashboard"></i> Dashboard</a>
                    </li>
                    <li>
                        <a href="notifications.html"><i class="fa fa-fw fa-bell"></i> Notifications</a>
                    </li>
                    <li>
                        <a href="charts.html"><i class="fa fa-fw fa-calendar"></i> Calendar</a>
                    </li>
                    <li>
                        <a href="courses.html"><i class="fa fa-fw fa-bar-chart-o"></i> Courses</a>
                    </li>
                    <li>
                        <a href="profile.html"><i class="fa fa-fw fa-bar-chart-o"></i> Profile</a>
                    </li>
                    <li>
                        <a href="batchmates.html"><i class="fa fa-fw fa-bar-chart-o"></i> Batch Mates</a>
                    </li>
                    <li>
                        <a href="mentors.html"><i class="fa fa-fw fa-bar-chart-o"></i> Mentors</a>
                    </li>
                </ul>
            </div>
            <!-- /.navbar-collapse -->
        </nav>
	
		<div id="page-wrapper">

			<div class="container-fluid">

				<!-- Page Heading -->
				<div class="row">
					<div class="col-lg-12">
						<h1 class="page-header">Courses</h1>
						<ol class="breadcrumb">
							<li><i class="fa fa-dashboard"></i> <a href="dashboard.html">Dashboard</a>
							</li>
							<li class="active"><i class="fa fa-bar-chart-o"></i> Courses
							</li>
						</ol>
					</div>
				</div>
				<!-- /.row -->

				<div class="row">
					<div class="col-md-3 col-sm-6 col-xs-6">
						<div class="panel panel-default">
							<div class="panel-body">
								<h2>Java</h2>
								<div class="center">
									<h6>
										<b>Start Date: 02-02-2015</b>
									</h6>
									<h6>
										<b>End Date: 28-02-2015</b>
									</h6>
								</div>
							</div>
							<div class="panel-footer"><a href="course_content.html">Goto Course</a></div>
						</div>
					</div>
					<div class="col-md-3 col-sm-6 col-xs-6">
						<div class="panel panel-default">
							<div class="panel-body">
								<h2>DBMS</h2>
								<div class="center">
									<h6>
										<b>Start Date: 01-02-2015</b>
									</h6>
									<h6>
										<b>End Date: 02-02-2015</b>
									</h6>
								</div>
							</div>
							<div class="panel-footer"><a href="course_content.html">Goto Course</a></div>
						</div>
					</div>
					<div class="col-md-3 col-sm-6 col-xs-6">
						<div class="panel panel-default">
							<div class="panel-body">
								<h2>C</h2>
								<div class="center">
									<h6>
										<b>Start Date: 01-02-2015</b>
									</h6>
									<h6>
										<b>End Date: 02-02-2015</b>
									</h6>
								</div>
							</div>
							<div class="panel-footer"><a href="course_content.html">Goto Course</a></div>
						</div>
					</div>
					<div class="col-md-3 col-sm-6 col-xs-6">
						<div class="panel panel-default">
							<div class="panel-body">
								<h2>WP</h2>
								<div class="center">
									<h6>
										<b>Start Date: 01-02-2015</b>
									</h6>
									<h6>
										<b>End Date: 02-02-2015</b>
									</h6>
								</div>
							</div>
							<div class="panel-footer"><a href="course_content.html">Goto Course</a></div>
						</div>
					</div>
				</div>

				<div class="row">
					<div class="col-md-3 col-sm-6 col-xs-6">
						<div class="panel panel-default">
							<div class="panel-body">
								<h2>LEDA-1</h2>
								<div class="center">
									<h6>
										<b>Start Date: 01-02-2015</b>
									</h6>
									<h6>
										<b>End Date: 02-02-2015</b>
									</h6>
								</div>
							</div>
							<div class="panel-footer"><a href="course_content.html">Goto Course</a></div>
						</div>
						</div>
						<div class="col-md-3 col-sm-6 col-xs-6">
							<div class="panel panel-default">
								<div class="panel-body">
									<h2>LEDA-2</h2>
									<div class="center">
										<h6>
											<b>Start Date: 02-02-2015</b>
										</h6>
										<h6>
											<b>End Date: 02-03-2015</b>
										</h6>
									</div>
								</div>
								<div class="panel-footer"><a href="course_content.html">Goto Course</a></div>
							</div>
						</div>
						<div class="col-md-3 col-sm-6 col-xs-6">
							<div class="panel panel-default">
								<div class="panel-body">
									<h2>SEF</h2>
									<div class="center">
										<h6>
											<b>Start Date: 01-02-2015</b>
										</h6>
										<h6>
											<b>End Date: 02-02-2015</b>
										</h6>
									</div>
								</div>
								<div class="panel-footer"><a href="course_content.html">Goto Course</a></div>
							</div>
						</div>
						<div class="col-md-3 col-sm-6 col-xs-6">
							<div class="panel panel-default">
								<div class="panel-body">
									<h2>LEDA-3</h2>
									<div class="center">
										<h6>
											<b>Start Date: 01-02-2015</b>
										</h6>
										<h6>
											<b>End Date: 02-02-2015</b>
										</h6>
									</div>
								</div>
								<div class="panel-footer"><a href="course_content.html">Goto Course</a></div>
							</div>
						</div>
					</div>
					</div>
				</div>




			</div>
			<!-- /.container-fluid -->

		<!-- /#page-wrapper -->

		<!-- jQuery -->
		<!-- jQuery -->
	<script src="js/jquery.js"></script>

	<!-- Bootstrap Core JavaScript -->
	<script src="js/bootstrap.min.js"></script>


		<!-- Morris Charts JavaScript -->
		<script src="resources/js/plugins/morris/raphael.min.js"></script>
		<script src="resources/js/plugins/morris/morris.min.js"></script>
		<script src="resources/js/plugins/morris/morris-data.js"></script>

		<!-- Flot Charts JavaScript -->
		<!--[if lte IE 8]><script src="resources/js/excanvas.min.js"></script><![endif]-->
		<script src="resources/js/plugins/flot/jquery.flot.js"></script>
		<script src="resources/js/plugins/flot/jquery.flot.tooltip.min.js"></script>
		<script src="resources/js/plugins/flot/jquery.flot.resize.js"></script>
		<script src="resources/js/plugins/flot/jquery.flot.pie.js"></script>
		<script src="resources/js/plugins/flot/flot-data.js"></script>
</body>

</html>
