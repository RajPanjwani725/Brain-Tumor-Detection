<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="utf-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width,initial-scale=1,user-scalable=0,minimal-ui">
    <title>Admin |  Login</title>
    <meta content="Admin Dashboard" name="description">
    <meta content="themesdesign" name="author">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <link rel="shortcut icon" href="<%=request.getContextPath()%>/adminResources/image/favicon.ico">
    <link href="<%=request.getContextPath()%>/adminResources/css/bootstrap.min.css" rel="stylesheet" type="text/css">
    <link href="<%=request.getContextPath()%>/adminResources/css/animate.css" rel="stylesheet" type="text/css">
    <link href="<%=request.getContextPath()%>/adminResources/css/icons.css" rel="stylesheet" type="text/css">
    <link href="<%=request.getContextPath()%>/adminResources/css/style.css" rel="stylesheet" type="text/css">
</head>
<body class="fixed-left"><!-- Begin page --><!--<div class="accountbg"></div>-->
<div id="stars"></div>
<div id="stars2"></div>
<div class="wrapper-page">
    <div class="card">
        <div class="card-body"><h3 class="text-center mt-0"><a href="index.html" class="logo logo-admin"><img
                src="<%=request.getContextPath()%>/adminResources/image/logo.png" height="20" alt="logo"></a></h3><h6 class="text-center">Sign In</h6>
            <div class="p-3">
                <form class="form-horizontal" action="index.html">
                    <div class="form-group row">
                        <div class="col-12"><input class="form-control" type="text" required="" placeholder="Username">
                        </div>
                    </div>
                    <div class="form-group row">
                        <div class="col-12"><input class="form-control" type="password" required=""
                                                   placeholder="Password"></div>
                    </div>
                    <div class="form-group row">
                        <div class="col-12">
                            <div class="custom-control custom-checkbox"><input type="checkbox"
                                                                               class="custom-control-input"
                                                                               id="customCheck1"> <label
                                    class="custom-control-label" for="customCheck1">Remember me</label></div>
                        </div>
                    </div>
                    <div class="form-group text-center row m-t-20">
                        <div class="col-12">
                            <button class="btn btn-danger btn-block waves-effect waves-light" type="submit">Log In
                            </button>
                        </div>
                    </div>
                    <div class="form-group m-t-10 mb-0 row">
                        <div class="col-sm-7 m-t-20"><a href="./passwordRecover.jsp" class="text-muted"><i
                                class="mdi mdi-lock"></i> Forgot your password ?</a></div>
                        <div class="col-sm-5 m-t-20"><a href="./register.jsp" class="text-muted"><i
                                class="mdi mdi-account-circle"></i> Create an account ?</a></div>
                    </div>
                </form>
            </div>
        </div>
    </div>
</div><!-- jQuery  -->
<script src="<%=request.getContextPath()%>/adminResources/js/jquery.min.js"></script>
<script src="<%=request.getContextPath()%>/adminResources/js/popper.min.js"></script>
<script src="<%=request.getContextPath()%>/adminResources/js/bootstrap.min.js"></script>
<script src="<%=request.getContextPath()%>/adminResources/js/modernizr.min.js"></script>
<script src="<%=request.getContextPath()%>/adminResources/js/detect.js"></script>
<script src="<%=request.getContextPath()%>/adminResources/js/fastclick.js"></script>
<script src="<%=request.getContextPath()%>/adminResources/js/jquery.slimscroll.js"></script>
<script src="<%=request.getContextPath()%>/adminResources/js/jquery.blockUI.js"></script>
<script src="<%=request.getContextPath()%>/adminResources/js/waves.js"></script>
<script src="<%=request.getContextPath()%>/adminResources/js/jquery.nicescroll.js"></script>
<script src="<%=request.getContextPath()%>/adminResources/js/jquery.scrollTo.min.js"></script><!-- App js -->
<script src="<%=request.getContextPath()%>/adminResources/js/app.js"></script>
</body>
</html>