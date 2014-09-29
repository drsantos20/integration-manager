<%@ taglib uri="http://tiles.apache.org/tags-tiles" prefix="tiles" %>
<%@ taglib uri="http://www.springframework.org/tags/form" prefix="form"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>

<script type="text/javascript" src="${pageContext.request.contextPath}/resources/js/jquery-core.js"></script>
<script type="text/javascript" src="${pageContext.request.contextPath}/resources/js/js-core.js"></script>
<link rel="stylesheet" type="text/css" href="${pageContext.request.contextPath}/resources/css/all-demo.css"> 


<tiles:insertDefinition name="defaultTemplate">
	<tiles:putAttribute name="body">

		<div class="body">
			<div class="example-box-wrapper">
				<div id="page-content">
					<div class="container">
						<div class="page-box">
							<h3 class="page-title">
								Listagem de Benefici�rio <small> Edi��o/Exclus�o de
									clientes/benefici�rios </small>
							</h3>
							
							<table cellpadding="0" cellspacing="0" border="0" class="table table-striped table-bordered" id="dynamic-table-example-1">
								<thead>
									<tr width="100%">
										<th>Nome</th>
										<th>Email</th>
										<th>Editar</th>
										<th>Excluir</th>
									</tr>
								</thead>
								<tbody>
									<c:forEach items="${pessoaList}" var="user">
										<tr class="odd gradeX">
											<td><c:out value="${user.nome}" /></td>
											<td><c:out value="${user.email}" /></td>
											<td align="right"><a href="edit?id=${user.id}"
												class="glyph-icon demo-icon tooltip-button icon-edit" title="Editar"/></td>
											<td align="right"><a href="delete?id=${user.id}"
												class="glyph-icon demo-icon tooltip-button icon-remove" title="Deletar" /></td>
										</tr>
									</c:forEach>
								</tbody>
							</table>
							
							
							<script type="text/javascript" src="${pageContext.request.contextPath}/resources/js/datatable.js"></script>
							<script type="text/javascript" src="${pageContext.request.contextPath}/resources/js/datatable-bootstrap.js"></script>
							<script type="text/javascript">
						      $(document).ready(function() {
						          $('#dynamic-table-example-1').dataTable();
						
						          /* Add sorting icons */
						
						          $("table.dataTable .sorting").append('<i class="glyph-icon"></i>');
						          $("table.dataTable .sorting_asc").append('<i class="glyph-icon"></i>');
						          $("table.dataTable .sorting_desc").append('<i class="glyph-icon"></i>');
						
						      });
						  </script>
						</div>
					</div>
				</div>
			</div>
		</div>

	</tiles:putAttribute>
</tiles:insertDefinition>