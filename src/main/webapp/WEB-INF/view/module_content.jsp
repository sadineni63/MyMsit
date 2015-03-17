<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>

<!DOCTYPE html>
<html lang="en">

<head>

<meta charset="utf-8">
<meta name="viewport" content="width=device-width, initial-scale=1.0, maximum-scale=1.0, user-scalable=no" />
<meta http-equiv="X-UA-Compatible" content="IE=edge">
<meta name="viewport" content="width=device-width, initial-scale=1">
<meta name="description" content="">
<meta name="author" content="">

<title>Module Content</title>

<!-- Bootstrap Core CSS -->
<link href="resources/css/bootstrap.min.css" rel="stylesheet">

<!-- Custom CSS -->
<link href="resources/css/sb-admin.css" rel="stylesheet">



<!-- Custom Fonts -->
<link href="resources/font-awesome/css/font-awesome.min.css" rel="stylesheet"
	type="text/css">

<!-- HTML5 Shim and Respond.js IE8 support of HTML5 elements and media queries -->
<!-- WARNING: Respond.js doesn't work if you view the page via file:// -->
<!--[if lt IE 9]>
        <script src="resources/https://oss.maxcdn.com/libs/html5shiv/3.7.0/html5shiv.js"></script>
        <script src="https://oss.maxcdn.com/libs/respond.js/1.4.2/respond.min.js"></script>
    <![endif]-->
<script type="text/javascript" src="resources/js/jquery.js"></script>

<link href="resources/summernote/summernote.css" />
<script src="resources/summernote/summernote.js"></script>
<script>
	$(function() {
		$("#header").load("header.html");
	});
</script>

<script type="text/javascript">
	$(function() {
		$('.summernote').summernote({
			height : 200
		});

		$('form').on('submit', function(e) {
			e.preventDefault();
			alert($('.summernote').code());
		});
	});
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
						<form>
							<textarea class="summernote"><p>Seasons <b>coming up</b>
								</p></textarea>
							<button type="submit" class="btn btn-default">submit</button>
						</form>
					</div>
				</div>
			</div>
		</div>
	</div>

	<!-- /#page-wrapper -->

	<!-- /#wrapper -->

	<!-- jQuery -->

	<!-- Bootstrap Core JavaScript -->
	<script>
		$(function() {
			$('#dropper').on('shown.bs.modal', function() {
				$('#dropping').summernote({
					height : 300,
					focus : true
				});
			}).on('hidden.bs.modal', function() {
				$('#dropping').destroy();
			});
		});
	</script>
</body>

</html>
