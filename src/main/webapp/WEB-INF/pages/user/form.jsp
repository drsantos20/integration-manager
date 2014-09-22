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
    <!-- JS Core -->

    <script type="text/javascript" src="${pageContext.request.contextPath}/resources/js/js-core.js"></script>
    <link rel="stylesheet" type="text/css" href="${pageContext.request.contextPath}/resources/css/all-demo.css"> 

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
<%-- 	<jsp:include page = "../principal/initial.jsp"/> --%>
	<c:url var="userRegistration" value="saveUser.html" />
	<form:form id="demo-form" class="form-horizontal" modelAttribute="pessoa" method="post" action="register" >
		<div class="form-group">
			<label for="" class="col-sm-2 control-label">Email: <span
				class="required">*</span>
			</label>
			<div class="col-sm-8">
				<input class="form-control" type="text" id="email" name="email" 
					required="">
			</div>
		</div>
		<div class="form-group">
			<label for="" class="col-sm-2 control-label">Senha: <span
				class="required">*</span>
			</label>
			<div class="col-sm-8">
				<input class="form-control" type="text" id="senha" name="senha"
					data-parsley-trigger="change" required="">
			</div>
		</div>
		<div class="form-group">
			<label for="" class="col-sm-2 control-label">Repetir Senha: <span
				class="required">*</span>
			</label>
			<div class="col-sm-8">
				<input class="form-control" type="text" id="senha" name="senha"
					data-parsley-trigger="change" required="">
			</div>
		</div>
		
		<div class="form-group">
			<label for="" class="col-sm-2 control-label">Nome: </label>
			<div class="col-sm-8">
				<input class="form-control" type="text" id="firstName" name="firstName">
			</div>
		</div>
		
		<div class="form-group">
			<label for="" class="col-sm-2 control-label">Sobre Nome: </label>
			<div class="col-sm-8">
				<input class="form-control" type="text" id="lastName" name="lastName">
			</div>
		</div>
		
		<div class="form-group">
			<label for="" class="col-sm-2 control-label">Telefone: </label>
			<div class="col-sm-8">
				<input class="form-control" type="text" id="phone" name="phone">
			</div>
		</div>
		
		<div class="form-group">
			<label for="" class="col-sm-2 control-label">Cidade: </label>
			<div class="col-sm-8">
				<input class="form-control" type="text" id="city" name="city">
			</div>
		</div>
		
		<div class="form-group">
			<label for="" class="col-sm-2 control-label">Estado: </label>
			<div class="col-sm-8">
				<input class="form-control" type="text" id="country" name="country">
			</div>
		</div>
		
		<div class="divider"></div>
		<div class="form-group">
			<input type="hidden" name="superhidden" id="superhidden">
			<div class="col-sm-offset-2 col-sm-8">
				<button class="btn btn-md btn-primary">Validate</button>
			</div>
		</div>
		<div>
			<button class="button" type="submit">Registrar &raquo;</button>
		</div>
		
	</form:form>

	<a href="list">Click Here to see User List</a>
</body>
</html>
