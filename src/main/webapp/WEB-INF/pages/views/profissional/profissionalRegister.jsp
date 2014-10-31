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
                     Cadastro de Profissionals <small> Inclus�o de novo profissional </small>
                  </h3>
                  <c:url var="userRegistration" value="saveUser.html" />
                  <form:form id="demo-form" class="form-horizontal"
                     data-parsley-validate="" modelAttribute="profissional" method="post" action="salvarProfissional">
                     <div class="form-group">
                        <label for="" class="col-sm-2 control-label"> Nome: <span
                           class="required"></span>
                        </label>
                        <div class="col-sm-8">
                           <input class="form-control" type="text" id="nomeProfissional" name="nomeProfissional"
                              required="">
                        </div>
                     </div>
                     <div class="form-group">
                        <label for="" class="col-sm-2 control-label"> Especialidade: </label>
                        <div class="col-sm-3">
                           <form:select path="cbos" items="${model.cboss}" class="form-control" />
                        </div>
                        <label for="" class="col-sm-2 control-label"> UF Conselho: </label>
                        <div class="col-sm-3">
                           <input class="form-control" type="text" id="uf" name="uf" required="">
                           <br>
                        </div>
                     </div>
                     <div class="form-group">
                        <label for="" class="col-sm-2 control-label"> Conselho: </label>
                        <div class="col-sm-3">
                           <input class="form-control" type="text" id="conselhoProfissional" name="conselhoProfissional" required="">
                        </div>
                        <label for="" class="col-sm-2 control-label"> N�mero do Conselho: </label>
                        <div class="col-sm-3">
                           <input class="form-control" type="text" id="numeroConselhoProfissional" name="numeroConselhoProfissional" required="">
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
                     	<a href="buscarProfissional" class="btn vertical-button remove-border btn-purple" title="">
                          <span class="glyph-icon icon-separator-vertical">
                              <i class="glyph-icon icon-remove"></i>
                          </span>
                          <span class="button-content">Cancelar</span>
                    	</a>
                    </div>
                     </div>
                  </form:form>
               </div>
            </div>
         </div>
      </div>
   </tiles:putAttribute>
</tiles:insertDefinition>