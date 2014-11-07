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
                     Cadastro de Guia <small> Inclusão de novo guia </small>
                  </h3>
                  <c:url var="userRegistration" value="saveUser.html" />
                  <form:form id="demo-form" class="form-horizontal"
                     data-parsley-validate="" modelAttribute="guia" method="post" action="register">
                     <div class="bg-blue pad5A font-white">Dados da Operadora</div>
                     <div class="form-group pad15A">
                        <label for="" class="col-sm-2 control-label"> Operadora: </label>
                        <div class="col-sm-3">
                           <input class="form-control" type="text" id="operadora.nome" name="operadora.nome" required="">
                        </div>
                        <label for="" class="col-sm-2 control-label"> Registro ANS: </label>
                        <div class="col-sm-3">
                           <input class="form-control" type="text" id="operadora.registro_ans" name="operadora.registro_ans" required="">
                           <br>
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
