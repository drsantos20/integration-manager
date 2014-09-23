<%@ taglib prefix="spring" uri="http://www.springframework.org/tags" %>
<div class="menu">
<!-- Menu -->
<!-- 	<ul> -->
<!-- 	    <li> -->
<%-- 	    	<spring:url value="/home" var="homeUrl" htmlEscape="true"/> --%>
<%--  			<a href="${homeUrl}">Home</a> --%>
<!--  		</li> -->
<!-- 	    <li> -->
<%-- 	    	<spring:url value="/about" var="aboutUrl" htmlEscape="true"/> --%>
<%--  			<a href="${aboutUrl}">About</a> --%>
<!--  		</li> -->
<!-- 	</ul> -->
		
		<link rel="apple-touch-icon-precomposed" sizes="144x144" href="${pageContext.request.contextPath}/resources/images/icons/apple-touch-icon-144-precomposed.png">
		<link rel="apple-touch-icon-precomposed" sizes="114x114" href="${pageContext.request.contextPath}/resources/images/icons/apple-touch-icon-114-precomposed.png">
		<link rel="apple-touch-icon-precomposed" sizes="72x72" href="${pageContext.request.contextPath}/resources/images/icons/apple-touch-icon-72-precomposed.png">
		<link rel="apple-touch-icon-precomposed" href="${pageContext.request.contextPath}/resources/images/icons/apple-touch-icon-57-precomposed.png">
		<link rel="shortcut icon" href="${pageContext.request.contextPath}/resources/images/icons/favicon.png">
		<script type="text/javascript" src="${pageContext.request.contextPath}/resources/js/js-core.js"></script>
		<link rel="stylesheet" type="text/css" href="${pageContext.request.contextPath}/resources/css/all-demo.css"> 

<!-- 	<div id="page-sidebar" class="rm-transition"> -->
    <div id="page-sidebar-wrapper" >
<!--      <div id="page-sidebar-wrapper" class="bg-gray" tabindex="5003" style="overflow-y: hidden; outline: none; height: 402px;"> -->

    <div id="sidebar-menu">
    <div id="sidebar-search">
    <input type="text" placeholder="Autocomplete search..." class="autocomplete-input tooltip-button" data-placement="right" title="Type &apos;j&apos; to see the available tags..." name="">
    <i class="glyph-icon icon-search"></i>
	</div>
<ul>
<li>
    <a href="index.html" title="Applications">
        <i class="glyph-icon icon-linecons-tv"></i>
        <span>Dashboard</span>
    </a>
</li>
<li>
    <a href="index.html" title="Applications">
        <i class="glyph-icon icon-linecons-shop"></i>
        <span>Gerenciar</span>
        <span class="bs-label label-success">NEW</span>
    </a>
    <ul>
        <li class="header"><span>Usu&aacute;rios</span></li>
        <li><a href="carousels.html" title="Carousels"><span>Cadastrar Novo Usu&aacute;rio</span></a></li>
        <li><a href="slideshows.html" title="Slideshows"><span>Listar Usu&aacute;rios</span></a></li>

        <li class="header"><span>Benefici&aacute;rios</span></li>
        <li><a href="portfolio-2col.html" title="Portfolio 2 columns"><span>Cadastrar Novo Benefici&aacute;rio</span></a></li>
        <li><a href="portfolio-3col.html" title="Portfolio 2 columns"><span>Listar Benefici&aacute;rios</span></a></li>

        <li class="header"><span>Planos</span></li>
        <li><a href="icon-boxes.html" title="Icon boxes"><span>Cadastrar Novo Plano</span></a></li>
        <li><a href="page-titles.html" title="Page titles"><span>Listar Planos</span></a></li>

        <li class="header"><span>Produtos</span></li>
        <li><a href="footer-1.html" title="Simple black footer"><span>Cadastrar Novo Produto</span></a></li>
        <li><a href="footer-2.html" title="Simple blue footer"><span>Listar Produtos</span></a></li>
    </ul>
</li>
    <li>
        <a href="#" title="Applications">
            <i class="glyph-icon icon-paper-plane"></i>
            <span>Agenda</span>
        </a>
        <ul>
            <li class="header"><span>Consultas</span></li>
            <li><a href="mailbox-inbox.html" title="Inbox"><span>Consultar Agenda</span></a></li>
        </ul>
    </li>
    <li>
        <a href="#" title="Extra pages">
            <i class="glyph-icon icon-linecons-params"></i>
            <span>Gerenciamento TISS</span>
            <span class="bs-label label-success">New</span>
        </a>
        <ul>
            <li class="header"><span>Autoriza&ccedil;&atilde;o</span></li>
            <li><a href="index.html" title="Dashboard example 1"><span>Solicitar Autoriza&ccedil;&atilde;o</span></a></li>
        </ul>
    </li>
    <li class="divider"></li>
    <li>
        <a href="#" title="Charts">
            <i class="glyph-icon icon-linecons-calendar"></i>
            <span>Relat&oacute;rios Gerenciais</span>
        </a>
        <ul>
            <li><a href="justgage.html" title="JustGage"><span>Ret&oacute;rios</span></a></li>
        </ul>
    </li>
</ul>

        </div><!-- #sidebar-menu -->

        <div class="divider"></div>

        <div class="hidden-mobile text-center mrg15A">
            <div class="btn-group btn-group-sm">
                <a href="javascript:;" class="btn btn-primary tooltip-button" data-placement="top" title="Top tooltip">
                    <i class="glyph-icon icon-flag"></i>
                </a>
                <a href="javascript:;" class="btn btn-primary tooltip-button" data-placement="bottom" title="Bottom tooltip">
                    <i class="glyph-icon icon-inbox"></i>
                </a>
                <a href="javascript:;" class="btn btn-primary tooltip-button" data-placement="right" title="Right tooltip">
                    <i class="glyph-icon icon-hdd-o"></i>
                </a>
            </div>
        </div>

        <div class="divider"></div>
    </div><!-- #page-sidebar-wrapper -->







</div>