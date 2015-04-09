<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
	<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ page import="java.util.*"%>
<%@ page import="net.mymsit.course.Course"%>

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
<link href="resources/font-awesome/css/font-awesome.min.css"
	rel="stylesheet" type="text/css">

<!-- HTML5 Shim and Respond.js IE8 support of HTML5 elements and media queries -->
<!-- WARNING: Respond.js doesn't work if you view the page via file:// -->
<!--[if lt IE 9]>
        <script src="https://oss.maxcdn.com/libs/html5shiv/3.7.0/html5shiv.js"></script>
        <script src="https://oss.maxcdn.com/libs/respond.js/1.4.2/respond.min.js"></script>
    <![endif]-->
<script type="text/javascript" src="resources/js/jquery.js"></script>
<script>
	$(function() {
		$("#header").load("resources/header.jsp");
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
		<div id="header"></div>

		<div id="page-wrapper">
<!-- Page Heading -->
<div class="container-fluid">

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
				<c:if test="${not empty courses}">

					<%
						List<Course> courses=(ArrayList<Course>)request.getAttribute("courses");
						for(int i=1;i<=courses.size();i++)
						{
							Course c=courses.get(i-1);
							if(i%4==1)
							{
					%>
					<div class="row">
						<div class="col-md-3 col-sm-6 col-xs-6">
							<div class="panel panel-default">
								<div class="panel-body">
									<h2><%=c.getCourse_Name()%></h2>
									<div class="center">
										<h6>
											<b>Start Date: <%=c.getsDate()%></b>
										</h6>
										<h6>
											<b>End Date: <%=c.geteDate()%></b>
										</h6>
									</div>
								</div>
								<div class="panel-footer">
									<a
										href="course_content.html?course_id=<%=c.getCourseId()%>">Goto
										Course</a>
								</div>
							</div>
						</div>
						<%
							}
														else if(i%4==0)
														{
						%>

						<div class="col-md-3 col-sm-6 col-xs-6">
							<div class="panel panel-default">
								<div class="panel-body">
									<h2><%=c.getCourse_Name()%></h2>
									<div class="center">
										<h6>
											<b>Start Date: <%=c.getsDate()%></b>
										</h6>
										<h6>
											<b>End Date: <%=c.geteDate()%></b>
										</h6>
									</div>
								</div>
								<div class="panel-footer">
									<a
										href="course_content.html?course_id=<%=c.getCourseId()%>">Goto
										Course</a>
								</div>
							</div>
						</div>
					</div>
					<%
						}
												else
												{
					%>
					<div class="col-md-3 col-sm-6 col-xs-6">
						<div class="panel panel-default">
							<div class="panel-body">
								<h2><%=c.getCourse_Name()%></h2>
								<div class="center">
									<h6>
										<b>Start Date: <%=c.getsDate()%></b>
									</h6>
									<h6>
										<b>End Date: <%=c.geteDate()%></b>
									</h6>
								</div>
							</div>
							<div class="panel-footer">
								<a
									href="course_content.html?course_id=<%=c.getCourseId()%>">Goto
									Course</a>
							</div>
						</div>
					</div>
					<%
						}
					}
					%>
				</c:if>
		</div>
		</div>
		</div>
	<!-- /.container-fluid -->
	<!-- /#page-wrapper -->
	<!-- jQuery -->
	<!-- jQuery -->
	<script src="resources/js/jquery.js"></script>
	<!-- Bootstrap Core JavaScript -->
	<script src="resources/js/bootstrap.min.js"></script>
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
