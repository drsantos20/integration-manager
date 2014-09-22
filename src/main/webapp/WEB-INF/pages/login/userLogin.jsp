<!DOCTYPE html> 
<html lang="en">
<head> 

    <meta charset="UTF-8">
<!--[if IE]><meta http-equiv='X-UA-Compatible' content='IE=edge,chrome=1'><![endif]-->
<title> Login page 1 </title>
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

<script type="text/javascript">
    $(function() { "use strict";
        $('.alert-close-btn').click(function(){
            $(this).parent().addClass('animated fadeOutDown');
        });
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

	<div class="center-vertical">
    <div class="center-content">

        <form action="loginValidation" id="login-validation" class="col-md-4 center-margin" method="">
            <h3 class="text-center pad25B font-gray text-transform-upr font-size-23">eMED-WEB <span class="opacity-80">v1.0</span></h3>
            <div id="login-form" class="content-box modal-content">
                <div class="content-box-wrapper pad20A">

                    <div class="form-group">
                        <label for="exampleInputEmail1">Email:</label>
                        <div class="input-group input-group-lg">
                            <span class="input-group-addon addon-inside bg-white font-primary">
                                <i class="glyph-icon icon-envelope-o"></i>
                            </span>
                            <input type="email" class="form-control" id="exampleInputEmail1" placeholder="Enter email">
                        </div>
                    </div>
                    <div class="form-group">
                        <label for="exampleInputPassword1">Senha:</label>
                        <div class="input-group input-group-lg">
                            <span class="input-group-addon addon-inside bg-white font-primary">
                                <i class="glyph-icon icon-unlock-alt"></i>
                            </span>
                            <input type="password" class="form-control" id="exampleInputPassword1" placeholder="Password">
                        </div>
                    </div>
                    <div class="row">
                        <div class="checkbox-primary col-md-6" style="height: 20px;">
                            <label>
                                <input type="checkbox" id="loginCheckbox1" class="custom-checkbox">
                                Remember me
                            </label>
                        </div>
                        <div class="text-right col-md-6">
                            <a href="#" class="switch-button" switch-target="#login-forgot" switch-parent="#login-form" title="Recover password">Forgot your password?</a>
                        </div>
                    </div>
                </div>
                <div class="button-pane">
                    <button type="submit" class="btn btn-block btn-primary">Login</button>
                </div>
            </div>

            <div id="login-forgot" class="content-box modal-content hide">
                <div class="content-box-wrapper pad20A">

                    <div class="form-group">
                        <label for="exampleInputEmail1">Email address:</label>
                        <div class="input-group">
                            <span class="input-group-addon addon-inside bg-gray">
                                <i class="glyph-icon icon-envelope-o"></i>
                            </span>
                            <input type="email" class="form-control" id="exampleInputEmail1" placeholder="Enter email">
                        </div>
                    </div>
                </div>
                <div class="button-pane text-center">
                    <button type="submit" class="btn btn-md btn-primary">Recover Password</button>
                    <a href="#" class="btn btn-md btn-link switch-button" switch-target="#login-form" switch-parent="#login-forgot" title="Cancel">Cancel</a>
                </div>
            </div>

        </form>

    </div>
</div>

    <script type="text/javascript" src="${pageContext.request.contextPath}/resources/js/all-demo.js"></script>
        
    </body>
</html>
