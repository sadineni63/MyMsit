<%@ page language="java" contentType="text/html; charset=ISO-8859-1" pageEncoding="ISO-8859-1"%>
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

<title>Dashboard</title>

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
<link rel="stylesheet" href="resources/css/datepicker.css">
<script src="resources/js/jquery.min.js"></script>
<script src="resources/js/bootstrap-datepicker.js"></script>
<script type="text/javascript" src="resources/js/jquery.min.js"></script>
<script type="text/javascript" src="resources/js/bootstrap.min.js"></script>
<script type="text/javascript" src="resources/js/scripts.js"></script>
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
<script type="text/javascript">
	function values() {
		var x = document.getElementById("mymodal");
		var cname = document.getElementById("cname").value;
		var sdate = document.getElementById("sdate").value;
		var edate = document.getElementById("edate").value;
		addCourse(cname, sdate, edate);
	}
	function addCourse(cname, sdate, edate) {

		var issue_num = document.getElementById("panel-body").childNodes.length;
		console.log(issue_num);
		var coursename = document.createElement("h2");
		coursename.innerHtml = "" + cname;
		var divTag = document.createElement("div");
		divTag.class = "center";
		divTag.id = "" + issue_num;
		document.getElementById("panel-body").appendChild(divTag);

		var startdate = document.createElement("h6");
		startdate.innerHTML = "" + sdate;
		document.getElementById("" + issue_num).appendChild(startdate);

		var enddate = document.createElement("h6");
		endate.innerHtml = "" + edate;
		document.getElementById("" + issue_num).appendChild(edate);
		console.log(document.getElementById("panel-body").childNodes.length);
	}
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
										href="mentor_course_content.html?course_id=<%=c.getCourseId()%>">Goto
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
										href="mentor_course_content.html?course_id=<%=c.getCourseId()%>">Goto
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
									href="mentor_course_content.html?course_id=<%=c.getCourseId()%>">Goto
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
				<div style="text-align: center" class="form-buttons-wrapper">
					<button type="button" id="addcourse" class="btn btn-primary btn-lg"
						data-toggle="modal" data-target="#myModal">Add Course</button>
				</div>
					
		<%
			if(request.getParameter("course_create")!=null)
			{
				%>		<div style="text-align: center" class="form-buttons-wrapper">
						<label style="color: red">Course Can't be Created. Duplicate Course ID</label>
						</div>
						<%
			}
		%>
		</div>
		
		q
			</div>

		</div>
		<%
			if(request.getParameter("course_create")!=null)
			{
				%>
		<script type="text/javascript"> alert("The course is duplicate. ")</script>
		<%
			}
		%>

		<!-- /.container-fluid -->
		<!-- Modal -->

		<div class="modal fade" id="myModal" tabindex="-1" role="dialog"
			aria-labelledby="myModalLabel" aria-hidden="true">
			<div class="modal-dialog">
				<div class="modal-content">
					<div class="modal-header">
						<button type="button" class="close" data-dismiss="modal"
							aria-label="Close">
							<span aria-hidden="true">&times;</span>
						</button>
						<h3 class="modal-title" id="myModalLabel">Course Form</h3>
					</div>
					<div class="modal-body">
						<div class="details">
							<form role="form" action="create_course" method="post">
								<div class="form-group">

									<label>Course ID* :</label> <input type="text" name="cid"
										required="required" class="form-control" id="cid"><br>
									<label>Course Name* :</label> <input type="text" name="cname"
										required="required" class="form-control" id="cname">

								</div>
								<div class="form-group">
									<div class="hero-unit">
										<label>Start Date:</label> <input type="date" required="required"
											class="form-control" id="sdate" name="sdate">
									</div>
								</div>
								<div class="form-group">
									<div class="hero-unit">
										<label>End Date:</label> <input type="date" required="required"
											class="form-control" id="edate" name="edate">
									</div>
								</div>

								<button id="myBtn" type="submit" class="btn btn-default"
									onclick="values()">Submit</button>
							</form>
						</div>

					</div>
					<script src="resources/js/jquery.min.js"></script>
					<script src="resources/js/bootstrap-datepicker.js"></script>
					<script type="text/javascript">
						// When the document is ready
						$(document).ready(function() {

							$('#example1').datepicker({
								format : "dd/mm/yyyy"
							});

						});
					</script>
					<script type="text/javascript">
						var form = $('#myModal');
						form.submit(function(ev) {
							$.ajax({
								type : form.attr('method'),
								url : form.attr('action'),
								data : form.serialize(),
								success : function(data) {
									window.location.reload();
								}
							});
						});
					</script>
				</div>
			</div>
		</div>


	<!-- /#page-wrapper -->

	<!-- jQuery -->

	<!-- Morris Charts JavaScript -->
	<script src="resources/js/plugins/morris/raphael.min.js"></script>
	<script src="resources/js/plugins/morris/morris.min.js"></script>
	<script src="resources/js/plugins/morris/morris-data.js"></script>

	<!-- Flot Charts JavaScript -->
	<!--[if lte IE 8]><script src="js/excanvas.min.js"></script><![endif]-->

</body>
</html>
