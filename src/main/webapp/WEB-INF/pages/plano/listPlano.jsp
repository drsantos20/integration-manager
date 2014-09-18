<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Management | Plano Details</title>
</head>
<body>
	<center>

		<div style="color: teal; font-size: 30px">Management | Plano Details</div>

		<c:if test="${!empty planoList}">
			<table border="1" bgcolor="black" width="600px">
				<tr
					style="background-color: teal; color: white; text-align: center;"
					height="40px">
					
					<td>Nome</td>
					<td>Ativo</td>
					<td>Edit</td>
					<td>Delete</td>
				</tr>
				<c:forEach items="${planoList}" var="plano">
					<tr
						style="background-color: white; color: black; text-align: center;"
						height="30px">
						
						<td><c:out value="${plano.nome}" />
						</td>
						<td><c:out value="${plano.ativo}" />
						</td>
						<td><a href="editPlano?id=${plano.id}">Edit</a></td>
						<td><a href="deletePlano?id=${plano.id}">Delete</a></td>
					</tr>
				</c:forEach>
			</table>
		</c:if>


		<a href="formPlano">Click Here to add new Plano</a>
	</center>
</body>
</html>
