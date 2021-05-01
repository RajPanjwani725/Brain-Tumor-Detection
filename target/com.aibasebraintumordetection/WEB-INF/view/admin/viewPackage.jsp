<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html lang="en">
<head>
<meta charset="utf-8">
<meta http-equiv="X-UA-Compatible" content="IE=edge">
<meta name="viewport"
	content="width=device-width,initial-scale=1,user-scalable=0,minimal-ui">
<title>Admin | Package Details</title>
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
<%@taglib  prefix="c" uri="http://java.sun.com/jstl/core_rt" %>

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

									<h4 class="page-title">Package Details</h4>
								</div>
							</div>
						</div>
						<!-- end page title end breadcrumb -->

						<!-- end row -->




						<!--end row-->
						<div class="row">
							<div class="col-md-12">
								<div class="card">
									<div class="card-body">


										<table id="datatable-buttons"
											class="table table-striped table-bordered dt-responsive nowrap"
											cellspacing="0" width="100%">
											<thead>
												<tr>
													<th>No</th>
													<th>Package Name</th>
													<th>Package Price ( <i class="fas fa-rupee-sign"></i>
														)
													</th>
													<th>Package Duration</th>

													<th>Package Description</th>
													<th>Action</th>



												</tr>
											</thead>
											<tbody>
											<c:forEach items="${packageList }" var="i" varStatus="j">
												<tr>
													<td>${j.count }</td>
													<td>${i.packageName}</td>
													<td>${i.packagePrice}</td>
													<td>${i.packageDuration}</td>
													

													<td>${i.packageDescription}</td>
													<td><a href="editPackage?id=${i.id}"> <i class="fas fa-edit"> </i>&nbsp
															&nbsp
													</a> <a href="deletePackage?id=${i.id}"> <i class="fas fa-trash-alt"
															style="color: red"> </i>
													</a></td>

												</tr>
												</c:forEach>
											</tbody>
										</table>
									</div>
								</div>
							</div>
							<!-- end col -->
						</div>
						<!-- end row -->
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