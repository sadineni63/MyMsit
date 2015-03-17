<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<html>
<head>
<title>Profile</title>
<meta charset="utf-8">
<meta http-equiv="X-UA-Compatible" content="IE=edge">
<meta name="viewport" content="width=device-width, initial-scale=1">
<meta name="description" content="">
<meta name="author" content="">

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
<script type="text/javascript" src="resources/js/profile.js"></script>
<link href="resources/css/bootstrap.min.css" rel="stylesheet">
<script>
	$(function() {
		$("#header").load("header.html");
	});
</script>
<link href="resources/css/profile.css" rel="stylesheet">
<link href="resources/font-awesome/css/font-awesome.css" rel="stylesheet">
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
                    <a href="#" class="dropdown-toggle" data-toggle="dropdown"><i class="fa fa-user"></i> Welcome Lakshminarayana Sadineni <b class="caret"></b></a>
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
						<h1 class="page-header">Profile</h1>
						<ol class="breadcrumb">
							<li class="active"><i class="fa fa-dashboard"></i> Dashboard
							</li>
							<li class="active"><i class="glyphicon glyphicon-bell"></i>
								Profile</li>
						</ol>
					</div>
				</div>
				<div class="container">
					<div class="row">
						<div class="col-md-5  toppad  pull-right col-md-offset-3 ">
							<A href="edit.html">Edit Profile</A> <A href="edit.html">Logout</A>
							<br>
							<p class=" text-info">May 05,2014,03:00 pm</p>
						</div>
						<div
							class="col-xs-12 col-sm-12 col-md-6 col-lg-6 col-xs-offset-0 col-sm-offset-0 col-md-offset-3 col-lg-offset-3 toppad">


							<div class="panel panel-info">
								<div class="panel-heading">
									<h3 class="panel-title">Sheena Kristin A.Eschor</h3>
								</div>
								<div class="panel-body">
									<div class="row">
										<div class="col-md-3 col-lg-3 " align="center">
											<img alt="User Pic"
												src="https://lh5.googleusercontent.com/-b0-k99FZlyE/AAAAAAAAAAI/AAAAAAAAAAA/eu7opA4byxI/photo.jpg?sz=100"
												class="img-circle">
										</div>

										<!--<div class="col-xs-10 col-sm-10 hidden-md hidden-lg"> <br>
                  <dl>
                    <dt>DEPARTMENT:</dt>
                    <dd>Administrator</dd>
                    <dt>HIRE DATE</dt>
                    <dd>11/12/2013</dd>
                    <dt>DATE OF BIRTH</dt>
                       <dd>11/12/2013</dd>
                    <dt>GENDER</dt>
                    <dd>Male</dd>
                  </dl>
                </div>-->
										<div class=" col-md-9 col-lg-9 ">
											<table class="table table-user-information">
												<tbody>
													<tr>
														<td>Department:</td>
														<td>Programming</td>
													</tr>
													<tr>
														<td>Hire date:</td>
														<td>06/23/2013</td>
													</tr>
													<tr>
														<td>Date of Birth</td>
														<td>01/24/1988</td>
													</tr>

													<tr>
													<tr>
														<td>Gender</td>
														<td>Male</td>
													</tr>
													<tr>
														<td>Home Address</td>
														<td>Metro Manila,Philippines</td>
													</tr>
													<tr>
														<td>Email</td>
														<td><a href="mailto:info@support.com">info@support.com</a></td>
													</tr>
													<td>Phone Number</td>
													<td>123-4567-890(Landline)<br>
													<br>555-4567-890(Mobile)
													</td>

													</tr>

												</tbody>
											</table>

											<a href="#" class="btn btn-primary">My Sales Performance</a>
											<a href="#" class="btn btn-primary">Team Sales
												Performance</a>
										</div>
									</div>
								</div>
								<div class="panel-footer">
									<a data-original-title="Broadcast Message"
										data-toggle="tooltip" type="button"
										class="btn btn-sm btn-primary"><i
										class="glyphicon glyphicon-envelope"></i></a> <span
										class="pull-right"> <a href="edit.html"
										data-original-title="Edit this user" data-toggle="tooltip"
										type="button" class="btn btn-sm btn-warning"><i
											class="glyphicon glyphicon-edit"></i></a> <a
										data-original-title="Remove this user" data-toggle="tooltip"
										type="button" class="btn btn-sm btn-danger"><i
											class="glyphicon glyphicon-remove"></i></a>
									</span>
								</div>

							</div>
						</div>
					</div>
				</div>
			</div>
		</div>
	</div>
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