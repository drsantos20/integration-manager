<html lang ="pt">
<head> 
<title> SGM WEB  </title>
<meta name="description" content="">
<meta name="viewport" content="width=device-width, initial-scale=1.0, maximum-scale=1.0, user-scalable=no">

<!-- Favicons -->
<link rel="apple-touch-icon-precomposed" sizes="144x144" href="${pageContext.request.contextPath}/resources/images/icons/apple-touch-icon-144-precomposed.png">
<link rel="apple-touch-icon-precomposed" sizes="114x114" href="${pageContext.request.contextPath}/resources/images/icons/apple-touch-icon-114-precomposed.png">
<link rel="apple-touch-icon-precomposed" sizes="72x72" href="${pageContext.request.contextPath}/resources/images/icons/apple-touch-icon-72-precomposed.png">
<link rel="apple-touch-icon-precomposed" href="${pageContext.request.contextPath}/resources/images/icons/apple-touch-icon-57-precomposed.png">
<link rel="shortcut icon" href="${pageContext.request.contextPath}/resources/images/icons/favicon.png">

<%@ taglib uri="http://tiles.apache.org/tags-tiles" prefix="tiles" %>
<%@ taglib uri="http://www.springframework.org/tags/form" prefix="form"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>

<!-- JS Core -->
<script type="text/javascript" src="${pageContext.request.contextPath}/resources/js/js-core.js"></script>

<script type="text/javascript">
    $(window).load(function(){
        setTimeout(function() {
            $('#loading').fadeOut( 400, "linear" );
        }, 300);
    });
</script>
<style>
    #loading {position: fixed;width: 100%;height: 100%;left: 0;top: 0;right: 0;bottom: 0;display: block;background: #fff;z-index: 10000;}
    #loading img {position: absolute;top: 50%;left: 50%;margin: -23px 0 0 -23px;}
</style>
<link rel="stylesheet" type="text/css" href="${pageContext.request.contextPath}/resources/css/all-demo.css">


</head> 
<body>

<style type="text/css">

    body {
        background: #fff;
        height: 75% !important;
    }

</style>
<div class="center-vertical">
    <div class="center-content">
        <form id="login-validation" class="col-md-4 center-margin" action="<c:url value='/j_spring_security_check' />" method='POST'>
            <h3 class="text-center pad25B font-blue-alt text-transform-upr font-size-23">SGM WEB <span class="opacity-80">v1.0</span></h3>
            <div id="login-form" class="content-box bg-default">
                <div class="content-box-wrapper pad20A">
                <img class="mrg25B center-margin radius-all-100 display-block" src="${pageContext.request.contextPath}/resources/images/userSession.png" alt="">
                    <div class="form-group"> 
                        <div class="input-group">
                            <span class="input-group-addon addon-inside bg-gray">
                                <i class="glyph-icon icon-user"></i>
                            </span>
                            <input type="text" class="form-control" placeholder="Insira seu usuário" name="username">
                        </div>
                    </div>
                    <div class="form-group">
                        <div class="input-group">
                            <span class="input-group-addon addon-inside bg-gray">
                                <i class="glyph-icon icon-unlock-alt"></i>
                            </span>
                            <input type="password" class="form-control" name="password" placeholder="Insira sua senha">
                        </div>
                    </div>
                    <div class="form-group">
                        <button type="submit" class="btn btn-block btn-primary">Login</button>
                    </div>
                </div>
            </div>
			<input type="hidden" name="${_csrf.parameterName}"
                  value="${_csrf.token}" />
        </form>

    </div>
</div>
</body>
</html>