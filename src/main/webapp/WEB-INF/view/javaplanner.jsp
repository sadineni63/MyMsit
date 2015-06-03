<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<html>
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
			src="resources/js/show_ads.js">
			
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
						<h1 class="page-header">Calendar</h1>
					</div>
				</div>
				<!-- /.row -->
				<div class="row">
					<div class="col-lg-8" id="planner"><%=getPlanner(request)%></div>
				</div>
				<%@ page import="com.dhtmlx.planner.*"%>
				<%@ page
					import="com.dhtmlx.planner.data.*,javax.servlet.http.HttpServletRequest"%>
				<%@ page import="java.util.Date"%>
				<%!String getPlanner(HttpServletRequest request) throws Exception {
		DHXPlanner s = new DHXPlanner("./resources/codebase/", DHXSkin.TERRACE);
		Date date = new Date();
		s.setWidth(1000);
		s.setInitialDate(date);
		s.load("events.jsp", DHXDataFormat.JSON);
		s.data.dataprocessor.setURL("events.jsp");
		return s.render();
	}%>
			</div>
		</div>
	</div>

</body>
</html>