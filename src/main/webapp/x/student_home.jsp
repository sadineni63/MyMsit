<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html lang="en">
<head>
<meta charset="utf-8">
<title>Student Home</title>
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
					<div class = "header">
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
			<div class="col-md-2 column">
				<ul class="links">
					<li><a>Calendar</a></li>
					<li><a href="http://msitvoiceiiit.wordpress.com"
						target="_blank">MSIT Voice</a></li>
					<li><a>Faculty</a></li>
					<li><a>Resources</a></li>
				</ul>
			</div>
			<div class="col-md-8 column">
				<div class="row clearfix">
					<div class="col-md-12 column">
						<div class="row clearfix" id="modules">
							<div class="col-md-3 column">
								<a href="student_wiki.jsp"><img alt="140x140"
									src="img/wiki.png" class="img-circle" width="140px"
									height="140px"></a>
								<p class="mdescription1">Wiki Content</p>
							</div>
							<div class="col-md-3 column">
								<a href="#"><img alt="140x140" src="img/submissions.jpg"
									class="img-circle" width="140px" height="140px"></a>
								<p class="mdescription2">Submissions</p>
							</div>
							<div class="col-md-3 column">
								<img src="img/softskills.png" class="img-circle" width="140px"
									height="140px">
								<p class="mdescription3">Soft Skills</p>
							</div>
							<div class="col-md-3 column">
								<a href="#"><img src="img/discussions.jpg"
									class="img-circle" width="140px" height="140px"></a>
								<p class="mdescription4">Discussions</p>
							</div>
						</div>
					</div>
				</div>
			</div>
			<div class="col-md-2 column" id="notifications">
				<p style="color:#3b5998;font-size: 20px">Notifications</p>
				<marquee direction="up" scrollamount="3" onmouseover="this.stop();"
					onmouseout="this.start();">
					<ul class="notifications">
						<li><a class="tip"
							href="http://msitvoiceiiit.wordpress.com/2013/02/28/interview-with-mr-yashwanth/">Success
								dont come over night <span>Mr.Narvaneni was a graduate
									from IIIT Hyderabad who started FortuityInfotech along with his
									fellow graduates and friends, And established himself as one of
									the best online game platform developer.....to read more click
									link</span>
						</a></li>


						<li><a class="tip" href="#">uday<span>Hi this is
									Uday Kiran</span></a></li>

						<li><a class="tip" href="#"> <span>This is some
									text I want to display</span>This link has mouseover text.
						</a></li>

					</ul>
				</marquee>
			</div>
		</div>
		<div class="row clearfix" id="thirdrow">
			<div class="col-md-2 column">
				<ul>
					<li>Lorem ipsum dolor sit amet</li>
					<li>Consectetur adipiscing elit</li>
					<li>Integer molestie lorem at massa</li>
					<li>Facilisis in pretium nisl aliquet</li>
					<li>Nulla volutpat aliquam velit</li>
					<li>Faucibus porta lacus fringilla vel</li>
					<li>Aenean sit amet erat nunc</li>
					<li>Eget porttitor lorem</li>
				</ul>
			</div>
			<div class="col-md-8 column">

				<h2>Heading</h2>
				<p>Donec id elit non mi porta gravida at eget metus. Fusce
					dapibus, tellus ac cursus commodo, tortor mauris condimentum nibh,
					ut fermentum massa justo sit amet risus. Etiam porta sem malesuada
					magna mollis euismod. Donec sed odio dui.</p>
				<p>
					<a class="btn" href="#">View details »</a>
				</p>
				<h2>Heading</h2>
				<p>Donec id elit non mi porta gravida at eget metus. Fusce
					dapibus, tellus ac cursus commodo, tortor mauris condimentum nibh,
					ut fermentum massa justo sit amet risus. Etiam porta sem malesuada
					magna mollis euismod. Donec sed odio dui.</p>
				<p>
					<a class="btn" href="#">View details »</a>
				</p>
				<ul class="pagination">
					<li><a href="#">Prev</a></li>
					<li><a href="#">1</a></li>
					<li><a href="#">2</a></li>
					<li><a href="#">3</a></li>
					<li><a href="#">4</a></li>
					<li><a href="#">5</a></li>
					<li><a href="#">Next</a></li>
				</ul>
			</div>
			<div class="col-md-2 column">
				<div class="tabbable" id="tabs-818512">
					<ul class="nav nav-tabs">
						<li class="active"><a href="#panel-765775" data-toggle="tab">Students</a></li>
						<li><a href="#panel-919973" data-toggle="tab">Mentors</a></li>
					</ul>
					<div class="tab-content">
						<div class="tab-pane active" id="panel-765775">
							<p>I'm in Section 1.</p>
						</div>
						<div class="tab-pane" id="panel-919973">
							<p>Howdy, I'm in Section 2.</p>
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
