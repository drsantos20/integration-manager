<!DOCTYPE html> 
<html lang="en">
<head> 

    <meta charset="UTF-8">
<!--[if IE]><meta http-equiv='X-UA-Compatible' content='IE=edge,chrome=1'><![endif]-->
<title> Principal </title>
<meta name="description" content="">
<meta name="viewport" content="width=device-width, initial-scale=1.0, maximum-scale=1.0, user-scalable=no">

<!-- Favicons -->

<link rel="apple-touch-icon-precomposed" sizes="144x144" href="${pageContext.request.contextPath}/resources/images/icons/apple-touch-icon-144-precomposed.png">
<link rel="apple-touch-icon-precomposed" sizes="114x114" href="${pageContext.request.contextPath}/resources/images/icons/apple-touch-icon-114-precomposed.png">
<link rel="apple-touch-icon-precomposed" sizes="72x72" href="${pageContext.request.contextPath}/resources/images/icons/apple-touch-icon-72-precomposed.png">
<link rel="apple-touch-icon-precomposed" href="${pageContext.request.contextPath}/resources/images/icons/apple-touch-icon-57-precomposed.png">
<link rel="shortcut icon" href="${pageContext.request.contextPath}/resources/images/icons/favicon.png">



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
<%--         <link rel="stylesheet" type="text/css" href="${pageContext.request.contextPath}/resources/css/menus.css"> --%>
<%--         <link rel="stylesheet" type="text/css" href="${pageContext.request.contextPath}/resources/css/layout.css"> --%>
<%--         <link rel="stylesheet" type="text/css" href="${pageContext.request.contextPath}/resources/css/framework-color.css"> --%>
<%--         <link rel="stylesheet" type="text/css" href="${pageContext.request.contextPath}/resources/css/layout-color.css"> --%>
<%-- 		 <link rel="stylesheet" type="text/css" href="${pageContext.request.contextPath}/resources/css/animate.css"> --%>
<%--         <link rel="stylesheet" type="text/css" href="${pageContext.request.contextPath}/resources/css/backgrounds.css"> --%>
<%--         <link rel="stylesheet" type="text/css" href="${pageContext.request.contextPath}/resources/css/boilerplate.css"> --%>
<%--         <link rel="stylesheet" type="text/css" href="${pageContext.request.contextPath}/resources/css/border-radius.css"> --%>
<%--         <link rel="stylesheet" type="text/css" href="${pageContext.request.contextPath}/resources/css/colors.css">   --%>
<%--         <link rel="stylesheet" type="text/css" href="${pageContext.request.contextPath}/resources/css/grid.css"> --%>
<%--         <link rel="stylesheet" type="text/css" href="${pageContext.request.contextPath}/resources/css/page-transitions.css"> --%>
<%--         <link rel="stylesheet" type="text/css" href="${pageContext.request.contextPath}/resources/css/responsive.css"> --%>
<%--         <link rel="stylesheet" type="text/css" href="${pageContext.request.contextPath}/resources/css/responsive-elements.css"> --%>
<%--         <link rel="stylesheet" type="text/css" href="${pageContext.request.contextPath}/resources/css/spacing.css">   --%>
<%--         <link rel="stylesheet" type="text/css" href="${pageContext.request.contextPath}/resources/css/typography.css"> --%>
<%--         <link rel="stylesheet" type="text/css" href="${pageContext.request.contextPath}/resources/css/utils.css">   --%>
<%--         <link rel="stylesheet" type="text/css" href="${pageContext.request.contextPath}/resources/css/badges.css"> --%>
<%--         <link rel="stylesheet" type="text/css" href="${pageContext.request.contextPath}/resources/css/breadcrumb.css"> --%>
<%--         <link rel="stylesheet" type="text/css" href="${pageContext.request.contextPath}/resources/css/buttons.css"> --%>
<%--         <link rel="stylesheet" type="text/css" href="${pageContext.request.contextPath}/resources/css/content-box.css"> --%>
<%--         <link rel="stylesheet" type="text/css" href="${pageContext.request.contextPath}/resources/css/dashboard-box.css"> --%>
<%-- 		 <link rel="stylesheet" type="text/css" href="${pageContext.request.contextPath}/resources/css/forms.css"> --%>
<%--         <link rel="stylesheet" type="text/css" href="${pageContext.request.contextPath}/resources/css/images.css"> --%>
<%--         <link rel="stylesheet" type="text/css" href="${pageContext.request.contextPath}/resources/css/info-box.css"> --%>
<%--         <link rel="stylesheet" type="text/css" href="${pageContext.request.contextPath}/resources/css/loading-indicators.css"> --%>
<%--         <link rel="stylesheet" type="text/css" href="${pageContext.request.contextPath}/resources/css/panel-box.css">     --%>
<%--         <link rel="stylesheet" type="text/css" href="${pageContext.request.contextPath}/resources/css/progress-bar.css"> --%>
<%--         <link rel="stylesheet" type="text/css" href="${pageContext.request.contextPath}/resources/css/response-messages.css"> --%>
<%--         <link rel="stylesheet" type="text/css" href="${pageContext.request.contextPath}/resources/css/ribbon.css"> --%>
<%--         <link rel="stylesheet" type="text/css" href="${pageContext.request.contextPath}/resources/css/social-box.css"> --%>
<%--         <link rel="stylesheet" type="text/css" href="${pageContext.request.contextPath}/resources/css/tables.css">   --%>
<%--         <link rel="stylesheet" type="text/css" href="${pageContext.request.contextPath}/resources/css/tile-box.css"> --%>
<%--         <link rel="stylesheet" type="text/css" href="${pageContext.request.contextPath}/resources/css/timeline.css">   --%>
<%--         <link rel="stylesheet" type="text/css" href="${pageContext.request.contextPath}/resources/css/dropdown.css"> --%>
<%--         <link rel="stylesheet" type="text/css" href="${pageContext.request.contextPath}/resources/css/layout/border-radius.css"> --%>
<%--         <link rel="stylesheet" type="text/css" href="${pageContext.request.contextPath}/resources/css/layout/layout.css">  --%>
        <link rel="stylesheet" type="text/css" href="${pageContext.request.contextPath}/resources/css/all-demo.css"> 

		<meta http-equiv="Content-Type" content="text/html; charset=UTF-8"/>

</head>
<body>
    <div id="loading"><img src="${pageContext.request.contextPath}/resources/images/spinner/loader-dark.gif" alt="Loading..."></div>

        <div id="sb-site">
            <div id="page-wrapper">

    <div id="page-header" class="clearfix">
    <div id="header-logo" class="rm-transition">
        <a href="#" class="tooltip-button hidden-desktop" title="Navigation Menu" id="responsive-open-menu">
            <i class="glyph-icon icon-align-justify"></i>
        </a>
        <span>eMED-Systems <i class="opacity-80">1.0</i>
        </span>

        <a id="collapse-sidebar" href="#" title="">
            <i class="glyph-icon icon-chevron-left"></i>
        </a>
    </div>
    <!-- #header-logo -->

    <div id="header-left">

        <div class="dropdown">

            <a data-toggle="dropdown" href="#" title="">
                <span class="bs-badge badge-absolute bg-orange">5</span>
                <i class="glyph-icon icon-bell"></i>
            </a>
            <div class="dropdown-menu">

                <div class="popover-title display-block clearfix pad10A">
                    Notifications
                </div>
                <div class="scrollable-content scrollable-nice box-md scrollable-small">

                    <ul class="no-border notifications-box">
                        <li>
                            <span class="bg-danger icon-notification glyph-icon icon-bullhorn"></span>
                            <span class="notification-text">This is an error notification</span>
                            <div class="notification-time">
                                a few seconds ago
                                <span class="glyph-icon icon-clock-o"></span>
                            </div>
                        </li>
                        <li>
                            <span class="bg-warning icon-notification glyph-icon icon-users"></span>
                            <span class="notification-text font-blue">This is a warning notification</span>
                            <div class="notification-time">
                                <b>15</b> minutes ago
                                <span class="glyph-icon icon-clock-o"></span>
                            </div>
                        </li>
                        <li>
                            <span class="bg-green icon-notification glyph-icon icon-sitemap"></span>
                            <span class="notification-text font-green">A success message example.</span>
                            <div class="notification-time">
                                <b>2 hours</b> ago
                                <span class="glyph-icon icon-clock-o"></span>
                            </div>
                        </li>
                        <li>
                            <span class="bg-azure icon-notification glyph-icon icon-random"></span>
                            <span class="notification-text">This is an error notification</span>
                            <div class="notification-time">
                                a few seconds ago
                                <span class="glyph-icon icon-clock-o"></span>
                            </div>
                        </li>
                        <li>
                            <span class="bg-warning icon-notification glyph-icon icon-ticket"></span>
                            <span class="notification-text">This is a warning notification</span>
                            <div class="notification-time">
                                <b>15</b> minutes ago
                                <span class="glyph-icon icon-clock-o"></span>
                            </div>
                        </li>
                        <li>
                            <span class="bg-blue icon-notification glyph-icon icon-user"></span>
                            <span class="notification-text font-blue">Alternate notification styling.</span>
                            <div class="notification-time">
                                <b>2 hours</b> ago
                                <span class="glyph-icon icon-clock-o"></span>
                            </div>
                        </li>
                        <li>
                            <span class="bg-purple icon-notification glyph-icon icon-user"></span>
                            <span class="notification-text">This is an error notification</span>
                            <div class="notification-time">
                                a few seconds ago
                                <span class="glyph-icon icon-clock-o"></span>
                            </div>
                        </li>
                        <li>
                            <span class="bg-warning icon-notification glyph-icon icon-user"></span>
                            <span class="notification-text">This is a warning notification</span>
                            <div class="notification-time">
                                <b>15</b> minutes ago
                                <span class="glyph-icon icon-clock-o"></span>
                            </div>
                        </li>
                        <li>
                            <span class="bg-green icon-notification glyph-icon icon-user"></span>
                            <span class="notification-text font-green">A success message example.</span>
                            <div class="notification-time">
                                <b>2 hours</b> ago
                                <span class="glyph-icon icon-clock-o"></span>
                            </div>
                        </li>
                        <li>
                            <span class="bg-purple icon-notification glyph-icon icon-user"></span>
                            <span class="notification-text">This is an error notification</span>
                            <div class="notification-time">
                                a few seconds ago
                                <span class="glyph-icon icon-clock-o"></span>
                            </div>
                        </li>
                        <li>
                            <span class="bg-warning icon-notification glyph-icon icon-user"></span>
                            <span class="notification-text">This is a warning notification</span>
                            <div class="notification-time">
                                <b>15</b> minutes ago
                                <span class="glyph-icon icon-clock-o"></span>
                            </div>
                        </li>
                    </ul>

                </div>
                <div class="pad10A button-pane button-pane-alt text-center">
                    <a href="#" class="btn btn-primary" title="View all notifications">
                        View all notifications
                    </a>
                </div>

            </div>
        </div>

        <div class="dropdown">

            <a data-toggle="dropdown" href="#" title="">
                <span class="bs-badge badge-absolute bg-red">2</span>
                <i class="glyph-icon icon-tasks"></i>
            </a>
            <div class="dropdown-menu pad0A" id="progress-dropdown">

                <div class="scrollable-content scrollable-nice box-sm scrollable-small">

                    <ul class="no-border progress-box progress-box-links">
                        <li>
                            <a href="#" title="">
                                <div class="progress-title">
                                    Finishing uploading files
                                    <b>23%</b>
                                </div>
                                <div class="progressbar-smaller progressbar" data-value="23">
                                    <div class="progressbar-value bg-blue-alt">
                                        <div class="progressbar-overlay"></div>
                                    </div>
                                </div>
                            </a>
                        </li>
                        <li>
                            <a href="#" title="">
                                <div class="progress-title">
                                    Roadmap progress
                                    <b>91%</b>
                                </div>
                                <div class="progressbar-smaller progressbar" data-value="91">
                                    <div class="progressbar-value bg-red">
                                        <div class="progressbar-overlay"></div>
                                    </div>
                                </div>
                            </a>
                        </li>
                        <li>
                            <a href="#" title="">
                                <div class="progress-title">
                                    Images upload
                                    <b>58%</b>
                                </div>
                                <div class="progressbar-smaller progressbar" data-value="58">
                                    <div class="progressbar-value bg-green"></div>
                                </div>
                            </a>
                        </li>
                        <li>
                            <a href="#" title="">
                                <div class="progress-title">
                                    WordPress migration
                                    <b>74%</b>
                                </div>
                                <div class="progressbar-smaller progressbar" data-value="74">
                                    <div class="progressbar-value bg-purple"></div>
                                </div>
                            </a>
                        </li>
                        <li>
                            <a href="#" title="">
                                <div class="progress-title">
                                    Agile development procedures
                                    <b>91%</b>
                                </div>
                                <div class="progressbar-smaller progressbar" data-value="91">
                                    <div class="progressbar-value bg-black">
                                        <div class="progressbar-overlay"></div>
                                    </div>
                                </div>
                            </a>
                        </li>
                        <li>
                            <a href="#" title="">
                                <div class="progress-title">
                                    Systems integration
                                    <b>58%</b>
                                </div>
                                <div class="progressbar-smaller progressbar" data-value="58">
                                    <div class="progressbar-value bg-azure"></div>
                                </div>
                            </a>
                        </li>
                        <li>
                            <a href="#" title="">
                                <div class="progress-title">
                                    Code optimizations
                                    <b>97%</b>
                                </div>
                                <div class="progressbar-smaller progressbar" data-value="97">
                                    <div class="progressbar-value bg-yellow"></div>
                                </div>
                            </a>
                        </li>
                    </ul>

                </div>
                <div class="pad5A button-pane button-pane-alt text-center">
                    <a href="#" class="btn display-block font-normal hover-green" title="View all notifications">
                        View all notifications
                    </a>
                </div>

            </div>
        </div>

        <div class="dropdown">
            <a href="#" data-toggle="dropdown" data-placement="left" class="popover-button-header tooltip-button" title="Example menu">
                <span class="bs-badge badge-absolute bg-green">9</span>
                <i class="glyph-icon icon-th"></i>
            </a>
            <div class="dropdown-menu">
                <div class="box-sm">
                    <div class="pad5T pad10B pad10L pad10R dashboard-buttons clearfix">
                        <a href="#" class="btn vertical-button hover-blue-alt" title="">
                                <span class="glyph-icon icon-separator-vertical pad0A medium">
                                    <i class="glyph-icon icon-dashboard opacity-80 font-size-20"></i>
                                </span>
                            Dashboard
                        </a>
                        <a href="#" class="btn vertical-button hover-green" title="">
                                <span class="glyph-icon icon-separator-vertical pad0A medium">
                                    <i class="glyph-icon icon-tags opacity-80 font-size-20"></i>
                                </span>
                            Widgets
                        </a>
                        <a href="#" class="btn vertical-button hover-orange" title="">
                                <span class="glyph-icon icon-separator-vertical pad0A medium">
                                    <i class="glyph-icon icon-fire opacity-80 font-size-20"></i>
                                </span>
                            Tables
                        </a>
                        <a href="#" class="btn vertical-button hover-orange" title="">
                                <span class="glyph-icon icon-separator-vertical pad0A medium">
                                    <i class="glyph-icon icon-bar-chart-o opacity-80 font-size-20"></i>
                                </span>
                            Charts
                        </a>
                        <a href="#" class="btn vertical-button hover-purple" title="">
                                <span class="glyph-icon icon-separator-vertical pad0A medium">
                                    <i class="glyph-icon icon-laptop opacity-80 font-size-20"></i>
                                </span>
                            Buttons
                        </a>
                        <a href="#" class="btn vertical-button hover-azure" title="">
                                <span class="glyph-icon icon-separator-vertical pad0A medium">
                                    <i class="glyph-icon icon-code opacity-80 font-size-20"></i>
                                </span>
                            Panels
                        </a>
                    </div>

                    <div class="bg-gray text-transform-upr font-size-12 font-gray-dark pad10A">Dashboard menu</div>
                    <div class="pad5T pad10B pad10L pad10R dashboard-buttons clearfix">
                        <a href="#" class="btn vertical-button remove-border btn-info" title="">
                                <span class="glyph-icon icon-separator-vertical pad0A medium">
                                    <i class="glyph-icon icon-dashboard opacity-80 font-size-20"></i>
                                </span>
                            Dashboard
                        </a>
                        <a href="#" class="btn vertical-button remove-border btn-danger" title="">
                                <span class="glyph-icon icon-separator-vertical pad0A medium">
                                    <i class="glyph-icon icon-tags opacity-80 font-size-20"></i>
                                </span>
                            Widgets
                        </a>
                        <a href="#" class="btn vertical-button remove-border btn-purple" title="">
                                <span class="glyph-icon icon-separator-vertical pad0A medium">
                                    <i class="glyph-icon icon-fire opacity-80 font-size-20"></i>
                                </span>
                            Tables
                        </a>
                        <a href="#" class="btn vertical-button remove-border btn-azure" title="">
                                <span class="glyph-icon icon-separator-vertical pad0A medium">
                                    <i class="glyph-icon icon-bar-chart-o opacity-80 font-size-20"></i>
                                </span>
                            Charts
                        </a>
                        <a href="#" class="btn vertical-button remove-border btn-yellow" title="">
                                <span class="glyph-icon icon-separator-vertical pad0A medium">
                                    <i class="glyph-icon icon-laptop opacity-80 font-size-20"></i>
                                </span>
                            Buttons
                        </a>
                        <a href="#" class="btn vertical-button remove-border btn-warning" title="">
                                <span class="glyph-icon icon-separator-vertical pad0A medium">
                                    <i class="glyph-icon icon-code opacity-80 font-size-20"></i>
                                </span>
                            Panels
                        </a>
                    </div>
                </div>
            </div>
        </div>

    </div>

    <div id="header-right">
        <div class="user-profile dropdown">
            <a href="#" title="" class="user-ico clearfix" data-toggle="dropdown">
                <img width="36" class="img-rounded" src="${pageContext.request.contextPath}/resources/images/dummy-images/gravatar.jpg" alt="">
                <span>John Applebee</span>
                <i class="glyph-icon icon-chevron-down"></i>
            </a>
            <div class="dropdown-menu pad0B float-right">
                <div class="box-sm">
                    <div class="login-box clearfix">
                        <div class="user-img">
                            <a href="#" title="" class="change-img">Change photo</a>
                            <img src="${pageContext.request.contextPath}/resources/images/dummy-images/gravatar.jpg" alt="">
                        </div>
                        <div class="user-info">
                        <span>
                            Horia Simon
                            <i>Front-end web developer</i>
                        </span>
                            <a href="#" title="">Edit profile</a>
                            <a href="#" title="">View notifications</a>
                        </div>
                    </div>
                    <div class="divider"></div>
                    <ul class="reset-ul mrg5B">
                        <li>
                            <a href="#">
                                View login page example
                                <i class="glyph-icon float-right icon-caret-right"></i>
                            </a>
                        </li>
                        <li>
                            <a href="#">
                                View lockscreen example
                                <i class="glyph-icon float-right icon-caret-right"></i>
                            </a>
                        </li>
                        <li>
                            <a href="#">
                                View account details
                                <i class="glyph-icon float-right icon-caret-right"></i>
                            </a>
                        </li>
                    </ul>
                    <div class="pad5A button-pane button-pane-alt text-center">
                        <a href="#" class="btn display-block font-normal btn-danger">
                            <i class="glyph-icon icon-power-off"></i>
                            Logout
                        </a>
                    </div>
                </div>
            </div>
        </div>

        <div id="page-nav-right">
            <a href="#" title="" class="btn sb-open-right no-shadow updateEasyPieChart">
                <i class="glyph-icon icon-cogs"></i>
                Statistics
            </a>
            <a href="#" title="" class="btn sb-open-left no-shadow updateEasyPieChart">
                <i class="glyph-icon icon-comment"></i>
                Chat
            </a>
        </div>

    </div>

</div>
<!-- #page-header -->

    <div id="page-sidebar" class="rm-transition">
    <div id="page-sidebar-wrapper" >

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
        <li class=class="font-bold text-left"" ><span>Usu&aacute;rios</span></li>
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
</div><!-- #page-sidebar -->

                <div id="page-content-wrapper" class="rm-transition">

                    

                    
<div id="page-content">
    <div class="row">

        <div class="col-md-6">
            <div class="row">
                <div class="col-md-12">
                    <div class="content-box border-top border-green">
                        <h3 class="content-box-header clearfix">
                            Sales statistics
                            <small>(12 July 2014 - 19 October 2014)</small>
                            <span class="btn-group btn-group-sm float-right" data-toggle="buttons">
                                <span class="btn btn-black">
                                    <input type="radio" name="test-toggle-radio">
                                    <i class="glyph-icon icon-edit"></i>
                                </span>
                                <span class="btn btn-black">
                                    <input type="radio" name="test-toggle-radio">
                                    <i class="glyph-icon icon-bar-chart-o"></i>
                                </span>
                            </span>
                        </h3>
                        <div class="content-box-wrapper">
                            <div id="hero-area" style="width: 100%;" class="graph"></div>
                        </div>
                    </div>
                </div>
            </div>

            <ul class="list-group row list-group-icons">

                <li class="col-md-6">
                    <a href="#" class="list-group-item">
                        <i class="glyph-icon font-red icon-bullhorn"></i>
                        Profile
                    </a>
                </li>
                <li class="col-md-6">
                    <a href="#" class="list-group-item">
                        <i class="glyph-icon font-primary icon-camera"></i>
                        Messages
                    </a>
                </li>
            </ul>

            <table class="table mrg25T text-center">
                <tbody>
                <tr>
                    <td class="remove-border">1</td>
                    <td class="remove-border font-bold text-left">John Clark</td>
                    <td class="remove-border text-left"><a href="#" title="">Support</a></td>
                    <td class="remove-border"><div class="bs-label bg-orange">+152</div></td>
                    <td class="remove-border text-right hidden-mobile">
                        <div class="dropdown">
                            <a href="#" title="" class="btn btn-md btn-default" data-toggle="dropdown">
                                    <span class="button-content">
                                        <i class="glyph-icon font-size-11 icon-cog"></i>
                                        <i class="glyph-icon font-size-11 icon-chevron-down"></i>
                                    </span>
                            </a>
                            <ul class="dropdown-menu float-right">

                                <li>
                                    <a href="#" title="">
                                        <i class="glyph-icon icon-edit mrg5R"></i>
                                        Edit
                                    </a>
                                </li>
                                <li>
                                    <a href="#" title="">
                                        <i class="glyph-icon icon-calendar mrg5R"></i>
                                        Schedule
                                    </a>
                                </li>
                                <li>
                                    <a href="#" title="">
                                        <i class="glyph-icon icon-download mrg5R"></i>
                                        Download
                                    </a>
                                </li>
                                <li class="divider"></li>
                                <li>
                                    <a href="#" class="font-red" title="">
                                        <i class="glyph-icon icon-remove mrg5R"></i>
                                        Delete
                                    </a>
                                </li>
                            </ul>
                        </div>
                    </td>
                </tr>
                <tr>
                    <td>2</td>
                    <td class="font-bold text-left">Kenny Davis</td>
                    <td class="text-left"><a href="#" title="">Business management</a></td>
                    <td><div class="bs-label bg-black">+152</div></td>
                    <td class="text-right hidden-mobile">
                        <div class="dropdown">
                            <a href="#" title="" class="btn btn-md btn-default" data-toggle="dropdown">
                                    <span class="button-content">
                                        <i class="glyph-icon font-size-11 icon-cog"></i>
                                        <i class="glyph-icon font-size-11 icon-chevron-down"></i>
                                    </span>
                            </a>
                            <ul class="dropdown-menu float-right">

                                <li>
                                    <a href="#" title="">
                                        <i class="glyph-icon icon-edit mrg5R"></i>
                                        Edit
                                    </a>
                                </li>
                                <li>
                                    <a href="#" title="">
                                        <i class="glyph-icon icon-calendar mrg5R"></i>
                                        Schedule
                                    </a>
                                </li>
                                <li>
                                    <a href="#" title="">
                                        <i class="glyph-icon icon-download mrg5R"></i>
                                        Download
                                    </a>
                                </li>
                                <li class="divider"></li>
                                <li>
                                    <a href="#" class="font-red" title="">
                                        <i class="glyph-icon icon-remove mrg5R"></i>
                                        Delete
                                    </a>
                                </li>
                            </ul>
                        </div>
                    </td>
                </tr>
                <tr>
                    <td>3</td>
                    <td class="font-bold text-left">David Robertson</td>
                    <td class="text-left"><a href="#" title="">Sales</a></td>
                    <td><div class="bs-label bg-green">+191</div></td>
                    <td class="text-right hidden-mobile">
                        <div class="dropdown">
                            <a href="#" title="" class="btn btn-md btn-default" data-toggle="dropdown">
                                    <span class="button-content">
                                        <i class="glyph-icon font-size-11 icon-cog"></i>
                                        <i class="glyph-icon font-size-11 icon-chevron-down"></i>
                                    </span>
                            </a>
                            <ul class="dropdown-menu float-right">

                                <li>
                                    <a href="#" title="">
                                        <i class="glyph-icon icon-edit mrg5R"></i>
                                        Edit
                                    </a>
                                </li>
                                <li>
                                    <a href="#" title="">
                                        <i class="glyph-icon icon-calendar mrg5R"></i>
                                        Schedule
                                    </a>
                                </li>
                                <li>
                                    <a href="#" title="">
                                        <i class="glyph-icon icon-download mrg5R"></i>
                                        Download
                                    </a>
                                </li>
                                <li class="divider"></li>
                                <li>
                                    <a href="#" class="font-red" title="">
                                        <i class="glyph-icon icon-remove mrg5R"></i>
                                        Delete
                                    </a>
                                </li>
                            </ul>
                        </div>
                    </td>
                </tr>
                <tr>
                    <td>4</td>
                    <td class="font-bold text-left">John Doe</td>
                    <td class="text-left"><a href="#" title="">Business</a></td>
                    <td><div class="bs-label bg-red">+483</div></td>
                    <td class="text-right hidden-mobile">
                        <div class="dropdown">
                            <a href="#" title="" class="btn btn-md btn-default" data-toggle="dropdown">
                                    <span class="button-content">
                                        <i class="glyph-icon font-size-11 icon-cog"></i>
                                        <i class="glyph-icon font-size-11 icon-chevron-down"></i>
                                    </span>
                            </a>
                            <ul class="dropdown-menu float-right">

                                <li>
                                    <a href="#" title="">
                                        <i class="glyph-icon icon-edit mrg5R"></i>
                                        Edit
                                    </a>
                                </li>
                                <li>
                                    <a href="#" title="">
                                        <i class="glyph-icon icon-calendar mrg5R"></i>
                                        Schedule
                                    </a>
                                </li>
                                <li>
                                    <a href="#" title="">
                                        <i class="glyph-icon icon-download mrg5R"></i>
                                        Download
                                    </a>
                                </li>
                                <li class="divider"></li>
                                <li>
                                    <a href="#" class="font-red" title="">
                                        <i class="glyph-icon icon-remove mrg5R"></i>
                                        Delete
                                    </a>
                                </li>
                            </ul>
                        </div>
                    </td>
                </tr>
                </tbody>
            </table>

            <div class="profile-box profile-box-alt mrg25T content-box">
                <div class="content-box-header clearfix bg-black">
                    <div class="corner-ribbon corner-ribbon-tr">
                        <a href="#" class="btn-success tooltip-button" title="" data-original-title="Example ribbon">
                            <i class="glyph-icon icon-comment-o"></i>
                        </a>
                    </div>
                    <div class="user-details">
                        There have been <b>134</b> sales
                        <span>January 2014 - December 2014</span>
                    </div>
                </div>
                <div class="pie-wrapper">
                    <div class="pie-sparkline-alt">5,2,3</div>
                </div>

                <table class="table mrg0B">
                    <tbody>
                    <tr>
                        <td class="text-left size-sm">
                            <div class="badge badge-small mrg5R bg-azure"></div>
                            New user registrations
                        </td>
                        <td class="text-right">
                            <a href="#" class="btn btn-sm hover-yellow tooltip-button" data-placement="top" title="" data-original-title="Flag">
                                <i class="glyph-icon icon-flag"></i>
                            </a>
                            <a href="#" class="btn btn-sm hover-blue-alt tooltip-button" data-placement="top" title="" data-original-title="Edit">
                                <i class="glyph-icon icon-edit"></i>
                            </a>
                            <a href="#" class="btn btn-sm hover-red tooltip-button" data-placement="top" title="" data-original-title="Remove">
                                <i class="glyph-icon icon-remove"></i>
                            </a>
                        </td>
                    </tr>
                    <tr>
                        <td class="text-left size-sm">
                            <div class="badge badge-small mrg5R bg-orange"></div>
                            Returning visitors
                        </td>
                        <td class="text-right">
                            <a href="#" class="btn btn-sm hover-yellow tooltip-button" data-placement="top" title="" data-original-title="Flag">
                                <i class="glyph-icon icon-flag"></i>
                            </a>
                            <a href="#" class="btn btn-sm hover-blue-alt tooltip-button" data-placement="top" title="" data-original-title="Edit">
                                <i class="glyph-icon icon-edit"></i>
                            </a>
                            <a href="#" class="btn btn-sm hover-red tooltip-button" data-placement="top" title="" data-original-title="Remove">
                                <i class="glyph-icon icon-remove"></i>
                            </a>
                        </td>
                    </tr>
                    <tr>
                        <td class="text-left size-sm">
                            <div class="badge badge-small mrg5R bg-gray"></div>
                            Page views
                        </td>
                        <td class="text-right">
                            <a href="#" class="btn btn-sm hover-yellow tooltip-button" data-placement="top" title="" data-original-title="Flag">
                                <i class="glyph-icon icon-flag"></i>
                            </a>
                            <a href="#" class="btn btn-sm hover-blue-alt tooltip-button" data-placement="top" title="" data-original-title="Edit">
                                <i class="glyph-icon icon-edit"></i>
                            </a>
                            <a href="#" class="btn btn-sm hover-red tooltip-button" data-placement="top" title="" data-original-title="Remove">
                                <i class="glyph-icon icon-remove"></i>
                            </a>
                        </td>
                    </tr>
                    </tbody>
                </table>
            </div>

            <div class="content-box">
                <h3 class="content-box-header content-box-header-alt bg-default">
                <span class="icon-separator">
                    <i class="glyph-icon icon-cog"></i>
                </span>
                    <span class="header-wrapper">
                        Content title
                        <small>Example header title description</small>
                    </span>
                    <span class="header-buttons">
                        <a href="#" class="btn btn-xs btn-link font-red" title=""><i class="glyph-icon icon-bar-chart-o font-size-14 opacity-hover"></i></a>
                        <a href="#" class="btn btn-xs btn-link font-green" title=""><i class="glyph-icon icon-bullhorn font-size-14 opacity-hover"></i></a>
                        <a href="#" class="btn btn-xs btn-link font-blue" title=""><i class="glyph-icon icon-bell-o font-size-14 opacity-hover"></i></a>
                    </span>
                </h3>
                <div class="content-box-wrapper">
                    This content boxes has the header with <code>.bg-default</code> class.
                </div>
            </div>

        </div>

        <div class="col-md-6">

            <div class="row">
                <div class="col-md-12">
                    <div class="panel-layout">
                        <div class="panel-box col-xs-3 bg-default">
                            <div class="panel-content">
                                <h4>Sales</h4>
                                <p class="opacity-60">Last month revenue</p>
                            </div>
                        </div>
                        <div class="panel-box col-xs-8">

                            <div class="panel-content bg-black">
                                <div class="sparkline-big">1,5,3,2,6,8,5,3,2,5,3,2,1,3</div>
                            </div>
                            <div class="panel-content bg-white">
                                <div class="center-vertical">

                                    <ul class="center-content nav nav-justified">
                                        <li>
                                            <h4 class="font-green">+$39,45</h4>
                                            <p class="font-gray">Overdue orders</p>
                                        </li>
                                        <li>
                                            <h4>
                                                <i class="glyph-icon opacity-60 icon-caret-up"></i>
                                                217
                                            </h4>
                                            <p class="font-gray">Pending orders</p>
                                        </li>
                                    </ul>

                                </div>
                            </div>

                        </div>
                    </div>
                </div>
            </div>

            <div class="row">
                <div class="col-md-4">
                    <div class="content-box bg-blue">
                        <div class="content-box-wrapper">
                            <div class="chart-home" data-percent="55">
                                <span>55</span>%
                            </div>
                            <div class="text-center pad10T font-size-13 font-white opacity-80 text-transform-upr">New visits</div>
                        </div>
                    </div>
                </div>
                <div class="col-md-4">
                    <div class="content-box bg-orange">
                        <div class="content-box-wrapper">
                            <div class="chart-home" data-percent="46">
                                <span>46</span>%
                            </div>
                            <div class="text-center pad10T font-size-13 font-white opacity-80 text-transform-upr">Bounce rate</div>
                        </div>
                    </div>
                </div>
                <div class="col-md-4">
                    <div class="content-box bg-green">
                        <div class="content-box-wrapper">
                            <div class="chart-home" data-percent="92">
                                <span>92</span>%
                            </div>
                            <div class="text-center pad10T font-size-13 font-white opacity-80 text-transform-upr">Server load</div>
                        </div>
                    </div>
                </div>
            </div>

            <div class="content-box bg-white post-box">
                <textarea name="" class="textarea-autosize" placeholder="What are you doing right now?"></textarea>
                <div class="button-pane">
                    <a href="#" class="btn btn-md btn-link hover-white" title="">
                        <i class="glyph-icon icon-volume-down"></i>
                    </a>
                    <a href="#" class="btn btn-md btn-link hover-white" title="">
                        <i class="glyph-icon icon-video-camera"></i>
                    </a>
                    <a href="#" class="btn btn-md btn-link hover-white" title="">
                        <i class="glyph-icon icon-microphone"></i>
                    </a>
                    <a href="#" class="btn btn-md btn-link hover-white" title="">
                        <i class="glyph-icon icon-picture-o"></i>
                    </a>

                    <a href="#" class="btn btn-md btn-post float-right btn-success" title="">
                        Share it!
                    </a>

                </div>
            </div>

            <div class="profile-box content-box remove-border">
                <div class="content-box-header clearfix bg-default">
                    <img width="46" class="img-bordered border-gray img-circle" src="${pageContext.request.contextPath}/resources/images/dummy-images/gravatar.jpg" alt="">
                    <div class="user-details">
                        John Applebee
                        <span>Front-end web developer and designer</span>
                    </div>

                    <div class="clear pad10T">
                        <ul class="nav nav-pills nav-justified">
                            <li>
                                <a href="#" class="btn btn-sm bg-google">
                                    <span class="glyph-icon icon-separator">
                                        <i class="glyph-icon icon-google-plus"></i>
                                    </span>
                                    <span class="button-content">
                                        Google+
                                    </span>
                                </a>
                            </li>
                            <li>
                                <a href="#" class="btn btn-sm bg-facebook">
                                    <span class="glyph-icon icon-separator">
                                        <i class="glyph-icon icon-facebook"></i>
                                    </span>
                                    <span class="button-content">
                                        Facebook
                                    </span>
                                </a>
                            </li>
                            <li>
                                <a href="#" class="btn btn-sm bg-twitter">
                                    <span class="glyph-icon icon-separator">
                                        <i class="glyph-icon icon-twitter"></i>
                                    </span>
                                    <span class="button-content">
                                        Twitter
                                    </span>
                                </a>
                            </li>
                        </ul>
                    </div>

                </div>
            </div>
        </div>

    </div>

    <!-- Morris charts -->

    <script type="text/javascript" src="${pageContext.request.contextPath}/resources/js/raphael.js"></script>
    <!--<link rel="stylesheet" type="text/css" href="assets-minified/widgets/charts/morris/morris.css">-->
    <script type="text/javascript" src="${pageContext.request.contextPath}/resources/js/morris.js"></script>


    <script type="text/javascript">

        $(function () {

            Morris.Area({
                element: 'hero-area',
                data: [
                    { y: '2006', a: 90, b: 76 },
                    { y: '2007', a: 75,  b: 65 },
                    { y: '2008', a: 50,  b: 40 },
                    { y: '2009', a: 75,  b: 65 },
                    { y: '2010', a: 50,  b: 40 },
                    { y: '2011', a: 75,  b: 65 },
                    { y: '2012', a: 25, b: 20 }
                ],
                xkey: 'y',
                ykeys: ['a', 'b'],
                labels: ['Series A', 'Series B'],
                pointSize: 4,
                hideHover: 'auto',
                fillOpacity: 0.03,
                lineColors: ['#768294','#0084ff']
            });
        });

    </script>

</div><!-- #page-content -->

                </div><!-- #page-content-wrapper -->
            </div><!-- #page-wrapper -->

        </div><!-- #sb-site -->

<div class="sb-slidebar sb-right sb-style-overlay">
<div class="scrollable-content scrollable-nice">
<div class="pad15A">
<a href="#" title="" data-toggle="collapse" data-target="#sidebar-toggle-1" class="popover-title">
    Cloud status
    <span class="caret"></span>
</a>
<div id="sidebar-toggle-1" class="collapse in">
    <div class="pad15A">
        <div class="row">
            <div class="col-md-4">
                <div class="text-center font-gray pad5B text-transform-upr font-size-12">New visits</div>
                <div class="chart-alt-3 font-gray-dark" data-percent="55"><span>55</span>%</div>
            </div>
            <div class="col-md-4">
                <div class="text-center font-gray pad5B text-transform-upr font-size-12">Bounce rate</div>
                <div class="chart-alt-3 font-gray-dark" data-percent="46"><span>46</span>%</div>
            </div>
            <div class="col-md-4">
                <div class="text-center font-gray pad5B text-transform-upr font-size-12">Server load</div>
                <div class="chart-alt-3 font-gray-dark" data-percent="92"><span>92</span>%</div>
            </div>
        </div>
        <div class="divider mrg15T mrg15B"></div>
        <div class="text-center">
            <a href="#" class="btn center-div btn-info mrg5T btn-sm text-transform-upr updateEasyPieChart">
                <i class="glyph-icon icon-refresh"></i>
                Update charts
            </a>
        </div>
    </div>
</div>

<div class="clear"></div>

<a href="#" title="" data-toggle="collapse" data-target="#sidebar-toggle-6" class="popover-title">
    Latest transfers
    <span class="caret"></span>
</a>
<div id="sidebar-toggle-6" class="collapse in">

    <ul class="files-box">
        <li>
            <i class="files-icon glyph-icon font-red icon-file-archive-o"></i>
            <div class="files-content">
                <b>blog_export.zip</b>
                <div class="files-date">
                    <i class="glyph-icon icon-clock-o"></i>
                    added on <b>22.10.2014</b>
                </div>
            </div>
            <div class="files-buttons">
                <a href="#" class="btn btn-xs hover-info tooltip-button" data-placement="right" title="Download">
                    <i class="glyph-icon icon-cloud-download"></i>
                </a>
                <a href="#" class="btn btn-xs hover-danger tooltip-button" data-placement="right" title="Delete">
                    <i class="glyph-icon icon-times"></i>
                </a>
            </div>
        </li>
        <li class="divider"></li>
        <li>
            <i class="files-icon glyph-icon icon-file-code-o"></i>
            <div class="files-content">
                <b>homepage-test.html</b>
                <div class="files-date">
                    <i class="glyph-icon icon-clock-o"></i>
                    added  <b>19.10.2014</b>
                </div>
            </div>
            <div class="files-buttons">
                <a href="#" class="btn btn-xs hover-info tooltip-button" data-placement="right" title="Download">
                    <i class="glyph-icon icon-cloud-download"></i>
                </a>
                <a href="#" class="btn btn-xs hover-danger tooltip-button" data-placement="right" title="Delete">
                    <i class="glyph-icon icon-times"></i>
                </a>
            </div>
        </li>
        <li class="divider"></li>
        <li>
            <i class="files-icon glyph-icon font-yellow icon-file-image-o"></i>
            <div class="files-content">
                <b>monthlyReport.jpg</b>
                <div class="files-date">
                    <i class="glyph-icon icon-clock-o"></i>
                    added on <b>10.9.2014</b>
                </div>
            </div>
            <div class="files-buttons">
                <a href="#" class="btn btn-xs hover-info tooltip-button" data-placement="right" title="Download">
                    <i class="glyph-icon icon-cloud-download"></i>
                </a>
                <a href="#" class="btn btn-xs hover-danger tooltip-button" data-placement="right" title="Delete">
                    <i class="glyph-icon icon-times"></i>
                </a>
            </div>
        </li>
        <li class="divider"></li>
        <li>
            <i class="files-icon glyph-icon font-green icon-file-word-o"></i>
            <div class="files-content">
                <b>new_presentation.doc</b>
                <div class="files-date">
                    <i class="glyph-icon icon-clock-o"></i>
                    added on <b>5.9.2014</b>
                </div>
            </div>
            <div class="files-buttons">
                <a href="#" class="btn btn-xs hover-info tooltip-button" data-placement="right" title="Download">
                    <i class="glyph-icon icon-cloud-download"></i>
                </a>
                <a href="#" class="btn btn-xs hover-danger tooltip-button" data-placement="right" title="Delete">
                    <i class="glyph-icon icon-times"></i>
                </a>
            </div>
        </li>
    </ul>

</div>

<div class="clear"></div>

<a href="#" title="" data-toggle="collapse" data-target="#sidebar-toggle-3" class="popover-title">
    Tasks for today
    <span class="caret"></span>
</a>
<div id="sidebar-toggle-3" class="collapse in">

    <ul class="progress-box">
        <li>
            <div class="progress-title">
                New features development
                <b>87%</b>
            </div>
            <div class="progressbar-smaller progressbar" data-value="87">
                <div class="progressbar-value bg-azure">
                    <div class="progressbar-overlay"></div>
                </div>
            </div>
        </li>
        <li>
            <div class="progress-title">
                Finishing uploading files
                <b>66%</b>
            </div>
            <div class="progressbar-smaller progressbar" data-value="66">
                <div class="progressbar-value bg-red">
                    <div class="progressbar-overlay"></div>
                </div>
            </div>
        </li>
        <li>
            <div class="progress-title">
                Creating tutorials
                <b>58%</b>
            </div>
            <div class="progressbar-smaller progressbar" data-value="58">
                <div class="progressbar-value bg-blue-alt"></div>
            </div>
        </li>
        <li>
            <div class="progress-title">
                Frontend bonus theme
                <b>74%</b>
            </div>
            <div class="progressbar-smaller progressbar" data-value="74">
                <div class="progressbar-value bg-purple"></div>
            </div>
        </li>
    </ul>

</div>

<div class="clear"></div>

<a href="#" title="" data-toggle="collapse" data-target="#sidebar-toggle-4" class="popover-title">
    Pending notifications
    <span class="bs-label bg-orange tooltip-button" title="Label example">New</span>
    <span class="caret"></span>
</a>
<div id="sidebar-toggle-4" class="collapse in">
    <ul class="notifications-box notifications-box-alt">
        <li>
            <span class="bg-purple icon-notification glyph-icon icon-users"></span>
            <span class="notification-text">This is an error notification</span>
            <div class="notification-time">
                a few seconds ago
                <span class="glyph-icon icon-clock-o"></span>
            </div>
            <a href="#" class="notification-btn btn btn-xs btn-black tooltip-button" data-placement="right" title="View details">
                <i class="glyph-icon icon-arrow-right"></i>
            </a>
        </li>
        <li>
            <span class="bg-warning icon-notification glyph-icon icon-ticket"></span>
            <span class="notification-text">This is a warning notification</span>
            <div class="notification-time">
                <b>15</b> minutes ago
                <span class="glyph-icon icon-clock-o"></span>
            </div>
            <a href="#" class="notification-btn btn btn-xs btn-black tooltip-button" data-placement="right" title="View details">
                <i class="glyph-icon icon-arrow-right"></i>
            </a>
        </li>
        <li>
            <span class="bg-green icon-notification glyph-icon icon-random"></span>
            <span class="notification-text font-green">A success message example.</span>
            <div class="notification-time">
                <b>2 hours</b> ago
                <span class="glyph-icon icon-clock-o"></span>
            </div>
            <a href="#" class="notification-btn btn btn-xs btn-black tooltip-button" data-placement="right" title="View details">
                <i class="glyph-icon icon-arrow-right"></i>
            </a>
        </li>
    </ul>
</div>
</div>
</div>
</div>



    

    <script type="text/javascript" src="${pageContext.request.contextPath}/resources/js/all-demo.js"></script>





</body>
</html>