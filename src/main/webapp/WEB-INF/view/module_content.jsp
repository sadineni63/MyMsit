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

<title>Module Content</title>

<!-- Bootstrap Core CSS -->
<link href="resources/css/bootstrap.min.css" rel="stylesheet">

<!-- Custom CSS -->
<link href="resources/css/sb-admin.css" rel="stylesheet">



<!-- Custom Fonts -->
<link href="resources/font-awesome/css/font-awesome.min.css"
	rel="stylesheet" type="text/css">

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
		$("#header").load("resources/header.jsp");
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
		<div id="header"></div>
		<div id="page-wrapper">

			<div class="container-fluid">

				<!-- Page Heading -->
				<div class="row">
					<div class="col-lg-8">
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
