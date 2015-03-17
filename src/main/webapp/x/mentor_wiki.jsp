<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html lang="en">
<head>
<meta charset="utf-8">
<title>Mentor Wiki</title>
<meta name="viewport" content="width=device-width, initial-scale=1.0">
<meta name="description" content="">
<meta name="author" content="">
<SCRIPT TYPE="text/javascript">
	function popup(mylink, windowname) {
		if (!window.focus)
			return true;
		var href;
		if (typeof (mylink) == 'string')
			href = mylink;
		else
			href = mylink.href;
		window.open(href, windowname, 'width=400,height=200,scrollbars=yes');
		return false;
	}
</SCRIPT>
<link href="css/form1.css" rel="stylesheet">
<link href="css/bootstrap.min.css" rel="stylesheet">
<link href="css/style.css" rel="stylesheet">
<link href="css/ddmenu.css" rel="stylesheet">
<link rel="stylesheet" href="css/datepicker.css">
<script src="js/jquery.min.js"></script>
<script src="js/bootstrap-datepicker.js"></script>
<script type="text/javascript">
	// When the document is ready
	$(document).ready(function() {

		$('#example1').datepicker({
			format : "dd/mm/yyyy"
		});

	});
</script>
<!-- Fav and touch icons -->

<link type="text/css" rel="stylesheet" href="css/styles/form.css" />
<script type="text/javascript" src="js/jquery.min.js"></script>
<script type="text/javascript" src="js/bootstrap.min.js"></script>
<script type="text/javascript" src="js/scripts.js"></script>
<link rel="stylesheet" type="text/css" href="css/dialog.css" />
<!-- individual effect -->
<link rel="stylesheet" type="text/css" href="css/dialog-wilma.css" />
<script src="js/modernizr.custom.js"></script>

<link rel="stylesheet" type="text/css" href="css/form1.css" />
<link type="text/css" rel="stylesheet"
	href="css/styles/form.css?v3.2.4827" />
<link href="css/calendarview.css?v3.2.4827" rel="stylesheet"
	type="text/css" />
<link type="text/css" rel="stylesheet"
	href="css/styles/nova.css?3.2.4827" />
<link type="text/css" media="print" rel="stylesheet"
	href="http://d2g9qbzl5h49rh.cloudfront.net/css/printForm.css?3.2.4827" />

<script src="js/prototype.js?v=3.2.4827" type="text/javascript"></script>
<script src="js/vendor/json2.js?v=3.2.4827" type="text/javascript"></script>
<script src="js/protoplus.js?v=3.2.4827" type="text/javascript"></script>
<script src="js/protoplus-ui-form.js?v=3.2.4827" type="text/javascript"></script>
<script src="js/jotform.js?v=3.2.4827" type="text/javascript"></script>
<script src="js/calendarview.js?v=3.2.4827" type="text/javascript"></script>

</head>

<body>
	<div class="container">
		<div class="content">
			<div class="row clearfix" id="firstrow">
				<div class="col-md-2 column">
					<img class="logo" alt="140x140" src="img/logo.png">
				</div>
				<div class="col-md-7 column">
					<div class="page-header">
						<div>
							<h2>Master of Science in Information Technology</h2>
						</div>
					</div>
				</div>
				<div class="col-md-3 column">
					<div class="page-header">
						<form action="" id="search-form">
							<fieldset>
								<div class="rowElem">
									<input type="text"> <a href="#"
										onClick="document.getElementById('search-form').submit()">Search</a>
								</div>
							</fieldset>
						</form>
						<nav id="ddmenu">
							<div class="menu-icon"></div>
							<ul>
								<li class="full-width"><span class="top-heading">Welcome
										Lakshminarayana Sadineni</span>
									<div class="dropdown">
										<div class="dd-inner">
											<div class="column">
												<a href="#">Profile</a> <a href="#">Account Settings</a> <a
													href="#">Sign Out</a>
											</div>
										</div>
									</div></li>
							</ul>
						</nav>
					</div>
				</div>
			</div>

			<div class="row clearfix" id="wiki_content">
				<div class="col-md-12 column">
					<h2>Wiki Page</h2>
					<p>This is the description of Wiki</p>
					<div class="tabbable" id="tabs-139292">
						<ul class="nav nav-tabs">
							<li class="active"><a href="#panel-353452" data-toggle="tab">First
									Year</a></li>
							<li><a href="#panel-549459" data-toggle="tab">Second
									Year</a></li>
						</ul>
						<div class="tab-content">
							<div class="tab-pane active" id="panel-353452">
								<table class="table" border="1"
									style="width: 100%; text-align: center;">
									<thead>
										<tr style="background: #C3CCF1">
											<th>C_ID</th>
											<th>C_Name</th>
											<th>Start Date</th>
											<th>End Date</th>
											<th>Weeks</th>
											<th>Modules</th>
											<th>Result</th>
											<th>Status</th>
											<th></th>
											<th></th>
										</tr>
									</thead>
									<tbody>
										<tr style="background-color: lightbl">
											<td>1</td>
											<td><a href="course_content.jsp">Java</a></td>
											<td>01/04/2012</td>
											<td>01/04/2012</td>
											<td>4</td>
											<td>20</td>
											<td>95%</td>
											<td>open</td>
											<td><button id="button-td" data-toggle="modal" data-target="#myModal">Update</button></td>
											<td><button id="button-td">Update content</button></td>
										</tr>

										<tr>
											<td>2</td>
											<td>OOPS</td>
											<td>01/04/2012</td>
											<td>01/04/2012</td>
											<td>4</td>
											<td>20</td>
											<td>81%</td>
											<td>open</td>
											<td><button id="button-td" data-toggle="modal" data-target="#myModal">Update</button></td>
											<td><button id="button-td">Update content</button></td>
										</tr>
									</tbody>
								</table>
							</div>
							<div class="tab-pane" id="panel-549459">
								<table class="table" border="1"
									style="width: 100%; text-align: center;">
									<thead>
										<tr style="background: #C3CCF1">
											<th>C_ID</th>
											<th>C_Name</th>
											<th>Start Date</th>
											<th>End Date</th>
											<th>Weeks</th>
											<th>Modules</th>
											<th>Result</th>
											<th>Status</th>
											<th></th>
											<th></th>
										</tr>
									</thead>
									<tbody>
										<tr>
											<td>1</td>
											<td><a href="course_content.jsp">Java</a></td>
											<td>01/04/2012</td>
											<td>01/04/2012</td>
											<td>4</td>
											<td>20</td>
											<td>95%</td>
											<td>open</td>
											<td><button id="button-td" data-toggle="modal" data-target="#myModal">Update</button></td>
											<td><button id="button-td">Update content</button></td>
										</tr>
										<tr>
											<td>2</td>
											<td>OOPS</td>
											<td>01/04/2012</td>
											<td>01/04/2012</td>
											<td>4</td>
											<td>20</td>
											<td>81%</td>
											<td>closed</td>
											<td><button id="button-td" data-toggle="modal" data-target="#myModal">Update</button></td>
											<td><button id="button-td">Update content</button></td>
										</tr>
									</tbody>
								</table>
							</div>
						</div>
					</div>
				</div>
				<div style="text-align: center" class="form-buttons-wrapper">
					<button type="button" id="addcourse" class="btn btn-primary btn-lg"
						data-toggle="modal" data-target="#myModal">Add Course</button>
				</div>
			</div>
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

								<form role="form">
									<div class="form-group">
										<label id="label">Course Id* :</label> <input type="text"
											required="required" class="form-control" id="cid">
									</div>
									<div class="form-group">
										<label>Course Name* :</label> <input type="text"
											required="required" class="form-control" id="cname">
									</div>
									<div class="form-group">
										<div class="hero-unit">
											<label>Start Date:</label> <input type="date"
												class="form-control" id="date">
										</div>
									</div>
									<div class="form-group">
										<div class="hero-unit">
											<label>End Date:</label> <input type="date"
												class="form-control" id="date">
										</div>
									</div>
									<div class="form-group">
										<label>Number Of Weeks* :</label> <input type="number"
											required="required" class="form-control" id="nweeks">
									</div>
									<div class="form-group">
										<label>Number Of Modules* :</label> <input type="number"
											required="required" class="form-control" id="nmod">
									</div>
									<div class="form-group">
										<label>Status :</label>
									</div>
									<button type="submit" class="btn btn-default">Submit</button>
								</form>
							</div>

						</div>
						<script src="js/jquery.min.js"></script>
						<script src="js/bootstrap-datepicker.js"></script>
						<script type="text/javascript">
							// When the document is ready
							$(document).ready(function() {

								$('#example1').datepicker({
									format : "dd/mm/yyyy"
								});

							});
						</script>
					</div>
				</div>
			</div>
		</div>
		<!-- 	<div id="somedialog" class="dialog">
				<div class="dialog__overlay"></div>
				<div class="dialog__content">
					<div class="dialog-inner">
						
					</div>
				</div>
			</div>- -->
		<div class="row clearfix">
			<div class="col-md-12 column">
				<div id="scroll">
					<a title="Scroll to the top" class="top" href="#"><img
						src="img/top.png" alt="top" /></a>
				</div>
				<footer>
					<p>
						<img src="img/t.png" alt="twitter" width="40px" height="40px" />&nbsp;
						<a href="https://www.facebook.com/cihlmsit" target="_tab"><img
							src="img/f.png" alt="facebook" width="40px" height="40px" /></a>&nbsp;
						<a href="#" target="_tab"><img src="img/g.png"
							alt="google_plus" width="40px" height="40px" /></a>
					</p>
					<p>Copyright &copy; www.msitprogram.net</p>
				</footer>
				<script type="text/javascript" src="js/jquery.js"></script>
				<script type="text/javascript" src="js/jquery.easing-sooper.js"></script>
				<script type="text/javascript" src="js/jquery.sooperfish.js"></script>
				<script type="text/javascript">
					$(document).ready(function() {
						$('.top').click(function() {
							$('html, body').animate({
								scrollTop : 0
							}, 'fast');
							return false;
						});
					});
				</script>
			</div>
		</div>
	</div>
	</div>

	<script src="js/classie.js"></script>
	<script src="js/dialogFx.js"></script>
	<script>
		(function() {

			var dlgtrigger = document.querySelector('[data-dialog]'), somedialog = document
					.getElementById(dlgtrigger.getAttribute('data-dialog')), dlg = new DialogFx(
					somedialog);

			dlgtrigger.addEventListener('click', dlg.toggle.bind(dlg));

		})();
	</script>
</body>
</html>
