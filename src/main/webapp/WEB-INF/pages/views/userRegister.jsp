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
                                    Cadastro de Beneficiário
                                    <small>
                                        Inclusão de novos clientes/beneficiários
                                    </small>
                                </h3>
               	<c:url var="userRegistration" value="saveUser.html" />
				<form:form id="demo-form" class="form-horizontal" data-parsley-validate="" modelAttribute="pessoa" method="post" action="register">
                        <div class="form-group">
                            <label for="" class="col-sm-2 control-label">
                                Name:
                                <span class="required">*</span>
                            </label>
                            <div class="col-sm-8">
                                <input class="form-control" type="text" id="email" name="email" required="">
                            </div>
                        </div>
                        <div class="form-group">
                            <label for="" class="col-sm-2 control-label">
                                Sobre Nome:
                                <span class="required">*</span>
                            </label>
                            <div class="col-sm-8">
                                <input class="form-control" type="text" id="email" name="email" data-parsley-trigger="change" required="">
                            </div>
                        </div>
                        <div class="form-group">
                            <label for="" class="col-sm-2 control-label">
                                Email:
                            </label>
                            <div class="col-sm-8">
                                <input class="form-control" type="text" id="website" name="website">
                            </div>
                        </div>
                        
                        <div class="form-group">
                            <label for="" class="col-sm-2 control-label">
                                Telefone:
                            </label>
                            <div class="col-sm-8">
                                <input class="input-mask form-control" data-inputmask="'mask':'(999) 999-9999'" type="text" id="phone" name="phone">
                                <div class="help-block">(11) 99999-9999</div>
                            </div>
                        </div>
                        
                        <div class="form-group">
                            <label for="" class="col-sm-2 control-label">
                                Data de Nascimento:
                            </label>
                            <div class="col-sm-3">
                                <input class="form-control" type="text" id="nascimento" name="nascimento">
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
                                <input class="form-control" type="text" id="address" name="address">
                            </div>
                        </div>
                        
                        <div class="form-group">
                            <label for="" class="col-sm-2 control-label">
                                Cidade:
                            </label>
                            <div class="col-sm-8">
                                <input class="form-control" type="text" id="city" name="city">
                            </div>
                        </div>
                        
                        <div class="form-group">
                            <label for="" class="col-sm-2 control-label">
                                Pais:
                            </label>
                            <div class="col-sm-8">
                                <input class="form-control" type="text" id="country" name="country">
                            </div>
                        </div>
                        
                        <div class="form-group">
                            <label for="" class="col-sm-2 control-label">
                                Sexo:
                            </label>
                            <div class="col-sm-8">
                                <input class="form-control" type="text" id="sexo" name="sexo">
                            </div>
                        </div>
                        
                        <div class="form-group">
                            <label for="" class="col-sm-2 control-label">
                                Nacionalidade:
                            </label>
                            <div class="col-sm-8">
                                <input class="form-control" type="text" id="nationality" name="nationality">
                            </div>
                        </div>
                        
                        <div class="divider"></div>
                        <div class="form-group">
                            <input type="hidden" name="superhidden" id="superhidden">
                            <div class="col-sm-offset-2 col-sm-8">
                                <button class="btn btn-md btn-primary">
                                    Registrar
                                </button>
                            </div>
                        </div>
<!-- 							<div> -->
<!-- 								<button class="btn btn-md btn-primary" type="submit">Registrar &raquo;</button> -->
<!-- 							</div> -->
						</form:form>
						
						<script type="text/javascript" src="${pageContext.request.contextPath}/resources/js/inputmask.js"></script>
						<script type="text/javascript">
							$(function() {
								"use strict";
								$(".input-mask").inputmask();
							});
						</script>
					</div>
			</div>
		</div>
		</div>


	</tiles:putAttribute>
</tiles:insertDefinition>