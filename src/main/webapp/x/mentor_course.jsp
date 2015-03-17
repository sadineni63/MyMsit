<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html lang="en">
<head>
<meta charset="utf-8">
<title>Course Content</title>
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
		
	<div class="row clearfix" id="secondrow">
				<br></br>
				<h3><center>Course 1</center></h3><br>
				<table class="table" border="1" align="center"
					style="width: 80%; text-align: center; ">
					<thead>
						<tr style="background: lightsteelblue">
							<th>Week</th>
							<th>Monday</th>
							<th>Tuesday</th>
							<th>Wednesday</th>
							<th>Thursday</th>
							<th>Friday</th>
							<th>Saturday</th>
						</tr>
					</thead>
					<tbody>
						<tr>
							<td>Week 1</td>
							<td><a href = "post_module_content.jsp" id = "button-c">Add content</a></td>
							<td><a href = "post_module_content.jsp" id = "button-c">Add content</a></td>
							<td><a href = "post_module_content.jsp" id = "button-c">Add content</a></td>
							<td><a href = "post_module_content.jsp" id = "button-c">Add content</a></td>
							<td><a href = "post_module_content.jsp" id = "button-c">Add content</a></td>
							<td><a href = "post_module_content.jsp" id = "button-c">Add content</a></td>
						</tr>
						<tr>
							<td>Week 2</td>
							<td><a href = "post_module_content.jsp" id = "button-c">Add content</a></td>
							<td><a href = "post_module_content.jsp" id = "button-c">Add content</a></td>
							<td><a href = "post_module_content.jsp" id = "button-c">Add content</a></td>
							<td><a href = "post_module_content.jsp" id = "button-c">Add content</a></td>
							<td><a href = "post_module_content.jsp" id = "button-c">Add content</a></td>
							<td><a href = "post_module_content.jsp" id = "button-c">Add content</a></td>
						</tr>
						<tr>
							<td>Week 3</td>
							<td><a href = "post_module_content.jsp" id = "button-c">Add content</a></td>
							<td><a href = "post_module_content.jsp" id = "button-c">Add content</a></td>
							<td><a href = "post_module_content.jsp" id = "button-c">Add content</a></td>
							<td><a href = "post_module_content.jsp" id = "button-c">Add content</a></td>
							<td><a href = "post_module_content.jsp" id = "button-c">Add content</a></td>
							<td><a href = "post_module_content.jsp" id = "button-c">Add content</a></td>
						</tr>
						<tr>
							<td>Week 4</td>
							<td><a href = "post_module_content.jsp" id = "button-c">Add content</a></td>
							<td><a href = "post_module_content.jsp" id = "button-c">Add content</a></td>
							<td><a href = "post_module_content.jsp" id = "button-c">Add content</a></td>
							<td><a href = "post_module_content.jsp" id = "button-c">Add content</a></td>
							<td><a href = "post_module_content.jsp" id = "button-c">Add content</a></td>
							<td><a href = "post_module_content.jsp" id = "button-c">Add content</a></td>
						</tr>
					</tbody>
				</table>
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
