<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://www.springframework.org/tags/form" prefix="form"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<link
	href="${pageContext.request.contextPath}/resources/css/default.css"
	rel="stylesheet">
<script src="<c:url value="/resources/js/jquery.1.10.2.min.js" />"></script>
<script src="<c:url value="/resources/js/main.js" />"></script>


<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<link rel="stylesheet"
	href="//code.jquery.com/ui/1.11.1/themes/smoothness/jquery-ui.css">
<script src="//code.jquery.com/jquery-1.10.2.js"></script>
<script src="//code.jquery.com/ui/1.11.1/jquery-ui.js"></script>
<link rel="stylesheet" href="/resources/demos/style.css">
<script>
	$(function() {
		$("#datepicker").datepicker({
			dateFormat : 'dd/mm/yy',
			changeMonth : true,
			changeYear : true,
			yearRange : "-100:+0"
		});
	});
</script>

<title>Management | Registration Form</title>

</head>
<body>
	<jsp:include page = "../principal/initial.jsp"/>
	<c:url var="userRegistration" value="saveUser.html" />
	<form:form id="registerForm" class="register" modelAttribute="pessoa"
		method="post" action="register">
		
		
		<h1>User Registration</h1>
		<fieldset class="row1">
			<legend>Account Details</legend>
			<p>
				<label>Email *</label>
				<form:input path="email" />
				<label>Repeat Email *</label>
				<form:input path="email" />
			</p>
			<p>
				<label>Password *</label>
				<form:input path="password" />
				<label>Repeat Password *</label>
				<form:input path="password" />
			</p>
		</fieldset>

		<fieldset class="row2">
				<legend>Personal Details</legend>
				<p>
				<label>Name *</label>
				<form:input path="firstName" />
				</p>
				
				<p>
				<label>Last Name *</label>
				<form:input path="lastName" />
				</p>
				
				<p>
				<label>Phone *</label>
				<form:input path="phone" />
				</p>
				<p>
				<label>City *</label>
				<form:input path="city" />
				</p>
				<p>
				<label>Country *</label> <select>
					<option></option>
					<form:select path="country" items="${countryList}" />
				</select>
				</p>
		</fieldset>

		<fieldset class="row3">
			<legend>Further Information</legend>
			<p>
				<label>Birthdate *</label>
				<form:input path="nascimento" id="datepicker" />
			</p>
		</fieldset>
		
	  	<fieldset class="row4">
        </fieldset>
		
		<div>
			<button class="button" type="submit">Register &raquo;</button>
		</div>
	</form:form>

	<a href="list">Click Here to see User List</a>
</body>
</html>
