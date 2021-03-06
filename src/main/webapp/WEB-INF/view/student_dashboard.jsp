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

<title>Dashboard</title>

<!-- Bootstrap Core CSS -->
<link href="resources/css/bootstrap.min.css" rel="stylesheet">

<!-- Custom CSS -->
<link href="resources/css/sb-admin.css" rel="stylesheet">

<!-- Morris Charts CSS -->
<link href="resources/css/plugins/morris.css" rel="stylesheet">

<link href="resources/css/dashboard.css" rel="stylesheet">

<link href="resources/css/todo.css" rel="stylesheet">

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

<script type="text/javascript" src="resources/js/student_todo.js"></script>


<script>
	$(function() {
		$("#header").load("resources/header.jsp");
	});
</script>
</head>

<body>
	<div id="wrapper">

		<!-- Navigation -->
<div id="header"></div>	
		<div id="page-wrapper">

			<div class="container-fluid">

				<!-- Page Heading -->
				<div class="row">
					<div class="col-lg-12">
						<h1 class="page-header">Dashboard</h1>
					</div>
				</div>
				<!-- /.row -->

				<div class="row">
					<div class="col-lg-8">
						<h3>Current Course</h3>
						<div class="table-responsive">
							<table class="table table-bordered table-hover">
								<thead>
									<tr>
										<th>C_ID</th>
										<th>C_Name</th>
										<th>Week & Module</th>
										<th>Deadline</th>
									</tr>
								</thead>
								<tbody class="table1">
									<tr>
										<td>123</td>
										<td>Java</td>
										<td>W1_M2</td>
										<td>10:30 AM</td>
									</tr>
								</tbody>
							</table>
							<h3>Recent Resources</h3>
							<table class="table table-bordered table-hover">
								<thead>
									<tr>
										<th>C_Name</th>
										<th>Student_Name</th>
										<th>Module</th>
										<th>Resource_type</th>
										<th>Resource_Link</th>
										<th>Rating</th>
									</tr>
								</thead>
								<tbody class="table1">
									<tr>
										<td>Java</td>
										<td>X</td>
										<td>Module 2</td>
										<td>Video</td>
										<td><a
											href="https://www.google.co.in/search?q=bootsrtap&rlz=1C1CHWA_enIN627&oq=boo&aqs=chrome.0.69i59l3j69i65j69i60l2.1140j0j4&sourceid=chrome&es_sm=93&ie=UTF-8#q=bootstrap">resource1</a></td>
										<td>3/5</td>
									</tr>
								</tbody>
							</table>
						</div>
					</div>
					<div class="col-md-4">
					<h3>To Do</h3>
						<div class="panel panel-danger ">
							<div class="panel-heading">
								<form class="form-group" id="newTaskForm">
									<div class="input-group" style="margin-bottom: -40px;">
										<div class="input-group-addon" id="saveNewItem">
											<a href="">Save</a>
										</div>
										<div class="input-group-addon" id="cancel">
											<a href="">Cancel</a>
										</div>
										<input class="form-control" type="text" id="newItemInput"
											placeholder="New Item">
									</div>
								</form>
								<div class='new-item-header'>
									<span id="newHeading">New</span> <a href="#newItem"
										class="pull-right pencil" id="newListItem" style="">&#9783;</a>
								</div>
							</div>
							<div class="panel-body">
								<ul class="list-group" id='newList'></ul>
							</div>
						</div>
						<div class="panel panel-warning ">
							<div class="panel-heading">In Progress</div>
							<div class="panel-body">
								<ul class="list-group" id="currentList"></ul>
							</div>
						</div>
						<div class="panel panel-success ">
							<div class="panel-heading">Archived</div>
							<div class="panel-body">
								<ul class="list-group" id="archivedList"></ul>
							</div>
						</div>
					</div>
				</div>
				<!-- /.row -->

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
	<script src="resources/http://www.parsecdn.com/js/parse-1.3.0.min.js"></script>
	<script src="resources/js/student_todo.js"></script>
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
