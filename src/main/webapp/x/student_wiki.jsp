<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html lang="en">
<head>
<meta charset="utf-8">
<title>Student Wiki</title>
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


<!--link rel="stylesheet/less" href="less/bootstrap.less" type="text/css" /-->
<!--link rel="stylesheet/less" href="less/responsive.less" type="text/css" /-->
<!--script src="js/less-1.3.3.min.js"></script-->
<!--append ‘#!watch’ to the browser URL, then refresh the page. -->

<link href="css/bootstrap.min.css" rel="stylesheet">
<link href="css/style.css" rel="stylesheet">
<link href="css/ddmenu.css" rel="stylesheet">

<!-- HTML5 shim, for IE6-8 support of HTML5 elements -->
<!--[if lt IE 9]>
    <script src="js/html5shiv.js"></script>
  <![endif]-->

<!-- Fav and touch icons -->
<link rel="apple-touch-icon-precomposed" sizes="144x144"
	href="img/apple-touch-icon-144-precomposed.png">
<link rel="apple-touch-icon-precomposed" sizes="114x114"
	href="img/apple-touch-icon-114-precomposed.png">
<link rel="apple-touch-icon-precomposed" sizes="72x72"
	href="img/apple-touch-icon-72-precomposed.png">
<link rel="apple-touch-icon-precomposed"
	href="img/apple-touch-icon-57-precomposed.png">
<link rel="shortcut icon" href="img/title_icon.png">

<script type="text/javascript" src="js/jquery.min.js"></script>
<script type="text/javascript" src="js/bootstrap.min.js"></script>
<script type="text/javascript" src="js/scripts.js"></script>


</head>

<body>
	<div class="container">
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
						<li><a href="#panel-549459" data-toggle="tab">Second Year</a>
						</li>
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
									</tr>
								</thead>
								<tbody>
									<tr>
										<td>1</td>
										<td>Java</td>
										<td>01/04/2012</td>
										<td>01/04/2012</td>
										<td>4</td>
										<td>20</td>
										<td>85%</td>
										<td>open</td>
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
									</tr>
								</tbody>
							</table>
						</div>
					</div>
				</div>
			</div>

		</div>


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
</body>
</html>
