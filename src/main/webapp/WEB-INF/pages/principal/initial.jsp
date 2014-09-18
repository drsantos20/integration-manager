<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://www.springframework.org/tags/form" prefix="form"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<link
	href="${pageContext.request.contextPath}/resources/css/menu.css"
	rel="stylesheet">
<script src="<c:url value="/resources/js/jquery.1.10.2.min.js" />"></script>

<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<link rel="stylesheet"
	href="//code.jquery.com/ui/1.11.1/themes/smoothness/jquery-ui.css">
<script src="//code.jquery.com/jquery-1.10.2.js"></script>
<script src="//code.jquery.com/ui/1.11.1/jquery-ui.js"></script>
<link rel="stylesheet" href="/resources/demos/style.css">
<script>
	$(document).ready(function() {
		// Call horizontalNav on the navigations wrapping element
		$('.full-width').horizontalNav({});
	});
</script>

<title>Management | Registration Form</title>
</head>

<body>
	<div class="wrap">
	
	<nav>
		<ul class="menu">
			<li><a href="#"><span class="iconic home"></span> Home</a></li>
			<li><a href="#"><span class="iconic plus-alt"></span> About</a>
				<ul>
					<li><a href="#">Company History</a></li>
					<li><a href="#">Meet the team</a></li>
				</ul>
			</li>
			<li><a href="#"><span class="iconic magnifying-glass"></span> Management</a>
				<ul>
					<li><a href="form">Management User</a></li>
					<li><a href="#">Management Plan</a></li>
				</ul>
			</li>
			<li><a href="#"><span class="iconic map-pin"></span> Products</a>
				<ul>
					<li><a href="#">Widget One</a></li>
					<li><a href="#">Widget Two</a></li>
					<li><a href="#">Web App Three</a></li>
					<li><a href="#">Web App Four</a></li>
					<li><a href="#">Crazy Products</a></li>
					<li><a href="#">iPhone Apps</a></li>
				</ul>
			</li>
			<li><a href="#"><span class="iconic mail"></span> Contact</a>
				<ul>
					<li><a href="#">Contact Us</a></li>
					<li><a href="#">Directions</a></li>
				</ul>
			</li>
		</ul>
		<div class="clearfix"></div>
	</nav>
	</div>
</body>
</html>