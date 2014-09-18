<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Management | User Details</title>

<link 	href="${pageContext.request.contextPath}/resources/css/datatable.css" rel="stylesheet">

</head>
<body>
<jsp:include page = "../principal/initial.jsp"/>
	<center>

		<div class="CSSTableGenerator">

		<c:if test="${!empty pessoaList}">
			<table>
				<tr>
					<td>First Name</td>
					<td>Last Name</td>
					<td>Email</td>
					<td>Phone</td>
					<td>Edit</td>
					<td>Delete</td>
				</tr>
				<c:forEach items="${pessoaList}" var="user">
					<tr>
						
						<td><c:out value="${user.firstName}" />
						</td>
						<td><c:out value="${user.lastName}" />
						</td>
						<td><c:out value="${user.email}" />
						</td>
						<td><c:out value="${user.phone}" />
						</td>
						<td><a href="edit?id=${user.id}">Edit</a></td>
						<td><a href="delete?id=${user.id}">Delete</a></td>
					</tr>
				</c:forEach>
			</table>
		</c:if>


		<a href="form">Click Here to add new User</a>
	</center>
</body>
</html>
