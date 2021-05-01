<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html lang="en">
<head>
<meta charset="utf-8">
<meta http-equiv="X-UA-Compatible" content="IE=edge">
<meta name="viewport"
	content="width=device-width,initial-scale=1,user-scalable=0,minimal-ui">
<title>User | Page Profile</title>
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
<%@taglib prefix="f" uri="http://www.springframework.org/tags/form"%>
<%@taglib prefix="c" uri="http://java.sun.com/jstl/core_rt"%>
<body class="fixed-left">
	<!-- Begin page -->
	<div id="wrapper">
		<!-- ========== Left Sidebar Start ========== -->


		<jsp:include page="menu.jsp"></jsp:include>

		<!-- Left Sidebar End -->
		<!-- Start right Content here -->
		<div class="content-page">
			<!-- Start content -->
			<div class="content">
				<!-- Top Bar Start -->

				<jsp:include page="header.jsp"></jsp:include>

				<!-- Top Bar End -->
				<div class="page-content-wrapper">
					<div class="container-fluid">
						<div class="row">
							<div class="col-sm-12">
								<div class="page-title-box">

									<h4 class="page-title">Profile</h4>
								</div>
							</div>
						</div>
						<!-- end page title end breadcrumb -->
						<div class="row">
							<div class="col-lg-12 col-xl-3">
								<div class="card m-b-30">
									<div class="card-body">
										<img
											src="<%=request.getContextPath()%>/adminResources/image/avatar-1.jpg"
											alt="" class="rounded-circle mx-auto d-block w-80">
										<div class="text-center">


											<c:forEach items="${userList }" var="i" varStatus="j">



												<h5 class="mt-2 mb-0">${i.name}</h5>
												
												<p class="text-muted mb-2 p-2">${i.about }.</p>
												<!-- <button class="btn btn-primary btn-block mb-2">Follow</button> -->
										</div>

									</div>
								</div>
								<div class="row">
									<div class="col-lg-12 col-sm-12">
										<div class="card m-b-30 contact">
											<div class="card-body">
												<h6 class="header-title pb-3">Contact</h6>
												<ul class="list-unstyled mb-0">
													<li class=""><i class="fas fa-phone mr-2"></i> <b>phone
													</b>: +91 ${i.phoneNumber }</li>
													<li class="mt-2"><i class="far fa-envelope mt-2 mr-2"></i>
														<b>Email </b>: ${i.loginVO.username }</li>

												</ul>
											</div>
										</div>
									</div>
								</div>

							</div>
							<div class="col-lg-12 col-xl-9">
								<div class="card m-b-30">
									<div class="card-header profile-tabs pb-0">
										<ul class="nav nav-tabs">
											<li class="nav-item"><a class="nav-link active"
												href="#about" data-toggle="tab" aria-expanded="false"><i
													class="ti-user mr-2"></i>About</a></li>

											<li class="nav-item"><a class="nav-link"
												href="#settings" data-toggle="tab" aria-expanded="false"><i
													class="ti-settings mr-2"></i>Edit Profile</a></li>
										</ul>
									</div>
									<div class="card-body">
										<div class="">
											<div class="tab-content">
												<div class="tab-pane active pt-3" id="about">
													<div class="row justify-content-center">
														<div class="col-md-12 profile-detail">
															<div class="">
																<h5 class="mb-0 py-2">
																	<i class="fa fa-graduation-cap text-primary"></i>
																	Personal Details
																</h5>
															</div>
														</div>
														<div class="col-md-12 col-lg-8 align-self-center">

															<ul class="list-unstyled presonal-inform ">
																<li><b>Name:</b>${i.name }</li>
																<li><b>Phone:</b>+91 ${i.phoneNumber }</li>
																<li><b>Email:</b>${i.loginVO.username }</li>

																<li><b>Address:</b>${i.address }</li>
																<li><b>State:</b> ${i.stateVO.stateName }</li>
																<li><b>City:</b> ${i.cityVO.cityName }</li>

															</ul>
														</div>




														</c:forEach>

















														
													</div>
												</div>
												<div class="tab-pane" id="photo">
													<p class="pt-3 text-muted">Lorem ipsum dolor sit amet,
														consectetuer adipiscing elit. Aenean commodo ligula eget
														dolor. Aenean massa. Cum sociis natoque penatibus et
														magnis dis parturient montes, nascetur ridiculus mus.
														Donec quam felis, ultricies nec, pellentesque eu, pretium
														quis, sem. Nulla consequat massa quis enim.</p>
													<div class="row px-3">
														<div class="col-lg-3 col-md-6 p-0">
															<div class="item-box">
																<a class="mfp-image img-fluid"
																	href="<%=request.getContextPath()%>/adminResources/image/img-1.jpg"
																	title="30 min ago"><img
																	class="item-container img-fluid"
																	src="<%=request.getContextPath()%>/adminResources/image/img-1.jpg"
																	alt="7"></a>
															</div>
														</div>
														<div class="col-lg-3 col-md-6 p-0">
															<div class="item-box">
																<a class="mfp-image img-fluid"
																	href="<%=request.getContextPath()%>/adminResources/image/img-7.jpg"
																	title="yesterday"><img class="mfp-fade img-fluid"
																	src="<%=request.getContextPath()%>/adminResources/image/img-7.jpg"
																	alt="2"></a>
															</div>
														</div>
														<div class="col-lg-3 col-md-6 p-0">
															<div class="item-box">
																<a class="mfp-image img-fluid"
																	href="<%=request.getContextPath()%>/adminResources/image/img-6.jpg"
																	title="3 day ago"><img class="img-fluid"
																	src="<%=request.getContextPath()%>/adminResources/image/img-6.jpg"
																	alt="4"></a>
															</div>
														</div>
														<div class="col-lg-3 col-md-6 m-0 p-0">
															<div class="item-box">
																<a class="mfp-image img-fluid"
																	href="<%=request.getContextPath()%>/adminResources/image/img-5.jpg"
																	title="last week"><img class="img-fluid"
																	src="<%=request.getContextPath()%>/adminResources/image/img-5.jpg"
																	alt="5"></a>
															</div>
														</div>
														<div class="col-lg-3 col-md-6 p-0">
															<div class="item-box">
																<a class="mfp-image img-fluid"
																	href="<%=request.getContextPath()%>/adminResources/image/img-4.jpg"
																	title="last month"><img class="img-fluid"
																	src="<%=request.getContextPath()%>/adminResources/image/img-4.jpg"
																	alt="6"></a>
															</div>
														</div>
														<div class="col-lg-3 col-md-6 p-0">
															<div class="item-box">
																<a class="cbox-gallary1 mfp-image img-fluid"
																	href="<%=request.getContextPath()%>/adminResources/image/img-3.jpg"
																	title="last year"><img class="img-fluid"
																	src="<%=request.getContextPath()%>/adminResources/image/img-3.jpg"
																	alt="1"></a>
															</div>
														</div>
														<div class="col-lg-3 col-md-6 p-0">
															<div class="item-box">
																<a class="img-fluid mfp-image"
																	href="<%=request.getContextPath()%>/adminResources/image/img-2.jpg"
																	title="30 min ago"><img class="img-fluid"
																	src="<%=request.getContextPath()%>/adminResources/image/img-2.jpg"
																	alt="7"></a>
															</div>
														</div>
														<div class="col-lg-3 col-md-6 p-0">
															<div class="item-box">
																<a class="img-fluid mfp-image"
																	href="<%=request.getContextPath()%>/adminResources/image/img-1.jpg"
																	title="yesterday"><img class="img-fluid mfp-fade"
																	src="<%=request.getContextPath()%>/adminResources/image/img-1.jpg"
																	alt="2"></a>
															</div>
														</div>
													</div>
													<div class="text-right mt-3">
														<a href="#" class="primary">View all 10+ post</a>
													</div>
												</div>
												<div class="tab-pane" id="settings">
													<div class="row">
														<div class="col-lg-12">
															<div class="">


																<f:form onsubmit="return validateTableDetais()"
																	action="updateUserProfile"
																	class="form-horizontal form-material"
																	modelAttribute="registerVO" method="post">

																	<f:hidden path="id" />
																	<f:hidden path="loginVO.loginId" />
																	<f:hidden path="loginVO.username" />
																	<f:hidden path="loginVO.enabled" />
																	<f:hidden path="loginVO.role" />
																	<f:hidden path="loginVO.password" />




																	<div class="form-group">
																		<f:input path="name" id="name" placeholder="Full Name"
																			class="form-control" />
																	</div>

																	<div class="form-group row">
																		<div class="col-md-12">
																			<f:input disabled="true" path="loginVO.username"
																				id="username" placeholder="Email"
																				class="form-control" name="example-email" />
																		</div>

																	</div>




																	<div class="form-group row">
																		<div class="col-md-6">
																			<f:input path="phoneNumber" placeholder="Phone No"
																				name="phoneNumber" id="phoneNumber"
																				class="form-control" />
																		</div>

																		<div class="col-md-6">
																			<f:input path="address" id="address"
																				placeholder="address" class="form-control" />
																		</div>

																	</div>


																	<div class="form-group row">



																		<div class="col-sm-6">
																			<f:select path="stateVO.id" id="stateId"
																				name="stateId" class="form-control"
																				onchange="getCitys()">
																				<option disabled selected>Select State</option>
																				<c:forEach items="${stateList}" var="i">
																					<option value="${i.id}">${i.stateName}</option>
																				</c:forEach>
																			</f:select>

																		</div>


																		<div class="col-sm-6">


																			<f:select path="cityVO.id" id="cityId" name="cityId"
																				class="form-control">
																						</f:select>
																		</div>



																	</div>





																	<div class="form-group">

																		<f:textarea path="about" id="describe"
																			class="form-control" rows="5" placeholder="About"></f:textarea>

																		<button type="submit"
																			class="btn btn-primary btn-sm text-light px-4 mt-2 float-right">Update
																			Profile</button>
																	</div>
																</f:form>
															</div>
														</div>
													</div>
												</div>
											</div>
										</div>
									</div>
								</div>
								<div class="row">
									<div class="col-lg-12 col-sm-12">
										<div class="card">
											<div class="card-body">
												<h5 class="header-title pb-3">Activities</h5>
												<div id="user-activities" class="tab-pane">
													<div class="timeline-2">
														<div class="time-item">
															<div class="item-info">
																<div class="text-muted">5 minutes ago</div>
																<p>
																	<strong><a href="#" class="text-primary">Robert
																			Carlile</a></strong> Uploaded a photo <strong>"DSC000586.jpg"</strong>
																</p>
															</div>
														</div>
														<div class="time-item">
															<div class="item-info">
																<div class="text-muted">30 minutes ago</div>
																<p>
																	<a href="" class="text-primary">Lorem</a> commented
																	your post.
																</p>
																<p>
																	<em>"Lorem ipsum dolor sit amet, consectetur
																		adipiscing elit. Aliquam laoreet tellus ut tincidunt
																		euismod. "</em>
																</p>
															</div>
														</div>
														<div class="time-item">
															<div class="item-info">
																<div class="text-muted">59 minutes ago</div>
																<p>
																	<a href="" class="text-primary">Jessi</a> attended a
																	meeting with <a href="#" class="text-primary">Robert
																		Carlile</a>.
																</p>
																<p>
																	<em>"Lorem ipsum dolor sit amet, consectetur
																		adipiscing elit. Aliquam laoreet tellus ut tincidunt
																		euismod. "</em>
																</p>
															</div>
														</div>
														<div class="time-item">
															<div class="item-info">
																<div class="text-muted">5 minutes ago</div>
																<p>
																	<strong><a href="#" class="text-primary">Robert
																			Carlile</a></strong> Uploaded 2 new photos
																</p>
															</div>
														</div>
														<div class="time-item">
															<div class="item-info">
																<div class="text-muted">30 minutes ago</div>
																<p>
																	<a href="" class="text-primary">Lorem</a> commented
																	your post.
																</p>
																<p>
																	<em>"Lorem ipsum dolor sit amet, consectetur
																		adipiscing elit. Aliquam laoreet tellus ut tincidunt
																		euismod. "</em>
																</p>
															</div>
														</div>
														<div class="time-item">
															<div class="item-info">
																<div class="text-muted">59 minutes ago</div>
																<p>
																	<a href="" class="text-primary">Jessi</a> attended a
																	meeting with <a href="#" class="text-primary">Robert
																		Carlile</a>.
																</p>
																<p>
																	<em>"Lorem ipsum dolor sit amet, consectetur
																		adipiscing elit. Aliquam laoreet tellus ut tincidunt
																		euismod. "</em>
																</p>
															</div>
														</div>
													</div>
												</div>
											</div>
										</div>
									</div>
								</div>
							</div>
						</div>
						<!--end row-->
					</div>
					<!-- container -->
				</div>
				<!-- Page content Wrapper -->
			</div>
			<!-- content -->
			<jsp:include page="footer.jsp"></jsp:include>
		</div>
		<!-- End Right content here -->
	</div>
	<!-- END wrapper -->
	<!-- jQuery  -->
	<script
		src="<%=request.getContextPath()%>/adminResources/js/jquery.min.js"></script>
	<script
		src="<%=request.getContextPath()%>/adminResources/js/bootstrap.bundle.min.js"></script>

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
		src="<%=request.getContextPath()%>/adminResources/js/toaster.js"></script>
	<script
		src="<%=request.getContextPath()%>/adminResources/js/custom/ProfileValidation.js"></script>
	<script
		src="<%=request.getContextPath()%>/adminResources/js/custom/City-State-DropDownValidation.js"></script>


</body>
</html>