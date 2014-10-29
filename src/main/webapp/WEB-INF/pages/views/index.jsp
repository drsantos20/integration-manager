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
				  	<c:url value="/j_spring_security_logout" var="logoutUrl" />
					<form action="${logoutUrl}" method="post" id="logoutForm">
						<input type="hidden" name="${_csrf.parameterName}"
							value="${_csrf.token}" />
					</form>
					<script>
						function formSubmit() {
							document.getElementById("logoutForm").submit();
						}
					</script>
				  
				  <c:if test="${pageContext.request.userPrincipal.name != null}">
		
							Bem Vindo : ${pageContext.request.userPrincipal.name}  <a
								href="javascript:formSubmit()"> Logout</a>
						
				  </c:if>
                  </h3>
                  <div class="font-gray-dark font-size-18 text-center mrg25T mrg15B">Você poderá navegar para as páginas através dos menus a esquerda ou no menu acima</div>
            </div>
         </div>
      </div>
   </tiles:putAttribute>
</tiles:insertDefinition>