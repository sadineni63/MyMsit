<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<%@ page import="java.util.*"%>
<%@ page import="net.mymsit.user.Profile" %>
<!DOCTYPE html>
<html lang="en">

<head>

<meta charset="utf-8">
<meta http-equiv="X-UA-Compatible" content="IE=edge">
<meta name="viewport" content="width=device-width, initial-scale=1">
<meta name="description" content="">
<meta name="author" content="">

<title>Batch mates</title>

<!-- Bootstrap Core CSS -->
<link href="resources/css/bootstrap.min.css" rel="stylesheet">

<!-- Custom CSS -->
<link href="resources/css/sb-admin.css" rel="stylesheet">

<!-- Morris Charts CSS -->
<link href="resources/css/plugins/morris.css" rel="stylesheet">

<link href="resources/css/dashboard.css" rel="stylesheet">

<link href="resources/css/batchmates.css" rel="stylesheet">

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
</script>
<link href="resources/font-awesome/css/font-awesome.css"
	rel="stylesheet">
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
						<h1 class="page-header">Batch mates</h1>
					</div>
				</div>
	
	<div class="container">

					<%
					if(request.getAttribute("batchmates")!=null){
						List<Profile> prof=(ArrayList<Profile>)request.getAttribute("batchmates");
						for(int i=1;i<=prof.size();i++)
						{
							Profile pro=prof.get(i-1);
							if(i%3==1)
							{
					%>
		<div class="row">
		
			<div class="col-sm-3">
				<div class="card">
					<canvas class="header-bg" width="250" height="70" id="header-blur"></canvas>
					<div class="avatar">
						<img src="" alt="" />
					</div>
					<div class="content">
						<p><h2><%=pro.getName()%></h2></p>
						<p>DOB: <%=pro.getDob()%></p>
						<p><%=pro.getEmail()%></p>
						<p><%=pro.getPno()%></p>
						<p><%=pro.getbGroup()%></p>
					</div>
				</div>
			</div>
			
		</div>
		<%
							}
		else if(i%3==0)
						{
%>
<div class="col-sm-3">
				<div class="card">
					<canvas class="header-bg" width="250" height="70" id="header-blur"></canvas>
					<div class="avatar">
						<img src="" alt="" />
					</div>
					<div class="content">
						<p><h2><%=pro.getName()%></h2></p>
						<p>DOB:</p><span><p><%=pro.getDob()%></p></span>
						<p><%=pro.getEmail()%></p>
						<p><%=pro.getPno()%></p>
						<p><%=pro.getbGroup()%></p>
					</div>
				</div>
			</div>
			<%
			}
			else
			{
			%>
			<div class="col-sm-3">
				<div class="card">
					<canvas class="header-bg" width="250" height="70" id="header-blur"></canvas>
					<div class="avatar">
						<img src="" alt="" />
					</div>
					<div class="content">
						<p><h2><%=pro.getName()%></h2></p>
						<p>DOB:</p><span><p><%=pro.getDob()%></p></span>
						<p><%=pro.getEmail()%></p>
						<p><%=pro.getPno()%></p>
						<p><%=pro.getbGroup()%></p>
					</div>
				</div>
			</div>
			<%}}} %>				
		
	</div>
</div>
</div>
</div>
	<!-- jQuery -->
	<script src="resources/js/jquery.js"></script>
	<script src="resources/js/jquery.js"></script>
	<script src="resources/js/batchmates.js"></script>
	
	<!-- Bootstrap Core JavaScript -->
	<script src="resources/js/bootstrap.min.js"></script>

	<!-- Morris Charts JavaScript -->
	<script src="resources/js/plugins/morris/raphael.min.js"></script>
	
	<script src="resources/js/plugins/morris/morris-data.js"></script>
<img class="src-image"  src="data:image/jpeg;base64,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"/>

<img class="src-image"  src="data:image/jpg;base64,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"/>

<img class="src-image"  src="data:image/jpeg;base64,/9j/4AAQSkZJRgABAQAAAQABAAD//gA7Q1JFQVRPUjogZ2QtanBlZyB2MS4wICh1c2luZyBJSkcgSlBFRyB2NjIpLCBxdWFsaXR5ID0gNzAK/9sAQwAKBwcIBwYKCAgICwoKCw4YEA4NDQ4dFRYRGCMfJSQiHyIhJis3LyYpNCkhIjBBMTQ5Oz4+PiUuRElDPEg3PT47/9sAQwEKCwsODQ4cEBAcOygiKDs7Ozs7Ozs7Ozs7Ozs7Ozs7Ozs7Ozs7Ozs7Ozs7Ozs7Ozs7Ozs7Ozs7Ozs7Ozs7Ozs7/8AAEQgAZABkAwEiAAIRAQMRAf/EAB8AAAEFAQEBAQEBAAAAAAAAAAABAgMEBQYHCAkKC//EALUQAAIBAwMCBAMFBQQEAAABfQECAwAEEQUSITFBBhNRYQcicRQygZGhCCNCscEVUtHwJDNicoIJChYXGBkaJSYnKCkqNDU2Nzg5OkNERUZHSElKU1RVVldYWVpjZGVmZ2hpanN0dXZ3eHl6g4SFhoeIiYqSk5SVlpeYmZqio6Slpqeoqaqys7S1tre4ubrCw8TFxsfIycrS09TV1tfY2drh4uPk5ebn6Onq8fLz9PX29/j5+v/EAB8BAAMBAQEBAQEBAQEAAAAAAAABAgMEBQYHCAkKC//EALURAAIBAgQEAwQHBQQEAAECdwABAgMRBAUhMQYSQVEHYXETIjKBCBRCkaGxwQkjM1LwFWJy0QoWJDThJfEXGBkaJicoKSo1Njc4OTpDREVGR0hJSlNUVVZXWFlaY2RlZmdoaWpzdHV2d3h5eoKDhIWGh4iJipKTlJWWl5iZmqKjpKWmp6ipqrKztLW2t7i5usLDxMXGx8jJytLT1NXW19jZ2uLj5OXm5+jp6vLz9PX29/j5+v/aAAwDAQACEQMRAD8A5iX7Is3kpLKM/cZ+efwp8M8sUiQuPkjLEg/xmq1vaNKkc8TA7nOSex7da3PB/h681fxCn2jctuilpGI7V5K10Z9DKMY3nGWxN4c8Lav4g8y7WNYImlyjuMBQPT1rudJ+Hen6bmSaV55mOWJ4GfpXVQrDaQLFEoSOMAADsKpz6hu3bDhV4LH1ro5YxPMniak9LmZe+HtNdcPHuA6DriuT1Xw/FC+bS7lhU8ENET+RxXZzSkr8ys+fwrE1AKQcWyuT1GaiSQoVai0ucTNYvHOkNzdHa2SuGOSAffpWpCmmLHIyFbiSMZ+dyT/+qm32irfzxobZoFU8urcDg9B/nrWFqNpNo1+qyxs25PkC/wAfpip1SN6cYTepKDfRXMlzNsa3PzOMDCgZ/IVz9/qtxd3EtxbymJQcKB0AFXor66uxPZxQhRLw5Y8KPrU8nh3EK2tuqjzuSxJPAprzNatou9jAUtcuso3E4Cg56/55q3/a0kUnlxgFgDjHer66W9tdIyXMKqi/6soCGb3X2qF9EjsZGbz9zbsZyACcc8UPle5vTnypKKs2UopNZuoxJ5fTjlDzRU8+pR27iNrmRiB1Q8UUWb2RPJJaOobmjR/adNe2+0ENA/3cDpXpXhmJdP0hXZAkk3zsPboP8fxrynRruSyk23EfyS8FnYc4616bqV4LO0c9BEgXA9hScuXU4qifwp6F+71Jp5VtoGPzH5mHYd6R7iK3Cgje4+4g7e9ZMU6WVqjzczSjJQck8dPpVJfEdpHdeXLBOHY/eZaINvVmfIuhvmaSUktwD1qCSZBwoLsewpJZfOtvMX7n5CsK88QWmkpvurnBJ4CDJ/Aenufyq2m9EGiNd1KjzZjgDoKoeI7AXmkpOIg89sSV7cd6dY3kWqRxXCzLJCcMgVsge/ua0DOskvlj7oHNTtoNNxkpI8un1lYbia3S0GwLtMg65puleIYbTd5gmkyAsYUcgfjUfimz+w648UCHYxOOc8+n+fWs12NvGrSbMjt3FHKj04wjVinJ2HXKsl1Fc2bSD5iwLjJZupJ7e1M8+RomWZgWd8+uKU6pLNZ+VHJsWPBRcDI55/nVZWJlYBgSfWrs+o1GF9HuEM0cSFGZMgnnbnNFWYVheME/TtRQ2croK+/9fedJqQtLrUbfy2cqMYG3AFd/dwC6lKOMoTkj1B4/xrgY9OMkkRjKojtt3dzivSokJt2nIwzYIH0Wsmr6InET0iuxjapb6hewTNpo/eMuEOcfrXOL4MvJrSJZftK6huy8xf5R9MHn8ea7zSbqOOOWMYPlzPGfwYitJrqFEL4Ga6KeiOWWrM210ySPQTazvvkVMFsYzWM/ho3NrLbCT9zMcyDAJP41d1DxW9s0lvFaO527vMK/L9PrUOjardXEBmnt2gLH7pPSi6voXyStqJY6BaaFaiG3JHJY5OcmktzunOOVz19amvLwMrsSOBwKi08f6OGPUnH61jLe42rI5jxfbxW9688i5EoDA4+6wGD+g/QVwl05O51kMkZO0YTnj+lem+KxEtq00gBAhYgn1GCP/QjXnkG6+h2RRsJWYAgDimtHc7aX7yCiVorUWloL10MoxnHTFMeCa2C3UkC+XKCQoP6Gr9zF9kskaKTMiy87uRkH0qN9WbyhHKTcQv8AK7YAB75Hv71abeoVLQly7JEVpod7qMP2iOJirHAx0orudCuLWLSoljfC9R2zRS9ozhcncbptlMbySGaUtHGQ0ZHY+lejLGBZKPXNeY2k1zZzpdF8x5w4LdM16dbyifToJB0dc0l3Jq9DkodQitvFV7px3K07GVc9C2Mn9P5VrmTP3idorlfF9u8OspfQkrIuxlI+grSsNZjv4AMhJh99D/Me1Spa2NrXSaJL3xLby3P2Kzs/tLIPncghQfTj6VXXUNbkmVDp0UcDf8tN+3b+B5NakgvZoh5F2IV/3QarG0S3DTT3bTyY6nt+FaXErWsVbmQswBP1rRsnzaJ2JGfzrnL66MrtHB371vWjbIwOSI1Bz+H/ANY1i2Oa0MHxu+NFhBIBeV+c9h/+oVwtm90YJhbMwQ8sV/Hv+ddb40mWe4tNOOHEMZMmP7zViaQi2WolHB8mRCvPTNUmrWOqMZQpKaWhRtbSa6j2SzDy413Ek8c1VvYIYvKijk37vmwp4rsrrQrCawE8M3lMANyKeWx7VzFsLPT7sz3YZo8HywBnn3qot3F7RSjy/izotA0qI6TGX1JYySTsK/d9qKxTekkmJXVDyARRUc0i/qMXqpFr+0ZGtXglX96zAgjtj2r1PwvO9x4Z09pBhjGc/mRXlv2a3t1FxLcpJMc42NxxXpHg2YTaNBGGBaMvkA5xznH5GnE5cTFKKsUvEsPnKhx8xBH6/wD165qaycI8sORLC29Me3b8q7LVY97qp9c/yrJEG3c2O9YSeoU37pWt764mtFeJ9ysKryPeTfJ90fnUlgjW9/Pb4HlP+8i9s9R/n1rWhtt7dBWiuxt2M22sMbVwSSeTW9FCUg3Fclj0/wA+/wDOprSw3/MBwflH9TV+5WGxs5724IWG2jaRj7KM1UYuTsjnnUPLNYjsoNcnh1C9+yXjYfMgJQg9MkZx+VUNRiunjiWPYVLZWaOUPGx9mFc9f3d/4h1uS5kRpru7kyEQZJJ4AA9hgD6V2Gn/AAv1sWZeacW0ki/NEJMfgcAg11OjFa3Lp42rbleqJNNuZ4Z1tp2juYwBh1GW571j69b2/wBo2RMNsbZdB6nJp50q/wDD+pCG9EivKpVZFbKnt9P8KqXenvFJvjdjFJkuTyevrWVrSuUrNpFczSk/I7hRwOccUUwByMo2F7Zop6HXaZryW9hp6sDM7TAfKP4a6X4f6xJ/b8dmI2WGUMR6Z2n/AOtXIqsMkm6djsBAyR2rp/DTRf8ACWaVFaybv3jM+0fKF2GsofFcutrSa6He3kO+X6DH61RktsA8dTW7LFliaq3EQBU46ms3HU8yM9DmoLN3uAwU8Pjp6Ej+VbsFlh9oHJqe1twqAY5xWjawAOX9K1jDQc5jkiS2iBx90YHua5D4waidM8IRWCNtlv5grAd0X5j+u3866yItfazDCn+pt/3jn1PYfnXjnxf1s6p4xa1jfMFgvlKB03dWP58fhXXRirNnJM0fg1oyXOo3erSoD9mURREjozckj3A4/wCBV7BIibeRXn3whKReEZCoAL3TlvyUf0ruXnBHWlJ6mkdjA8TaVbalYPDKgz1Vu6n1rzaaG5tQbeZSIX3KT344zXqt+26M1514oZrO8jmCbiVIUZxz9a5pHZS1sYDaVvOUzt7ZOKKmiubu6jEsUSAHggnPNFRr3PTcqV9yGe2j+yPOQS6jINbHgL/ka7L3gZz9dpooql0Mq2z9GetOPmNQXSgw59Goooe548RYVGcVakJjtSV4ODRRWnQJElmq2el3NxEo3rEWye5wTXzFqEj3EpupXLSzOxcnueDn8yaKK7Kf8NHPP4mer/CVifCs4z0u3x/3ytdtkk0UVyz+Jm8Nitc/dNcX4otorj7MJASBL0z14NFFYyOmGxyuo77a7MMEzxxoAFUYwKKKKqKVjRNn/9k="/>
</body>

</html>
