<!DOCTYPE html> 
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<html lang="en">
   <head>
      <meta charset="UTF-8">
      <!--[if IE]>
      <meta http-equiv='X-UA-Compatible' content='IE=edge,chrome=1'>
      <![endif]-->
      <title> E-GERENCIADOR </title>
      <meta name="description" content="">
      <meta name="viewport" content="width=device-width, initial-scale=1.0, maximum-scale=1.0, user-scalable=no">
      <!-- Favicons -->
      <link rel="apple-touch-icon-precomposed" sizes="144x144" href="${pageContext.request.contextPath}/resources/images/icons/apple-touch-icon-144-precomposed.png">
      <link rel="apple-touch-icon-precomposed" sizes="114x114" href="${pageContext.request.contextPath}/resources/images/icons/apple-touch-icon-114-precomposed.png">
      <link rel="apple-touch-icon-precomposed" sizes="72x72" href="${pageContext.request.contextPath}/resources/images/icons/apple-touch-icon-72-precomposed.png">
      <link rel="apple-touch-icon-precomposed" href="${pageContext.request.contextPath}/resources/images/icons/apple-touch-icon-57-precomposed.png">
      <link rel="shortcut icon" href="${pageContext.request.contextPath}/resources/images/icons/favicon.png">
      <link rel="apple-touch-icon-precomposed" sizes="144x144" href="${pageContext.request.contextPath}/resources/images/icons/apple-touch-icon-144-precomposed.png">
      <link rel="apple-touch-icon-precomposed" sizes="114x114" href="${pageContext.request.contextPath}/resources/images/icons/apple-touch-icon-114-precomposed.png">
      <link rel="apple-touch-icon-precomposed" sizes="72x72" href="${pageContext.request.contextPath}/resources/images/icons/apple-touch-icon-72-precomposed.png">
      <link rel="apple-touch-icon-precomposed" href="${pageContext.request.contextPath}/resources/images/icons/apple-touch-icon-57-precomposed.png">
      <link rel="shortcut icon" href="${pageContext.request.contextPath}/resources/images/icons/favicon.png">
      <script type="text/javascript" src="${pageContext.request.contextPath}/resources/js/js-core.js"></script>
      <link rel="stylesheet" type="text/css" href="${pageContext.request.contextPath}/resources/css/all-demo.css">
      <script type="text/javascript" src="${pageContext.request.contextPath}/resources/js/all-demo.js"></script>
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
      <meta http-equiv="Content-Type" content="text/html; charset=UTF-8"/>
   </head>
   <body>
      <div id="loading"><img src="${pageContext.request.contextPath}/resources/images/spinner/loader-dark.gif" alt="Loading..."></div>
      <div id="sb-site">
      <div id="page-wrapper">
      <div id="page-header" class="clearfix">
<!--          <div id="header-logo" class="rm-transition"> -->
<!--             <a href="#" class="tooltip-button hidden-desktop" title="Navigation Menu" id="responsive-open-menu"> -->
<!--             <i class="glyph-icon icon-align-justify"></i> -->
<!--             </a> -->
<!--             <div class="pad5A font-blue-alt">SGM WEB V1.0</div> -->
<!--             <a id="collapse-sidebar" href="#" title=""> -->
<!--             <i class="glyph-icon icon-chevron-left"></i> -->
<!--             </a> -->
<!--          </div> -->
         <!-- #header-logo -->
         <div id="header-left">
            <div class="dropdown">
               <a href="#" data-toggle="dropdown" data-placement="left" class="popover-button-header tooltip-button" title="Example menu">
               <i class="glyph-icon icon-th font-blue-alt"></i>
               </a>
               <div class="dropdown-menu">
                  <div class="box-sm">
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
               <img width="36" class="img-rounded" src="${pageContext.request.contextPath}/resources/images/userSession.png" alt="">
               <span>${username}</span>
               <i class="glyph-icon icon-chevron-down"></i>
               </a>
               <div class="dropdown-menu pad0B float-right">
                  <div class="box-sm">
                     <div class="login-box clearfix">
                        <div class="user-img">
                           <a href="#" title="" class="change-img">Change photo</a>
                           <img src="${pageContext.request.contextPath}/resources/images/userSession.png" alt="">
                        </div>
                        <div class="user-info">
                           <span>
                           Administrador
                           </span>
                           <a href="#" title="">Editar perfil</a>
                           <a href="#" title="">Ver Notificações</a>
                        </div>
                     </div>
                     <div class="divider"></div>
                     <ul class="reset-ul mrg5B">
                        <li>
                           <a href="#">
                           Ver Detalhes da Conta
                           <i class="glyph-icon float-right icon-caret-right"></i>
                           </a>
                        </li>
                     </ul>
                     <div class="pad5A button-pane button-pane-alt text-center">
                        <a href="logout" class="btn display-block font-normal btn-danger">
                        <i class="glyph-icon icon-power-off"></i>
                        Logout
                        </a>
                     </div>
                  </div>
               </div>
            </div>
            <div id="page-nav-right">
               <a href="#" title="" class="btn sb-open-left no-shadow updateEasyPieChart">
               <i class="glyph-icon icon-comment pad5A font-blue-alt"></i>Suporte</a>
            </div>
         </div>
      </div>
      <div id="page-nav">

    <ul id="page-subnav">
        <li>
            <a href="index.html">Home</a>
        </li>
        <li>
            <a href="dashboard_panels.html">Panels</a>
        </li>
        <li>
            <a href="tables.html">Tables</a>
        </li>
        <li>
            <a href="forms.html">Forms</a>
        </li>
        <li>
            <a href="charts.html">Charts</a>
        </li>
        <li>
            <a href="content_boxes.html">Boxes</a>
        </li>
    </ul>

</div>
      </div>
      </div>
   </body>
</html>