<%@ taglib uri="http://tiles.apache.org/tags-tiles" prefix="tiles"%>
<%@ taglib uri="http://www.springframework.org/tags/form" prefix="form"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>


<link rel="shortcut icon" href="${pageContext.request.contextPath}/resources/images/icons/favicon.png">

<script type="text/javascript"
	src="${pageContext.request.contextPath}/resources/js/jquery-core.js"></script>
<script type="text/javascript"
	src="${pageContext.request.contextPath}/resources/js/js-core.js"></script>
<link rel="stylesheet" type="text/css"
	href="${pageContext.request.contextPath}/resources/css/forms.css">
<link rel="stylesheet" type="text/css"
	href="${pageContext.request.contextPath}/resources/css/datepicker.css">
<link rel="stylesheet" type="text/css"
	href="${pageContext.request.contextPath}/resources/css/all-demo.css">

<tiles:insertDefinition name="defaultTemplate">
	<tiles:putAttribute name="body">
		<div class="body">
			<div id="page-content">
				<div class="container">
					<div class="page-box">
						<h3 class="page-title">
							Cadastro de Benefici�rio <small> Inclus�o de novos
								benefici�rios </small>
						</h3>
						<c:url var="userRegistration" value="saveUser.html" />
						<form:form id="demo-form" class="form-horizontal"
							data-parsley-validate="" modelAttribute="beneficiario" method="post"
							action="register">
							<div class="form-group">
								<label for="" class="col-sm-2 control-label"> Nome: <span
									class="required">*</span>
								</label>
								<div class="col-sm-8">
									<input class="form-control" type="text" id="nome" name="nome"
										required="">
								</div>
							</div>
							
							<div class="form-group">
								<label for="" class="col-sm-2 control-label"> CPF: </label>
								<div class="col-sm-3">
									<input type="text" class="input-mask form-control" data-inputmask="'mask':'999.999.999-99'" id="cpf" name="cpf">
								</div>
							
								<label for="" class="col-sm-2 control-label"> Sexo: </label>
								<div class="col-sm-3">
									<form:select path="sexo" items="${model.sexo}"
										class="form-control"></form:select>
									<br>
								</div>
							</div>
							
							<div class="form-group">
								<label for="" class="col-sm-2 control-label"> Email: </label>
								<div class="col-sm-8">
									<input class="form-control" type="text" id="email" name="email" required="">
								</div>
							</div>
							<div class="form-group_telefone" id="myDiv">
								<label for="" class="col-sm-2 control-label"> Telefone:
								</label>
								<div class="col-sm-3">
<!-- 									<input class="input-mask form-control" data-inputmask="'mask':'(99) 99999-9999'" type="text" -->
<!-- 										id="telefone"  name="telefone"> -->
										<input class="form-control" type="text" id="phone" name="phone" onkeypress="mask(this, mphone);" onblur="mask(this, mphone);" />
								</div>
								<label for="" class="col-sm-2 control-label"> Tipo: </label>
								<div class="col-sm-2">
									<form:select path="tipoTelefone" items="${model.tipo}"
										class="form-control"></form:select>
								</div>
								<div class="col-sm-2">
									<div class="btn btn-azure" title=".icon-plus-square" onclick="add()">Add
								</div>
								</div>
							</div>
							
							
							<div class="form-group">
								<label for="" class="col-sm-2 control-label"> Data de
									Nascimento: </label>
								<div class="col-sm-3">
<!-- 									<input class="form-control" type="text" id="nascimento"	name="nascimento"> -->
									<input type="text" class="bootstrap-datepicker form-control" id="nascimento" name="nascimento" data-date-format="dd/mm/yy">	
										
								</div>
								<label for="" class="col-sm-2 control-label">
									Nacionalidade: </label>
								<div class="col-sm-3">
									<form:select path="nacionalidade" items="${model.nacionalidade}"
										class="form-control"></form:select>
								</div>
							</div>

							<div class="form-group">
								<label for="" class="col-sm-2 control-label"> Endere�o:
								</label>
								<div class="col-sm-8">
									<input class="form-control" type="text" id="endereco"
										name="endereco">
								</div>
							</div>

							<div class="form-group">
								<label for="" class="col-sm-2 control-label"> Cidade: </label>
								<div class="col-sm-8">
									<input class="form-control" type="text" id="cidade"
										name="cidade">
								</div>
							</div>

							<div class="form-group">
								<label for="" class="col-sm-2 control-label"> Estado: </label>
								<div class="col-sm-8">
									<input class="form-control" type="text" id="estado"
										name="estado">
								</div>
							</div>

							<div class="divider"></div>
							<div class="form-group">
								<input type="hidden" name="superhidden" id="superhidden">
								<div class="col-sm-offset-2 col-sm-8">
									<button class="btn btn-md btn-primary">Registrar</button>
								</div>
							</div>
						</form:form>

						<script type="text/javascript" src="${pageContext.request.contextPath}/resources/js/inputmask.js"></script>
						<script type="text/javascript">
							$(function() {
								"use strict";
								$(".input-mask").inputmask();
							});
						</script>
						
						<script type="text/javascript" src="${pageContext.request.contextPath}/resources/js/datepicker.js"></script>
						<script type="text/javascript">
	                        /* Datepicker bootstrap */
	
	                        $(function(){
	                            $('.bootstrap-datepicker').bsdatepicker({
	                                format: 'dd-mm-yyyy'
	                            });
	                            
	                            $("#phone").mask("(99) 9999?9-9999");
								 $("#phone").on("blur", function() {
								     var last = $(this).val().substr( $(this).val().indexOf("-") + 1 );
								     
								     if( last.length == 3 ) {
								         var move = $(this).val().substr( $(this).val().indexOf("-") - 1, 1 );
								         var lastfour = move + last;
								         
								         var first = $(this).val().substr( 0, 9 );
								         
								         $(this).val( first + '-' + lastfour );
								     }
								 });
	                        });
	                        
	                        function add() {
								  $('.form-group_telefone:first').clone().insertAfter('#myDiv');
							 };
							 
							 function mask(o, f) {
								    setTimeout(function () {
								        var v = mphone(o.value);
								        if (v != o.value) {
								            o.value = v;
								        }
								    }, 1);
								}

								function mphone(v) {
								    var r = v.replace(/\D/g,"");
								    r = r.replace(/^0/,"");
								    if (r.length > 10) {
								        // 11+ digits. Format as 5+4.
								        r = r.replace(/^(\d\d)(\d{5})(\d{4}).*/,"(0XX$1) $2-$3");
								    }
								    else if (r.length > 5) {
								        // 6..10 digits. Format as 4+4
								        r = r.replace(/^(\d\d)(\d{4})(\d{0,4}).*/,"(0XX$1) $2-$3");
								    }
								    else if (r.length > 2) {
								        // 3..5 digits. Add (0XX..)
								        r = r.replace(/^(\d\d)(\d{0,5})/,"(0XX$1) $2");
								    }
								    else {
								        // 0..2 digits. Just add (0XX
								        r = r.replace(/^(\d*)/, "(0XX$1");
								    }
								    return r;
								}
	                    </script>
					</div>
				</div>
			</div>
		</div>


	</tiles:putAttribute>
</tiles:insertDefinition>