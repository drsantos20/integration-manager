<%@ taglib uri="http://tiles.apache.org/tags-tiles" prefix="tiles" %>
<%@ taglib uri="http://www.springframework.org/tags/form" prefix="form"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt" %>

<link rel="shortcut icon" href="${pageContext.request.contextPath}/resources/images/icons/favicon.png">
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
                                    Editar Operadora
                                    <small>
                                        Alteração de operadora.
                                    </small>
                                </h3>
               	<c:url var="userRegistration" value="saveUser.html" />
               	
				<form:form id="demo-form" class="form-horizontal" data-parsley-validate="" modelAttribute="beneficiario" method="post" action="updateOperadora">
							<input class="form-control" type="hidden" id="id" name="id" required="" value="${model.operadoraObject.id}">
							<div class="form-group">
                            <label for="" class="col-sm-2 control-label">
                                Nome:
                                <span class="required">*</span>
                            </label>
                            <div class="col-sm-8">
                                <input class="form-control" type="text" id="nome" name="nome" required="" value="${model.operadoraObject.nome}" >
                            </div>
                        </div>
                        <div class="form-group">
                            <label for="" class="col-sm-2 control-label">
                                Registro ANS: 
                            </label>
                            <div class="col-sm-8">
                                <input class="form-control" type="text" id="registro_ans" name="registro_ans" value="${model.operadoraObject.registro_ans}">
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
                     	<a href="buscarOperadora" class="btn vertical-button remove-border btn-purple" title="">
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