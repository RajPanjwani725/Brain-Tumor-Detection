<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html lang="en">
<head>
<meta charset="utf-8">
<meta http-equiv="X-UA-Compatible" content="IE=edge">
<meta name="viewport"
	content="width=device-width,initial-scale=1,user-scalable=0,minimal-ui">
<title>Register</title>
<meta content="Admin Dashboard" name="description">
<meta content="themesdesign" name="author">
<meta http-equiv="X-UA-Compatible" content="IE=edge">
<link rel="shortcut icon"
	href="<%=request.getContextPath()%>/adminResources/image/favicon.ico">
<link
	href="<%=request.getContextPath()%>/adminResources/css/bootstrap.min.css"
	rel="stylesheet" type="text/css">
<link
	href="<%=request.getContextPath()%>/adminResources/css/animate.css"
	rel="stylesheet" type="text/css">
<link href="<%=request.getContextPath()%>/adminResources/css/icons.css"
	rel="stylesheet" type="text/css">
<link href="<%=request.getContextPath()%>/adminResources/css/style.css"
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
					<a href="index.html" class="logo logo-admin"><img
						src="<%=request.getContextPath()%>/adminResources/image/logo_1.jpg" height="100" width="240" alt="logo"></a>
				</h3>
				<h6 class="text-center">Register</h6>
				<div class="p-3">
					<%@taglib prefix="f" uri="http://www.springframework.org/tags/form"%>
					<%@taglib prefix="c" uri="http://java.sun.com/jstl/core_rt"%>

					<f:form onsubmit="return validateTableDetais()"
						class="form-horizontal" action="saveUser"
						modelAttribute="registerVO" method="post">

						<span style="color: red; font-size: 20px"><c:out
								value="${message }"></c:out></span>
						<div class="form-group row">
							<div class="col-12">
								<f:input class="form-control" path="name" placeholder="Name"
									id="name" name="name" />
							</div>
						</div>





						<div class="form-group row">
							<div class="col-12">
								<f:input path="phoneNumber" id="phoneNumber"
									class="form-control" placeholder="Phone Number" />
							</div>
						</div>

						<div class="form-group row">
							<div class="col-12">
								<input type="text" id="username" name="username"
									class="form-control" placeholder="Email">
							</div>
						</div>




						<div class="form-group row">
							<div class="col-12">
								<f:select path="stateVO.id" id="stateId" name="stateId"
									class="form-control" onchange="getCity()">
									<option disabled selected>Select State</option>
									<c:forEach items="${stateList}" var="i">
										<option value="${i.id}">${i.stateName}</option>
									</c:forEach>
								</f:select>
							</div>
						</div>


						<div class="form-group row">
							<div class="col-12">

								<f:select path="cityVO.id" id="cityId" name="cityId"
									class="form-control">

									<option disabled selected>Select City</option>
									<c:forEach items="${cityList}" var="i">
										<option value="${i.id}">${i.cityName}</option>
									</c:forEach>

								</f:select>

							</div>
						</div>
						<c:if test="${failureMessage != ''}">
						<span style="color: red;"><h6 class="text-center">
								<c:out value="${failureMessage }">
								</c:out>

							</h6> </span>
					</c:if>

						<div class="form-group text-center row m-t-20">
							<div class="col-12">
								<button
									class="btn btn-danger btn-block waves-effect waves-light"
									type="submit">Register</button>
							</div>
						</div>
						<div class="form-group m-t-10 mb-0 row">
							<div class="col-12 m-t-20 text-center">
								<a href="/" class="text-muted">Already have account?</a>
							</div>
						</div>
					</f:form>
				</div>
			</div>
		</div>
	</div>
	<!-- jQuery  -->
	<script
		src="<%=request.getContextPath()%>/adminResources/js/jquery.min.js"></script>
	<script
		src="<%=request.getContextPath()%>/adminResources/js/popper.min.js"></script>
	<script
		src="<%=request.getContextPath()%>/adminResources/js/bootstrap.min.js"></script>
	<script
		src="<%=request.getContextPath()%>/adminResources/js/modernizr.min.js"></script>
	<script src="<%=request.getContextPath()%>/adminResources/js/detect.js"></script>
	<script
		src="<%=request.getContextPath()%>/adminResources/js/fastclick.js"></script>
	<script
		src="<%=request.getContextPath()%>/adminResources/js/jquery.slimscroll.js"></script>
	<script
		src="<%=request.getContextPath()%>/adminResources/js/jquery.blockUI.js"></script>
	<script src="<%=request.getContextPath()%>/adminResources/js/waves.js"></script>
	<script
		src="<%=request.getContextPath()%>/adminResources/js/jquery.nicescroll.js"></script>
	<script
		src="<%=request.getContextPath()%>/adminResources/js/jquery.scrollTo.min.js"></script>
	<!-- App js -->
	<script src="<%=request.getContextPath()%>/adminResources/js/app.js"></script>



	<script
		src="<%=request.getContextPath()%>/adminResources/js/jquery.toast.min.js"></script>
	<script
		src="<%=request.getContextPath()%>/adminResources/js/toastDemo.js"></script>


	<script
		src="<%=request.getContextPath()%>/adminResources/js/custom/toaster.js"></script>
	<script
		src="<%=request.getContextPath()%>/adminResources/js/custom/register.js"></script>
	<script
		src="<%=request.getContextPath()%>/adminResources/js/custom/City-State-DropDownValidation.js"></script>




</body>



</html>