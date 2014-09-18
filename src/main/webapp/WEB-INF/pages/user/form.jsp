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
	<link href="${pageContext.request.contextPath}/resources/css/iconic.css" rel="stylesheet" type="text/css">
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

<title>Gerenciamento | Formulário de Registro</title>

</head>
<body>
	<jsp:include page = "../principal/initial.jsp"/>
	<c:url var="userRegistration" value="saveUser.html" />
	<form:form id="registerForm" class="register" modelAttribute="pessoa"
		method="post" action="register">
		
		
		<h1>Registro de Usuário</h1>
		<fieldset class="row1">
			<legend>Detalhes da Conta</legend>
			<p>
				<label>Email *</label>
				<form:input path="email" />
				<label>Repetir Email *</label>
				<form:input path="email" />
			</p>
			<p>
				<label>Password *</label>
				<form:input path="password" />
				<label>Repetir Senha *</label>
				<form:input path="password" />
			</p>
		</fieldset>

		<fieldset class="row2">
				<legend>Informações Pessoais</legend>
				<p>
				<label>Nome *</label>
				<form:input path="firstName" />
				</p>
				
				<p>
				<label>Sobre Nome *</label>
				<form:input path="lastName" />
				</p>
				
				<p>
				<label>Telefone *</label>
				<form:input path="phone" />
				</p>
				<p>
				<label>Cidade *</label>
				<form:input path="city" />
				</p>
				<p>
				<label>Estado *</label> <select>
					<option></option>
					<form:select path="country" items="${countryList}" />
				</select>
				</p>
		</fieldset>

		<fieldset class="row3">
			<legend>Outras Informações</legend>
			<p>
				<label>Data de Nascimento *</label>
				<form:input path="nascimento" id="datepicker" />
			</p>
		</fieldset>
		
	  	<fieldset class="row4">
        </fieldset>
		
		<div>
			<button class="button" type="submit">Registrar &raquo;</button>
		</div>
	</form:form>

	<a href="list">Click Here to see User List</a>
</body>
</html>
