<%@ taglib uri="http://tiles.apache.org/tags-tiles" prefix="tiles" %>
<%@ taglib uri="http://www.springframework.org/tags/form" prefix="form"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>


<script type="text/javascript" src="${pageContext.request.contextPath}/resources/js/jquery-core.js"></script>
<script type="text/javascript" src="${pageContext.request.contextPath}/resources/js/js-core.js"></script>
<link rel="stylesheet" type="text/css" href="${pageContext.request.contextPath}/resources/css/all-demo.css"> 



<tiles:insertDefinition name="defaultTemplate">
	<tiles:putAttribute name="body">
		

		<div class="body">
			<div id="page-content">
			 <div class="container">
                            <div class="page-box">
                                <h3 class="page-title">
                                    Editar de Beneficiário(a)
                                    <small>
                                        Alteração clientes/beneficiários
                                    </small>
                                </h3>
               	<c:url var="userRegistration" value="saveUser.html" />
               	
				<form:form id="demo-form" class="form-horizontal" data-parsley-validate="" modelAttribute="pessoa" method="post" action="update">
							<input class="form-control" type="hidden" id="id" name="id"
								required="" value="${model.pessoaObject.id}">


							<div class="form-group">
                            <label for="" class="col-sm-2 control-label">
                                Nome:
                                <span class="required">*</span>
                            </label>
                            <div class="col-sm-8">
                                <input class="form-control" type="text" id="nome" name="nome" required="" value="${model.pessoaObject.nome}" >
                            </div>
                        </div>
                        <div class="form-group">
                            <label for="" class="col-sm-2 control-label">
                                Email:
                            </label>
                            <div class="col-sm-8">
                                <input class="form-control" type="text" id="email" name="email" value="${model.pessoaObject.email}">
                            </div>
                        </div>
                        <c:forEach items="${model.pessoaObject.telefone}" var="user">
                        <div class="form-group">
                            <label for="" class="col-sm-2 control-label">
                                Telefone:
                            </label>
                            <div class="col-sm-3">
                                <input class="input-mask form-control" data-inputmask="'mask':'(11) 99999-9999'" type="text" id="telefone" name="telefone" value="${user}">
                                <div class="help-block">(11) 99999-9999</div>
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
                                <input class="form-control" type="text" id="nascimento" name="nascimento" value="${model.pessoaObject.nascimento}">
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
                                <input class="form-control" type="text" id="endereco" name="endereco" value="${model.pessoaObject.endereco}">
                            </div>
                        </div>
                        
                        <div class="form-group">
                            <label for="" class="col-sm-2 control-label">
                                Cidade:
                            </label>
                            <div class="col-sm-8">
                                <input class="form-control" type="text" id="cidade" name="cidade" value="${model.pessoaObject.cidade}">
                            </div>
                        </div>
                        
                        <div class="form-group">
                            <label for="" class="col-sm-2 control-label">
                                Estado:
                            </label>
                            <div class="col-sm-8">
                                <input class="form-control" type="text" id="estado" name="estado" value="${model.pessoaObject.estado}">
                            </div>
                        </div>
                        
                        <div class="form-group">
                            <label for="" class="col-sm-2 control-label">
                                Sexo:
                            </label>
                            <div class="col-sm-8">
                                <input class="form-control" type="text" id="sexo" name="sexo" value="${model.pessoaObject.sexo}">
                            </div>
                        </div>
                        
                        <div class="form-group">
                            <label for="" class="col-sm-2 control-label">
                                Nacionalidade:
                            </label>
                            <div class="col-sm-8">
                                <input class="form-control" type="text" id="nacionalidade" name="nacionalidade" value="${model.pessoaObject.nacionalidade}">
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