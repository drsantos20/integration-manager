<html lang="en">
   <%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
   <head>
      <meta charset="UTF-8">
      <!--[if IE]>
      <meta http-equiv='X-UA-Compatible' content='IE=edge,chrome=1'>
      <![endif]-->
      <title> Server response 4 </title>
      <meta name="description" content="">
      <meta name="viewport" content="width=device-width, initial-scale=1.0, maximum-scale=1.0, user-scalable=no">
      <!-- Favicons -->
      <link rel="apple-touch-icon-precomposed" sizes="144x144" href="assets/images/icons/apple-touch-icon-144-precomposed.png">
      <link rel="apple-touch-icon-precomposed" sizes="114x114" href="assets/images/icons/apple-touch-icon-114-precomposed.png">
      <link rel="apple-touch-icon-precomposed" sizes="72x72" href="assets/images/icons/apple-touch-icon-72-precomposed.png">
      <link rel="apple-touch-icon-precomposed" href="assets/images/icons/apple-touch-icon-57-precomposed.png">
      <link rel="shortcut icon" href="assets/images/icons/favicon.png">
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
      <div id="loading"><img src="${pageContext.request.contextPath}/resources/images/spinner/loader-dark.gif" alt="Loading..."></div>
      <style>
         .page-box {
         min-height: 200px;
         }
         .page-box .server-message {
         padding: 35px 0;
         }
      </style>
      <style type="text/css">
         body {
         overflow: hidden;
         }
      </style>
      <script type="text/javascript" src="${pageContext.request.contextPath}/resources/js/wow.js"></script>
      <script type="text/javascript">
         /* WOW animations */
         
         wow = new WOW({
             animateClass: 'animated',
             offset: 100
         });
         wow.init();
      </script>
      <div id="page-content">
         <div class="page-box">
            <div class="center-vertical">
               <div class="center-content">
                  <div class="col-md-6 wow bounceInDown center-margin">
                     <div class="server-message">
                        <h1>HTTP 403 - Acesso Negado</h1>
                        <c:choose>
                           <c:when test="${empty username}">
                              <h2>Você não tem permissão para acessar essa página!</h2>
                           </c:when>
                           <c:otherwise>
                              <h2>
                                 Usuário : ${username} <br />Você não tem permissão para acessar essa página
                              </h2>
                           </c:otherwise>
                        </c:choose>
                     </div>
                  </div>
               </div>
            </div>
         </div>
      </div>
      <script type="text/javascript" src="${pageContext.request.contextPath}/resources/js/all-demo.js"></script>
   </body>
</html>