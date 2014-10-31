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
                                    Editar Profissional
                                    <small>
                                        Alteração de profissional.
                                    </small>
                                </h3>
               	<c:url var="userRegistration" value="saveUser.html" />
               	
				<form:form id="demo-form" class="form-horizontal" data-parsley-validate="" modelAttribute="profissional" method="post" action="updateProfissional">
							<input class="form-control" type="hidden" id="id" name="id" required="" value="${model.profissionalObject.id}">
							<div class="form-group">
                            <label for="" class="col-sm-2 control-label">
                                Nome:
                                <span class="required">*</span>
                            </label>
                            <div class="col-sm-8">
                                <input class="form-control" type="text" id="nomeProfissional" name="nomeProfissional" required="" value="${model.profissionalObject.nomeProfissional}" >
                            </div>
                        </div>
                        <div class="form-group">
	                        <label for="" class="col-sm-2 control-label"> Epecialidade: </label>
	                        <div class="col-sm-3">
	                        <form:select id="cbos" path="cbos" class="form-control">
							      <option value="0">-- Select --</option>
							      <c:forEach items="${model.listCbos}" var="category">
							            <option <c:if test="${category eq model.profissionalObject.cbos}">selected="selected"</c:if>    value="${category}">${category} </option>
							        </c:forEach>
							</form:select>
	                        
	                        
	                        </div>
	                        <label for="" class="col-sm-2 control-label"> UF Conselho: </label>
	                        <div class="col-sm-3">
	                           <input class="form-control" type="text" id="uf" name="uf" value="${model.profissionalObject.uf}">
	                           <br>
	                        </div>
	                     </div>
                        <div class="form-group">
	                        <label for="" class="col-sm-2 control-label"> Conselho: </label>
	                        <div class="col-sm-3">
	                           <input class="form-control" type="text" id="conselhoProfissional" name="conselhoProfissional" value="${model.profissionalObject.conselhoProfissional}">
	                        </div>
	                        <label for="" class="col-sm-2 control-label"> Número do Conselho: </label>
	                        <div class="col-sm-3">
	                           <input class="form-control" type="text" id="numeroConselhoProfissional" name="numeroConselhoProfissional" value="${model.profissionalObject.numeroConselhoProfissional}">
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