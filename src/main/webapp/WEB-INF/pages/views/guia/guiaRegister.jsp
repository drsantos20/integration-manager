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
<link rel="stylesheet" type="text/css"
   href="${pageContext.request.contextPath}/resources/css/6cols.css">   
<link rel="stylesheet" href="http://yui.yahooapis.com/pure/0.5.0/pure-min.css">
<link rel="stylesheet" href="http://yui.yahooapis.com/pure/0.5.0/grids-responsive-min.css">
<tiles:insertDefinition name="defaultTemplate">
   <tiles:putAttribute name="body">
      <div class="body">
         <div id="page-content">
            <div class="container">
               <div class="page-box">
                  <h3 class="page-title">
                     Cadastro de Guia <small> Inclusão de novo guia </small>
                  </h3>
                  <c:url var="userRegistration" value="saveUser.html" />
                  <form:form class="pure-form pure-form-stacked" role="form" data-parsley-validate="" modelAttribute="guia" method="post" action="register">
                     <fieldset>
                     	<div class="bg-blue-alt pad20L pad5A font-white">Dados da Operadora</div>

								<div class="pure-g">
									<div class="pure-u-1 pure-u-md-1-3">
										<label for="">Operadora:</label> <input id="operadora.nome"
											name="operadora.nome" type="text">
									</div>

									<div class="pure-u-1 pure-u-md-1-3">
										<label for="">Registro ANS:</label> <input
											id="operadora.registro_ans" name="operadora.registro_ans" type="text">
									</div>

									<div class="pure-u-1 pure-u-md-1-3">
										<label for="email">Numero Guia:</label> <input
											id="numeroGuiaAtribuidoOperadora" name="numeroGuiaAtribuidoOperadora" type="text" required>
									</div>
									
									<div class="pure-u-1 pure-u-md-1-3">
										<label for="">Guia Principal:</label> <input id="numeroGuiaPrincipal" name="numeroGuiaPrincipal"
											type="text">
									</div>

									<div class="pure-u-1 pure-u-md-1-3">
										<label for="">Data Autorização:</label> <input name="dataAutorizacao"
											id="dataAutorizacao" type="text">
									</div>

									<div class="pure-u-1 pure-u-md-1-3">
										<label for="">Senha:</label> <input name="senha"
											id="senha" type="text" required>
									</div>
								</div>
								<div class="bg-blue-alt pad20L pad5A font-white">Dados do Beneficiário</div>
								<div class="pure-g">
								<div class="pure-u-1 pure-u-md-1-3">
										<label for="">Numero da Carteira:</label> 
										<input id="beneficiario.numeroCarteira" type="text" name="beneficiario.numeroCarteira">
									</div>

									<div class="pure-u-1 pure-u-md-1-3">
										<label for="">Validade da Carteira:</label> <input
											id="beneficiario.validadeCarteira" name="beneficiario.validadeCarteira" type="text">
									</div>

									<div class="pure-u-1 pure-u-md-1-3">
										<label for="">Nome do Beneficiário:</label> <input 
											id="beneficiario.nome" name="beneficiario.nome" type="text" required>
									</div>
									
									<div class="pure-u-1 pure-u-md-1-3">
										<label for="">Numero Cartão Nacional de Saúde:</label> <input id="operadora.numeroCNS" name="operadora.numeroCNS"
											type="text">
									</div>

									<div class="pure-u-1 pure-u-md-1-3">
										<label for=""> Atendimento RN: </label>
										<form:select path="beneficiario.atendimentoRN" >
										    <option value="S">S</option>
										    <option value="N">N</option>
										</form:select>
									</div>
								</div>
								<div class="bg-blue-alt pad20L pad5A font-white">Dados do Contratado Solicitante</div>
								
								<div class="pure-g">
									<div class="pure-u-1 pure-u-md-1-3">
										<label for="">Codigo na Operadora:</label> 
										<input id="contratado.codigoPrestadorNaOperadora" type="text" name="beneficiario.numeroCarteira">
									</div>

									<div class="pure-u-1 pure-u-md-1-3">
										<label for="">CPF/CNPJ:</label> <input
											id="contratado.cnpjOuCpfContratado" type="text">
									</div>

									<div class="pure-u-1 pure-u-md-1-3">
										<label for="">Nome do Contratado:</label> <input name="contratado.nomeContratado"
											id="contratado.nomeContratado" type="text" required>
									</div>
									
									<div class="pure-u-1 pure-u-md-1-3">
										<label for="">Codigo CNES:</label> <input id="operadora.cnes" name="operadora.cnes"
											type="text">
									</div>
									
									<div class="pure-u-1 pure-u-md-1-3">
										<label for="">Nome do Profissional Solicitante:</label> <input name="profissional.nomeProfissional"
											id="profissional.nomeProfissional" type="text" required>
									</div>
									
									<div class="pure-u-1 pure-u-md-1-3">
										<label for="">Conselho:</label> <input name="profissional.conselhoProfissional"
											id="profissional.conselhoProfissional" type="text" required>
									</div>
									
									<div class="pure-u-1 pure-u-md-1-3">
										<label for="">Nº Conselho:</label> <input name="profissional.numeroConselhoProfissional"
											id="profissional.numeroConselhoProfissional" type="text" required>
									</div>
									
									<div class="pure-u-1 pure-u-md-1-3">
										<label for="">Data Solicitação:</label>
										 <input name="profissional.dataSolicitacao" id="profissional.dataSolicitacao" type="text" required>
									</div>
									
									<div class="pure-u-1 pure-u-md-1-3">
										<label for="">CBOS:</label>
										<form:select path="profissional.cbos" items="${model.cboss}" class="form-control" />
									</div>
									
									<div class="pure-u-1 pure-u-md-1-3">
										<label for="">Caráter Solição:</label>
										 <input name="profissional.caraterSolicitacao" id="profissional.caraterSolicitacao" type="text" required>
									</div>
									
									<div class="pure-u-1 pure-u-md-1-3">
										<label for="">CID:</label>
										 <input name="profissional.cid" id="profissional.cid" type="text" required>
									</div>
									
									<div class="pure-u-1 pure-u-md-1-3">
										<label for="">Indicação Clinica:</label>
										 <input name="profissional.indicacaoClinica" id="profissional.indicacaoClinica" type="text" required>
									</div>

								</div>
								<div class="bg-blue-alt pad20L pad5A font-white">Dados do Atendimento</div>
								<div class="pure-g">
									<div class="pure-u-1 pure-u-md-1-3">
										<label for="">Tipo de Atendimento:</label> 
										<input id="atendimento.tipoAtendimento" type="text" name="atendimento.tipoAtendimento">
									</div>

									<div class="pure-u-1 pure-u-md-1-3">
										<label for="">Indicação Acidente:</label> <input
											id="atendimento.indicacaoAcidente" name="atendimento.indicacaoAcidente" type="text">
									</div>

									<div class="pure-u-1 pure-u-md-1-3">
										<label for="">Tipo de Consulta:</label> <input name="contratado.tipoConsulta"
											id="contratado.tipoConsulta" type="text" required>
									</div>
									
									<div class="pure-u-1 pure-u-md-1-3">
										<label for="">Motivo de Encerramento de Atendimento:</label> <input name="contratado.motivoEncerramentoAtendimento"
											id="contratado.motivoEncerramentoAtendimento" type="text" required>
									</div>
								</div>
								<div class="bg-blue-alt pad20L pad5A font-white">Dados de Execução / Procedimentos e Exames Realizados</div>
								
								<div class="section group">
									<div class="col span_1_of_6">
										<label for="">Data:</label> 
										<input class="pure-input-2-3" id="atendimento.tipoAtendimento" type="text" name="atendimento.tipoAtendimento">
									</div>

									<div class="col span_1_of_6">
										<label for="">Tabela:</label> 
										<form:select path="atendimento[0].tipoAtendimento" items="${model.tipoAtendimentos}" class="form-control" />
									</div>

									<div class="col span_1_of_6">
										<label for="">Cód. Procedimento:</label> <input class="pure-input-2-3" name="contratado.tipoConsulta"
											id="contratado.tipoConsulta" type="text" required>
									</div>
									
									<div class="col span_1_of_6">
										<label for="">Desc. Procedimento:</label> <input class="pure-input-1" name="contratado.motivoEncerramentoAtendimento"
											id="contratado.motivoEncerramentoAtendimento" type="text" required>
									</div>
									
									<div class="col span_1_of_6">
										<label for="">Quantidade:</label> <input class="pure-input-1-3" name="contratado.tipoConsulta"
											id="contratado.tipoConsulta" type="text" required>
									</div>
									
									<div class="col span_1_of_6">
										<label for="">Valor:</label> <input class="pure-input-2-3" name="contratado.motivoEncerramentoAtendimento"
											id="contratado.motivoEncerramentoAtendimento" type="text" required>
									</div>
								</div>
								
								<div class="divider"></div>
								
								
								<div class="content-box remove-border dashboard-buttons clearfix center-div">
                          <button class="btn vertical-button remove-border btn-primary">
                                  <span class="glyph-icon icon-separator-vertical">
                                <i class="glyph-icon icon-save"></i>
                            </span>
                            <span class="button-content">Salvar</span>
                          </button>
                         
                     <div class="content-box remove-border dashboard-buttons clearfix float-right">
                          <a href="buscarBeneficiario" class="btn vertical-button remove-border btn-purple" title="">
                          <span class="glyph-icon icon-separator-vertical">
                              <i class="glyph-icon icon-remove"></i>
                          </span>
                          <span class="button-content">Cancelar</span>
                         </a>
                    </div>
                     </div>
                     </fieldset>
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
                        
                     $("#telefone").on("blur", function() {
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
                          var numItems = $('.form-group_telefone').length;
                     $('.form-group_telefone:first').clone().insertAfter('#myDiv').find('input[type="text"]').prop('name', 'telefone['+numItems+'].numero');
                     $('#tipoId').attr( 'name','telefone['+numItems+'].tipo');
                     };
                    
                     function mask(o, f) {
                     setTimeout(function () {
                     var v = mtelefone(o.value);
                     if (v != o.value) {
                     o.value = v;
                     }
                     }, 1);
                     }
                    
                     function mtelefone(v) {
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
