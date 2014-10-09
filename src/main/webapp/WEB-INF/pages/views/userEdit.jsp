<%@ taglib uri="http://tiles.apache.org/tags-tiles" prefix="tiles" %>
<%@ taglib uri="http://www.springframework.org/tags/form" prefix="form"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions" %>


<script type="text/javascript" src="${pageContext.request.contextPath}/resources/js/jquery-core.js"></script>
<script type="text/javascript" src="${pageContext.request.contextPath}/resources/js/js-core.js"></script>
<link rel="stylesheet" type="text/css" href="${pageContext.request.contextPath}/resources/css/forms.css">



<tiles:insertDefinition name="defaultTemplate">
	<tiles:putAttribute name="body">
		

		<div class="body">
			<div id="page-content">
			 <div class="container">
                            <div class="page-box">
                                <h3 class="page-title">
                                    Editar Clientes
                                    <small>
                                        Alteração clientes.
                                    </small>
                                </h3>
               	<c:url var="userRegistration" value="saveUser.html" />
               	
				<form:form id="demo-form" class="form-horizontal" data-parsley-validate="" modelAttribute="beneficiario" method="post" action="update">
							<input class="form-control" type="hidden" id="id" name="id" required="" value="${model.beneficiarioObject.id}">


							<div class="form-group">
                            <label for="" class="col-sm-2 control-label">
                                Nome:
                                <span class="required">*</span>
                            </label>
                            <div class="col-sm-8">
                                <input class="form-control" type="text" id="nome" name="nome" required="" value="${model.beneficiarioObject.nome}" >
                            </div>
                        </div>
                        <div class="form-group">
                            <label for="" class="col-sm-2 control-label">
                                Email:
                            </label>
                            <div class="col-sm-8">
                                <input class="form-control" type="text" id="email" name="email" value="${model.beneficiarioObject.email}">
                            </div>
                        </div>
                       <c:forEach items="${model.beneficiarioObject.telefone}" var="user" begin="0" end="3" varStatus="status">
                       <div class="form-group_telefone" id="myDiv">
                       <input class="form-control" type="hidden" id="telefone" name="telefone[${status.count-1}].id" required="" value="${user.id}">
                            <label for="form-control" class="col-sm-2 control-label">
                                Telefone:
                            </label>
                            <div class="col-sm-3" id="testeDiv">
                                <input class="form-control" type="text" id="telefone" name="telefone[${status.count-1}].descricao" value="${user.descricao}" onkeypress="mask(this, mtelefone);" onblur="mask(this, mtelefone);" />
                            </div>
                            <label for="" class="col-sm-2 control-label"> Tipo: </label>
                            <div class="col-sm-2">
									<form:select path="tipoTelefone" items="${model.tipo}"
										class="form-control"></form:select>
								</div>
                        </div>
                        </c:forEach>
                        
                        <div class="form-group">
                            <label for="" class="col-sm-2 control-label">
                                Data de Nascimento:
                            </label>
                            <div class="col-sm-3">
                                <input class="form-control" type="text" id="nascimento" name="nascimento" value="${model.beneficiarioObject.nascimento}">
                            </div>
                             <label for="" class="col-sm-2 control-label">
                                Nacionalidade:
                            </label>
                            <div class="col-sm-3">
                            
                        <select class="form-control" >
                            <option>Brasileira</option>
                            <option id="nationality">
                        </select>

                        <br>
                            </div>
                        </div>
                        
                        <div class="form-group">
                            <label for="" class="col-sm-2 control-label">
                                Endereço:
                            </label>
                            <div class="col-sm-8">
                                <input class="form-control" type="text" id="endereco" name="endereco" value="${model.beneficiarioObject.endereco}">
                            </div>
                        </div>
                        
                        <div class="form-group">
                            <label for="" class="col-sm-2 control-label">
                                Cidade:
                            </label>
                            <div class="col-sm-8">
                                <input class="form-control" type="text" id="cidade" name="cidade" value="${model.beneficiarioObject.cidade}">
                            </div>
                        </div>
                        
                        <div class="form-group">
                            <label for="" class="col-sm-2 control-label">
                                Estado:
                            </label>
                            <div class="col-sm-8">
                                <input class="form-control" type="text" id="estado" name="estado" value="${model.beneficiarioObject.estado}">
                            </div>
                        </div>
                        
                        <div class="form-group">
                            <label for="" class="col-sm-2 control-label">
                                Sexo:
                            </label>
                            <div class="col-sm-8">
                                <input class="form-control" type="text" id="sexo" name="sexo" value="${model.beneficiarioObject.sexo}">
                            </div>
                        </div>
                        
                        <div class="form-group">
                            <label for="" class="col-sm-2 control-label">
                                Nacionalidade:
                            </label>
                            <div class="col-sm-8">
                                <input class="form-control" type="text" id="nacionalidade" name="nacionalidade" value="${model.beneficiarioObject.nacionalidade}">
                            </div>
                        </div>
                        
                        <div class="divider"></div>
                        <div class="form-group">
                            <input type="hidden" name="superhidden" id="superhidden">
                            <div class="col-sm-offset-2 col-sm-8">
                                <button class="btn btn-md btn-primary">
                                    Salvar Alterações
                                </button>
                            </div>
                        </div>
						</form:form>
						
						<script type="text/javascript" src="${pageContext.request.contextPath}/resources/js/inputmask.js"></script>
						<script type="text/javascript">
// 							$(document).ready(function() {
// 								var numItems = $('.form-group_telefone').length;
// 	                        	for (i = 0; i < numItems; i++) {
// 	                        		alert(i);
// 	                        		$(".form-group_telefone:last").find('input[type="text"]').attr("name", 'telefone['+i+'].descricao');
// 	                        		$(".form-group_telefone:first").find('input[type="hidden"]').attr("name", 'telefone['+i+'].id');
// 	                        	}
// 							});
						
						
							$(function() {
								"use strict";
								$(".input-mask").inputmask();
							});
							
							
							function myFunction() {
							    if (new Date().getHours() < 20) {
							        document.getElementById("demo").innerHTML = "Good day";
							    }
							}
						</script>
					</div>
			</div>
		</div>
		</div>


	</tiles:putAttribute>
</tiles:insertDefinition>