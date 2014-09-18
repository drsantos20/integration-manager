<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://www.springframework.org/tags/form" prefix="form"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Management | Edit Plano Details</title>
</head>
<body>
	<center>

		<div style="color: teal; font-size: 30px">Management | Edit Plano Details</div>

		<c:url var="planoRegistration" value="savePlano.html" />
		<form:form id="registerForm" modelAttribute="plano" method="post"
			action="updatePlano">
			<table width="400px" height="150px">
				<tr>
					<td><form:input type="hidden" path="id" value="${planoObject.id}" /></td>
				</tr>
				<tr>
					<td><form:label path="Nome">Nome</form:label></td>
					<td><form:input path="Nome" value="${planoObject.nome}" /></td>
				</tr>
				<tr>
					<td><form:label path="ativo">Ativo</form:label></td>
					<td><form:input path="ativo" value="${planoObject.ativo}"/></td>
				</tr>
				<tr>
					<td></td>
					<td><input type="submit" value="Update" />
					</td>
				</tr>
			</table>
		</form:form>
	</center>
</body>
</html>
