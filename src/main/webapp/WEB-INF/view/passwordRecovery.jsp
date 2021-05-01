<!DOCTYPE html>
<html lang="en">
<head>
<meta charset="utf-8">
<meta http-equiv="X-UA-Compatible" content="IE=edge">
<meta name="viewport"
	content="width=device-width,initial-scale=1,user-scalable=0,minimal-ui">
<title>Recover Password</title>
<meta content="Admin Dashboard" name="description">
<meta content="themesdesign" name="author">
<meta http-equiv="X-UA-Compatible" content="IE=edge">
<link rel="shortcut icon"
	href="./<%=request.getContextPath()%>/adminResources/image/favicon.ico">
<link
	href="./<%=request.getContextPath()%>/adminResources/css/bootstrap.min.css"
	rel="stylesheet" type="text/css">
<link
	href="./<%=request.getContextPath()%>/adminResources/plugins/animate/animate.css"
	rel="stylesheet" type="text/css">
<link
	href="./<%=request.getContextPath()%>/adminResources/css/icons.css"
	rel="stylesheet" type="text/css">
<link
	href="./<%=request.getContextPath()%>/adminResources/css/style.css"
	rel="stylesheet" type="text/css">
<link rel="stylesheet"
	href="<%=request.getContextPath()%>/adminResources/css/jquery.toast.min.css">

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
						src="./<%=request.getContextPath()%>/adminResources/image/logo_1.jpg" height="100" width="240" alt="logo"></a>
				</h3>
				<h6 class="text-center">Recover Password</h6>
				<div class="p-3">
					<%@taglib prefix="c" uri="http://java.sun.com/jstl/core_rt"%>
					<form onsubmit="return validateTableDetais()"
						class="form-horizontal" action="sendpasswordRecovery"
						method="post">
						<!-- <div class="alert alert-primary alert-dismissible">
							<button type="button" class="close" data-dismiss="alert"
								aria-hidden="true">×</button>
							<b> New Password will be sent to your Registered Email</b>
						</div> -->
						<div class="form-group">
							<div class="col-xs-12">
								<input class="form-control" type="text" 
									id="username" name="username" placeholder="Email">
							</div>
						</div>
						<div class="form-group text-center row m-t-20">
							<div class="col-12">
								<button
									class="btn btn-danger btn-block waves-effect waves-light"
									type="submit">Send Email</button>
							</div>
						</div>

					</form>
					<div class="form-group text-center row m-t-20">
						<div class="col-12">
							<a href="/">
								<button
									class="btn btn-danger btn-block waves-effect waves-light"
									type="submit">Home</button>
							</a>
						</div>
					</div>

					<c:if test="${failureMessage != ''}">
						<span style="color: red;"><h6 class="text-center">
								<c:out value="${failureMessage }">
								</c:out>

							</h6> </span>
					</c:if>



					<c:if test="${sucessMessage != ''}">

						<span style="color: green;"><h6 class="text-center">
								<b><c:out value="${sucessMessage }">
									</c:out> </b>

							</h6> </span>
					</c:if>


				</div>
			</div>
		</div>
	</div>
	<!-- jQuery  -->
	<script
		src="./<%=request.getContextPath()%>/adminResources/js/jquery.min.js"></script>
	<script
		src="./<%=request.getContextPath()%>/adminResources/js/bootstrap.bundle.min.js"></script>
	</script>
	<script
		src="./<%=request.getContextPath()%>/adminResources/js/modernizr.min.js"></script>
	<script
		src="./<%=request.getContextPath()%>/adminResources/js/detect.js"></script>
	<script
		src="./<%=request.getContextPath()%>/adminResources/js/fastclick.js"></script>
	<script
		src="./<%=request.getContextPath()%>/adminResources/js/jquery.slimscroll.js"></script>
	<script
		src="./<%=request.getContextPath()%>/adminResources/js/jquery.blockUI.js"></script>
	<script
		src="./<%=request.getContextPath()%>/adminResources/js/waves.js"></script>
	<script
		src="./<%=request.getContextPath()%>/adminResources/js/jquery.nicescroll.js"></script>
	<script
		src="./<%=request.getContextPath()%>/adminResources/js/jquery.scrollTo.min.js"></script>
	<!-- App js -->
	<script src="./<%=request.getContextPath()%>/adminResources/js/app.js"></script>


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