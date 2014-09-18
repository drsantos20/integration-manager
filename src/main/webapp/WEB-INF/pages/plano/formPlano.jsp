<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://www.springframework.org/tags/form" prefix="form"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<link href="${pageContext.request.contextPath}/resources/css/default.css" rel="stylesheet" >
<script src="<c:url value="/resources/js/jquery.1.10.2.min.js" />"></script>
<script src="<c:url value="/resources/js/main.js" />"></script>

<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Management | Registration Form</title>
</head>
<body>

		<c:url var="planoRegistration" value="savePlano.html" />
		<form:form id="registerForm" class="register" modelAttribute="plano" method="post"
			action="registerPlano">
			<h1>Registration</h1>
			<fieldset class="row1">
			<legend>Account Details</legend>
			<p>
				<label>Nome *</label>
				<form:input path="Nome" value="${planoObject.nome}" />
				<label>Ativo *</label>
				<form:input path="ativo" value="${planoObject.ativo}" /><tr>
				<div><button class="button" type="submit">Register &raquo;</button></div>
			</fieldset>
		</form:form>
		<a href="list">Click Here to see Plano List</a>
</body>
</html>
