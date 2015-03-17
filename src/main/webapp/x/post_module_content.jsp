<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html lang="en">
<head>
<meta charset="utf-8">
<title>Post Module Content</title>
<meta name="viewport" content="width=device-width, initial-scale=1.0">
<meta name="description" content="">
<meta name="author" content="">
<link href="css/bootstrap.min.css" rel="stylesheet">
<link href="css/style.css" rel="stylesheet">
<link href="css/ddmenu.css" rel="stylesheet">
<script type="text/javascript" src="js/jquery.min.js"></script>
<script type="text/javascript" src="js/bootstrap.min.js"></script>
<script type="text/javascript" src="js/scripts.js"></script>
<script type="text/javascript" src="tinymce/tinymce.min.js"></script>
<script type="text/javascript" src="tinymce/plugins/media/embed.js"></script>
<script type="text/javascript">
	tinymce
			.init({
				selector : "textarea",
				theme : "modern",
				mode : "textareas",
				width : 1010,
		        theme_advanced_buttons1_add : "media",
		        cleanup : true,
				plugins : [
						"advlist autolink lists link image charmap print preview hr anchor pagebreak",
						"searchreplace wordcount visualblocks visualchars code fullscreen",
						"insertdatetime media nonbreaking save table contextmenu directionality",
						"emoticons template paste textcolor colorpicker textpattern " ],
				toolbar1 : "insertfile undo redo | styleselect | bold italic | alignleft aligncenter alignright alignjustify | bullist numlist outdent indent | link image",
				toolbar2 : "print preview media | forecolor backcolor emoticons",
				image_advtab : true,
				templates : [ {
					title : 'Test template 1',
					content : 'Test 1'
				}, {
					title : 'Test template 2',
					content : 'Test 2'
				} ],

				resize : "both"
			});
</script>

</head>

<body>
	<div class="container" id="editor">
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
		

			<div class="row clearfix" id="pmcrow">
			<div class="module_form">
			<form method="post" action="somepage" style="padding:30px">
				
					<h3 class="pmcname">Couse Name: <span>Java</span></h3>
					<h4 class="pmcname"> Week: <span>1</span></h4>
					<h4 class="pmcname"> Day: <span>Monday</span></h4>
					 
						<textarea name="content" cols="100" rows="15"></textarea>
						<input type="submit" value="Submit" class="msubmit">
					</form>
					
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
