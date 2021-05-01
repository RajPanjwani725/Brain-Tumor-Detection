<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html lang="en">
<head>
<meta charset="utf-8">
<meta http-equiv="X-UA-Compatible" content="IE=edge">
<meta name="viewport"
	content="width=device-width,initial-scale=1,user-scalable=0,minimal-ui">
<title>User | Index</title>
<meta content="Admin Dashboard" name="description">
<meta content="themesdesign" name="author">
<meta http-equiv="X-UA-Compatible" content="IE=edge">
<link rel="shortcut icon"
	href="<%=request.getContextPath()%>/adminResources/image/favicon.ico">
<link rel="stylesheet"
	href="<%=request.getContextPath()%>/adminResources/css/MetroJs.min.css">
<link rel="stylesheet"
	href="<%=request.getContextPath()%>/adminResources/css/morris.css">
<link
	href="<%=request.getContextPath()%>/adminResources/css/jquery-jvectormap-2.0.2.css"
	rel="stylesheet">
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

<link href="<%=request.getContextPath()%>/adminResources/css/w3.css"
	rel="stylesheet">

<link
	href="<%=request.getContextPath()%>/adminResources/css/w3-theme-black.css"
	rel="stylesheet">




<style>
.header {
	padding: 60px;
	text-align: center;
	background-image:
		url('<%=request.getContextPath()%>/adminResources/image/park5.jpg')
		!important;
	color: #FB9337;
	font-size: 30px;
}

.bg-gray-200 {
	height: 250px;
	text-align: center;
}

.fo {
	font-size: 1.5em;
}

.card-text {
	padding: 0px 22px;
	margin-top: 0.5em;
}

.io {
	font-size: 3.5rem;
	margin-bottom: 0.5em;
	color: #FB9337;
}

#card:hover {
	box-shadow: 0px 0px 20px 0px black;
}
</style>


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

				<div class="am-mainpanel" style="margin-top: 90px">
					<!-- am-pagetitle -->
					<div class="am-pagebody" style="padding-right: 0; padding-left: 0;">

						<!-- About Section -->
						<div class="w3-row w3-padding-64" id="about">
							<div class="w3-col m6 w3-padding-large w3-hide-small">
								<img
									src="<%=request.getContextPath()%>/adminResources/image/extra.jpg"
									class="w3-round w3-image w3-opacity-min" alt="Table Setting"
									width="800" height="750">
							</div>

							<div class="w3-col m6 w3-padding-large">
								<h1 class="w3-center"> Brain Tumor Detection</h1>
								<br>
								<p class="w3-large w3-text-grey w3-hide-medium">Brain tumor
									detection is a system in which user can upload their medical
									image like MRI and the detection of brain tumor if any will be
									done and result will be provided along with the details of
									infected tumor area.</p>
									
									<p class="w3-large w3-text-grey w3-hide-medium"> Along with this, in future we are planning
									that the user will be suggested the doctor's information along
									with their experience so that the user can take appointment and
									start the treatment as fast as possible.</p>
							</div>
						</div>

					</div>
					<!-- am-pagebody -->
				</div>
				<!-- am-mainpanel -->

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
	<script
		src="<%=request.getContextPath()%>/adminResources/js/MetroJs.min.js"></script>
	<script
		src="<%=request.getContextPath()%>/adminResources/js/jquery-jvectormap-2.0.2.min.js"></script>
	<script
		src="<%=request.getContextPath()%>/adminResources/js/jquery-jvectormap-world-mill-en.js"></script>
	<script
		src="<%=request.getContextPath()%>/adminResources/js/jquery.sparkline.min.js"></script>
	<script
		src="<%=request.getContextPath()%>/adminResources/js/morris.min.js"></script>
	<script
		src="<%=request.getContextPath()%>/adminResources/js/raphael-min.js"></script>
	<script
		src="<%=request.getContextPath()%>/adminResources/js/dashboard.js"></script>
	<!-- App js -->
	<script src="<%=request.getContextPath()%>/adminResources/js/app.js"></script>

</body>
</html>