<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html lang="en">
<head>
<meta charset="utf-8">
<meta http-equiv="X-UA-Compatible" content="IE=edge">
<meta name="viewport"
	content="width=device-width,initial-scale=1,user-scalable=0,minimal-ui">
<title>Login</title>
<meta content="Admin Dashboard" name="description">
<meta content="themesdesign" name="author">
<meta http-equiv="X-UA-Compatible" content="IE=edge">
<link rel="shortcut icon" href="adminResources/image/favicon.ico">
<link href="adminResources/css/bootstrap.min.css" rel="stylesheet"
	type="text/css">
<link href="adminResources/css/animate.css" rel="stylesheet"
	type="text/css">
<link href="adminResources/css/icons.css" rel="stylesheet"
	type="text/css">
<link href="adminResources/css/style.css" rel="stylesheet"
	type="text/css">

<link rel="stylesheet" href="adminResources/css/jquery.toast.min.css">
</head>
<body class="fixed-left">
	<!-- Begin page -->
	<!--<div class="accountbg"></div>-->
	<div id="stars"></div>
	<div id="stars2"></div>
	<div class="wrapper-page">
		<div class="card">
			<div class="card-body">
				<h3 class="text-center mt-0">
					<a href="/" class="logo logo-admin"><img
						src="adminResources/image/logo_1.jpg" height="100" width="240" alt="logo"></a>
				</h3>
				<h6 class="text-center">Sign In</h6>
				<div class="p-3">
					<%@taglib prefix="c" uri="http://java.sun.com/jstl/core_rt"%>
					<form onsubmit="return validateTableDetais()"
						class="form-horizontal" action="j_spring_security_check"
						method="post">


						<c:if test="${sucessMessage != '' && sucessMessage2 != ''}">

							<span style="color: green;"><h6 class="text-center">
									<b><c:out value="${sucessMessage }">
										</c:out> <br> <br> <c:out value="${sucessMessage2 }">
										</c:out> </b>

								</h6> </span>
						</c:if>

						<c:if test="${sucessMessage != '' && sucessMessage2 == '' }">

							<span style="color: green;"><h6 class="text-center">
									<b><c:out value="${sucessMessage }">
										</c:out> </b>

								</h6> </span>
						</c:if>




						<div class="form-group row">
							<div class="col-12">
								<input class="form-control" required="required" type="text"
									name="username" id="username" placeholder="Username">
							</div>
						</div>
						<div class="form-group row">
							<div class="col-12">
								<input class="form-control" type="password" name="password"
									placeholder="Password">
							</div>
						</div>



						<div class="form-group text-center row m-t-20">
							<div class="col-12">
								<button
									class="btn btn-danger btn-block waves-effect waves-light"
									type="submit">Log In</button>
							</div>
						</div>
						<div class="form-group m-t-10 mb-0 row">
							<div class="col-sm-7 m-t-20">
								<a href="passwordRecovery" class="text-muted"><i
									class="mdi mdi-lock"></i> Forgot your password ?</a>
							</div>
							<div class="col-sm-5 m-t-20">
								<a href="register" class="text-muted"><i
									class="mdi mdi-account-circle"></i> Create an account ?</a>
							</div>
						</div>
					</form>

				</div>
			</div>
		</div>
	</div>
	<!-- jQuery  -->
	<script src="adminResources/js/jquery.min.js"></script>
	<script src="adminResources/js/popper.min.js"></script>
	<script src="adminResources/js/bootstrap.min.js"></script>
	<script src="adminResources/js/modernizr.min.js"></script>
	<script src="adminResources/js/detect.js"></script>
	<script src="adminResources/js/fastclick.js"></script>
	<script src="adminResources/js/jquery.slimscroll.js"></script>
	<script src="adminResources/js/jquery.blockUI.js"></script>
	<script src="adminResources/js/waves.js"></script>
	<script src="adminResources/js/jquery.nicescroll.js"></script>
	<script src="adminResources/js/jquery.scrollTo.min.js"></script>
	<!-- App js -->
	<script src="adminResources/js/app.js"></script>


	<script
		src="<%=request.getContextPath()%>/adminResources/js/jquery.toast.min.js"></script>
	<script
		src="<%=request.getContextPath()%>/adminResources/js/toastDemo.js"></script>


	<script
		src="<%=request.getContextPath()%>/adminResources/js/custom/toaster.js"></script>


	<script
		src="<%=request.getContextPath()%>/adminResources/js/custom/LoginValidation.js"></script>
</body>
</html>