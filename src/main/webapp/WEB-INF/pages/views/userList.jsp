<%@ taglib uri="http://tiles.apache.org/tags-tiles" prefix="tiles" %>
<%@ taglib uri="http://www.springframework.org/tags/form" prefix="form"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>

<script type="text/javascript" src="http://code.jquery.com/jquery-1.6.min.js"></script>
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
								Pesquisa de Beneficiário <small> Aqui você poderá editar e/ou excluir clientes/beneficiários </small>
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
											<td align="center"><a href="edit?id=${user.id}"
												class="btn btn-info" title="Editar"/>Editar</td>
											<td align="center">
												<button class="btn btn-warning" data-toggle="modal"
													data-target="#myModal" onclick="setarID(${user.id});">Excluir</button>
											</td>
										</tr>
									</c:forEach>
								</tbody>
							</table>
							
								  									<div class="divider"></div>
			<div class="form-group">
				<input type="hidden" name="superhidden" id="superhidden">
				<a href="inserirCliente" class="btn btn-info" title="Carousels"><span>Cadastrar Novo Usuário</span></a>
			</div>
							
							
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
		
		<script type="text/javascript" src="${pageContext.request.contextPath}/resources/js/modal.js"></script>
        <div class="modal fade" id="myModal" tabindex="-1" role="dialog" aria-labelledby="myModalLabel" aria-hidden="true">
            <div class="modal-dialog">
                <div class="modal-content">
                    <div class="modal-header">
                        <button type="button" class="close" data-dismiss="modal" aria-hidden="true">&times;</button>
                        <h4 class="modal-title">Deletar Beneficiário</h4>
                    </div>
                    <div class="modal-body">
                        <p>Deseja realmente excluir o beneficiário selecionado ? </p>
                    </div>
                    <div class="modal-footer">
                    <a href="$" class="btn btn-info" title="Deletar" id="testaaaa">Deletar</a>
                    <button type="button" class="btn btn-warning" data-dismiss="modal">Fechar</button>
                    </div>
                </div>
            </div>
        </div>
			<script type="text/javascript">
		      function getUser() {
		    	 return teste;
		      }
		      var userTeste = "";
		      function setarID(id) {
		    	  	 $("#testaaaa").attr("href","delete?id=" + id);
			    	 return true;
			      }
		      
		      var textt = getUser()
		      
	
			$(function() {
				$('#Name').val(teste);
			});
			</script>
		</div>

	</tiles:putAttribute>
</tiles:insertDefinition>