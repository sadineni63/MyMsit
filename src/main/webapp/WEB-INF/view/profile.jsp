<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>

<!DOCTYPE html>
<html lang="en">

<head>

<meta charset="utf-8">
<meta http-equiv="X-UA-Compatible" content="IE=edge">l
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


<script>
	$(function() {
		$("#header").load("resources/header.jsp");
	});
</script>

</head>

<body>
	<div class="jquery-script-ads" align="center" style="margin: 20px auto">
		<script type="text/javascript">
		<!--
			google_ad_client = "ca-pub-2783044520727903";
			/* jQuery_demo */
			google_ad_slot = "2780937993";
			google_ad_width = 728;
			google_ad_height = 90;
		//-->
		</script>
		<script type="text/javascript"
			src="resources/http://pagead2.googlesyndication.com/pagead/show_ads.js">
			
		</script>
	</div>
	<div id="wrapper">

		<!-- Navigation -->

		<!-- Navigation -->
		<div id="header"></div>
		<div id="page-wrapper">

			<div class="container-fluid">

				<!-- Page Heading -->
				<div class="row">
					<div class="col-lg-12">
						<h1 class="page-header">Profile</h1>
					</div>
				</div>
				<div class="row">
					<div class="col-md-3">
						<img class="img-circle" src="resources/img/download.jpg"><br>
						<br>
						<center>
							<button class="btn btn-success" type="button" id="edit"
								data-toggle="modal" data-target="#editprofileModal">Edit
								Profile</button>
						</center>
					</div>
					<div class="col-lg-9">
						<div class="table-responsive">
							<table class="table table-striped" style="width: auto">

								<tr>
									<th>Name</th>
									<td id="name">k.uday kiran</td>
								</tr>
								<tr>
									<th>DOB</th>
									<td id="dob">02/04/1993</td>
								</tr>
								<tr>
									<th>Email Id</th>
									<td id="email">udaykiran0528@gmail.com</td>
								</tr>
								<tr>
									<th>Phone Number</th>
									<td id="phno">7842604231</td>
								</tr>
								<tr>
									<th>Address</th>
									<td id="address">hno 24-801/1, panchasheela
										colony,rangareddy nagar,hyd</td>
								</tr>
								<tr>
									<th>Blood group</th>
									<td id="bgroup">O +ve</td>
								</tr>
							</table>
						</div>

					</div>

				</div>
			</div>

		</div>
		<!-- row -->
		<div class="modal fade" id="editprofileModal" tabindex="-1"
			role="dialog" aria-labelledby="myModalLabel" aria-hidden="true">
			<div class="modal-dialog">
				<div class="modal-content">
					<div class="modal-header">
						<button type="button" class="close" data-dismiss="modal"
							aria-label="Close">
							<span aria-hidden="true">&times;</span>
						</button>
						<h3 class="modal-title" id="myModalLabel">Profile Form</h3>
					</div>
					<div class="modal-body">
						<div class="modal-body">
							<script type="text/javascript">
			
			$(".btn[data-target='#editprofileModal']").click(function() {
			      var columnHeadings = $("th").map(function() {
			                return $(this).text();
			             }).get();
			      columnHeadings.pop();
			      var columnValues = $(this).parent().siblings().map(function() {
			                return $(this).text();
			      }).get();
			 var modalBody = $('<div id="modalContent"></div>');
			 var modalForm = $('<form role="form" name="modalForm" action="mentor_course_content.jsp" method="post"></form>');
			 $.each(columnHeadings, function(i, columnHeader) {
			      var formGroup = $('<div class="form-group"></div>');
			      formGroup.append('<label for="'+columnHeader+'">'+columnHeader+'</label>');
			      formGroup.append('<input class="form-control" name="'+columnHeader+i+'" id="'+columnHeader+i+'" value="'+columnValues[i]+'" />');
			      modalForm.append(formGroup);
			 });
			 modalBody.append(modalForm);
			 $('.modal-body').html(modalBody);
			});
			$('.modal-footer .btn-primary').click(function() {
			  $('form[name="modalForm"]').submit();
			});
			</script>
						</div>
						<div class="modal-footer">
							<button type="button" class="btn btn-default"
								data-dismiss="modal">Close</button>
							<button type="button" class="btn btn-primary">Save
								changes</button>
						</div>
					</div>
					

				</div>

			</div>
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
		<script src="resources/js/todo.js"></script>
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
