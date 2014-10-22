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
                     Gerenciar Beneficiários <small> Inclusão/Edição/Busca/Exclusão </small>
                  </h3>
                  <div class="content-box remove-border dashboard-buttons clearfix center-div pad150T">
                        <a href="inserirBeneficiario" class="btn vertical-button remove-border btn-success" title="">
                            <span class="glyph-icon icon-separator-vertical">
                                <i class="glyph-icon icon-plus-circle"></i>
                            </span>
                            <span class="button-content">Incluir</span>
                        </a>
                        <a href="buscarBeneficiario" class="btn vertical-button remove-border btn-purple" title="">
                            <span class="glyph-icon icon-separator-vertical">
                                <i class="glyph-icon icon-search"></i>
                            </span>
                            <span class="button-content">Buscar</span>
                        </a>
                    </div>
               </div>
            </div>
         </div>
      </div>
   </tiles:putAttribute>
</tiles:insertDefinition>