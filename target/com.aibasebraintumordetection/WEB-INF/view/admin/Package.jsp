<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html lang="en">
<head>
<meta charset="utf-8">
<meta http-equiv="X-UA-Compatible" content="IE=edge">
<meta name="viewport"
	content="width=device-width,initial-scale=1,user-scalable=0,minimal-ui">
<title>Dashor - Responsive Bootstrap 4 Admin Dashboard</title>
<meta content="Admin Dashboard" name="description">
<meta content="themesdesign" name="author">
<meta http-equiv="X-UA-Compatible" content="IE=edge">
<link rel="shortcut icon" href="<%=request.getContextPath()%>/adminResources/image/favicon.ico">
<!-- DataTables -->
<link href="<%=request.getContextPath()%>/adminResources/css/dataTables.bootstrap4.min.css"
	rel="stylesheet" type="text/css">
<link href="<%=request.getContextPath()%>/adminResources/css/buttons.bootstrap4.min.css"
	rel="stylesheet" type="text/css">
<!-- Responsive datatable examples -->
<link href="<%=request.getContextPath()%>/adminResources/css/responsive.bootstrap4.min.css"
	rel="stylesheet" type="text/css">
<link href="<%=request.getContextPath()%>/adminResources/css/bootstrap.min.css" rel="stylesheet"
	type="text/css">
<link href="<%=request.getContextPath()%>/adminResources/css/animate.css" rel="stylesheet"
	type="text/css">
<link href="<%=request.getContextPath()%>/adminResources/css/icons.css" rel="stylesheet"
	type="text/css">
<link href="<%=request.getContextPath()%>/adminResources/css/style.css" rel="stylesheet"
	type="text/css">
</head>
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





							<div class="container mb-5 mt-5">
								<div class="pricing card-deck flex-column flex-md-row mb-3">
									<div class="card card-pricing text-center px-3 mb-4">
										<span
											class="h6 w-100 mx-auto  rounded-bottom bg-primary text-white shadow-sm">Starter</span>
										<div class="bg-transparent card-header pt-4 border-0">
											<h1
												class="h1 font-weight-normal text-primary text-center mb-0"
												data-pricing-value="15">
												$<span class="price">3</span><span
													class="h6 text-muted ml-2">/ per month</span>
											</h1>
										</div>
										<div class="card-body pt-0">
											<ul class="list-unstyled mb-4">
												<li>Up to 5 users</li>
												<li>Basic support on Github</li>
												<li>Monthly updates</li>
												<li>Free cancelation</li>
											</ul>
											<button type="button" class="btn btn-outline-secondary mb-3">Order
												now</button>
										</div>
									</div>
									<div
										class="card card-pricing popular shadow text-center px-3 mb-4">
										<span
											class="h6 w-100 mx-auto  rounded-bottom bg-primary text-white shadow-sm">Professional</span>
										<div class="bg-transparent card-header pt-4 border-0">
											<h1
												class="h1 font-weight-normal text-primary text-center mb-0"
												data-pricing-value="30">
												$<span class="price">6</span><span
													class="h6 text-muted ml-2">/ per month</span>
											</h1>
										</div>
										<div class="card-body pt-0">
											<ul class="list-unstyled mb-4">
												<li>Up to 5 users</li>
												<li>Basic support on Github</li>
												<li>Monthly updates</li>
												<li>Free cancelation</li>
											</ul>
											<a href="https://www.totoprayogo.com" target="_blank"
												class="btn btn-primary mb-3">Order Now</a>
										</div>
									</div>
									<div class="card card-pricing text-center px-3 mb-4">
										<span
											class="h6 w-100 mx-auto  rounded-bottom bg-primary text-white shadow-sm">Business</span>
										<div class="bg-transparent card-header pt-4 border-0">
											<h1
												class="h1 font-weight-normal text-primary text-center mb-0"
												data-pricing-value="45">
												$<span class="price">9</span><span
													class="h6 text-muted ml-2">/ per month</span>
											</h1>
										</div>
										<div class="card-body pt-0">
											<ul class="list-unstyled mb-4">
												<li>Up to 5 users</li>
												<li>Basic support on Github</li>
												<li>Monthly updates</li>
												<li>Free cancelation</li>
											</ul>
											<button type="button" class="btn btn-outline-secondary mb-3">Order
												now</button>
										</div>
									</div>
									<div class="card card-pricing text-center px-3 mb-4">
										<span
											class="h6 w-100 mx-auto  rounded-bottom bg-primary text-white shadow-sm">Enterprise</span>
										<div class="bg-transparent card-header pt-4 border-0">
											<h1
												class="h1 font-weight-normal text-primary text-center mb-0"
												data-pricing-value="60">
												$<span class="price">12</span><span
													class="h6 text-muted ml-2">/ per month</span>
											</h1>
										</div>
										<div class="card-body pt-0">
											<ul class="list-unstyled mb-4">
												<li>Up to 5 users</li>
												<li>Basic support on Github</li>
												<li>Monthly updates</li>
												<li>Free cancelation</li>
											</ul>
											<button type="button" class="btn btn-outline-secondary mb-3">Order
												now</button>
										</div>
									</div>
								</div>
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
		</div>
		<!-- END wrapper -->
		<!-- jQuery  -->
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
		<script src="<%=request.getContextPath()%>/adminResources/js/jquery.scrollTo.min.js"></script>
		<!-- Required datatable js -->
		<script src="<%=request.getContextPath()%>/adminResources/js/jquery.dataTables.min.js"></script>
		<script src="<%=request.getContextPath()%>/adminResources/js/dataTables.bootstrap4.min.js"></script>
		<!-- Buttons examples -->
		<script src="<%=request.getContextPath()%>/adminResources/js/dataTables.buttons.min.js"></script>
		<script src="<%=request.getContextPath()%>/adminResources/js/buttons.bootstrap4.min.js"></script>
		<script src="<%=request.getContextPath()%>/adminResources/js/jszip.min.js"></script>
		<script src="<%=request.getContextPath()%>/adminResources/js/pdfmake.min.js"></script>
		<script src="<%=request.getContextPath()%>/adminResources/js/vfs_fonts.js"></script>
		<script src="<%=request.getContextPath()%>/adminResources/js/buttons.html5.min.js"></script>
		<script src="<%=request.getContextPath()%>/adminResources/js/buttons.print.min.js"></script>
		<script src="<%=request.getContextPath()%>/adminResources/js/buttons.colVis.min.js"></script>
		<!-- Responsive examples -->
		<script src="<%=request.getContextPath()%>/adminResources/js/dataTables.responsive.min.js"></script>
		<script src="<%=request.getContextPath()%>/adminResources/js/responsive.bootstrap4.min.js"></script>
		<!-- Datatable init js -->
		<script src="<%=request.getContextPath()%>/adminResources/js/datatables.init.js"></script>
		<!-- App js -->
		<script src="<%=request.getContextPath()%>/adminResources/js/app.js"></script>
</body>
</html>