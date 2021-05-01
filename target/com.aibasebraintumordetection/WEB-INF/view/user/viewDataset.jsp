<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html lang="en">
<head>
<meta charset="utf-8">
<meta http-equiv="X-UA-Compatible" content="IE=edge">
<meta name="viewport"
	content="width=device-width,initial-scale=1,user-scalable=0,minimal-ui">
<title>Admin | View Dataset</title>
<meta content="Admin Dashboard" name="description">
<meta content="themesdesign" name="author">
<meta http-equiv="X-UA-Compatible" content="IE=edge">
<link rel="shortcut icon"
	href="<%=request.getContextPath()%>/adminResources/image/favicon.ico">
<!-- DataTables -->
<link
	href="<%=request.getContextPath()%>/adminResources/css/dataTables.bootstrap4.min.css"
	rel="stylesheet" type="text/css">
<link
	href="<%=request.getContextPath()%>/adminResources/css/buttons.bootstrap4.min.css"
	rel="stylesheet" type="text/css">
<!-- Responsive datatable examples -->
<link
	href="<%=request.getContextPath()%>/adminResources/css/responsive.bootstrap4.min.css"
	rel="stylesheet" type="text/css">
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
<link href="<%=request.getContextPath()%>/adminResources/css/style.css"
	rel="stylesheet" type="image/css">
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
							<div class="col-sm-12">
								<div class="page-title-box">

									<h4 class="page-title">Dataset Details</h4>
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
										<h4 class="mt-0 header-title"></h4>

										<table id="datatable-buttons"
											class="table table-striped table-bordered dt-responsive nowrap"
											cellspacing="0" width="100%">
											<thead>
												<tr>
													<th>No.</th>
													<th>Dataset Name</th>
													<th>Dataset Description</th>
													<th>Input Image</th>
													<th>Detection</th>
													<th>Detected Image</th>
													<th>Generate Report</th>
													<th>Download Report</th>
												</tr>
											</thead>
											<tbody>
												<%@taglib prefix="c" uri="http://java.sun.com/jstl/core_rt"%>
												<c:forEach items="${datasetList }" var="i" varStatus="j">
													<tr>
														<td>${j.count }</td>
														<td>${i.datasetName }</td>
														<td>${i.datasetDescription }</td>



														<td align="left"><img id="myImg"
															src="<%=request.getContextPath() %>/document/dataset/${i.datasetFileName }"
															style="width: 50px; height: 50px" onclick="fn(this)"
															data-toggle="modal" data-target="#exampleModalLong" /></td>

														<c:if test="${i.detectionStatus == null  }">

															<td><div class="form-group mb-0">


																	<div>
																		<button onclick="getDetection(${i.id})"
																			class="btn btn-secondary waves-effect waves-light">Detect</button>

																	</div>
																</div></td>

															<td></td>
															<td></td>
														
														</c:if>



														<c:if test="${i.detectionStatus !=null && i.detectionReportStatus=='notGenerated' }">

															<td>Detection is already Done</td>
															
															

															<td align="left"><img
																src="<%=request.getContextPath() %>/document/output_image/${i.detectionOutputFilePath }"
																style="width: 50px; height: 50px" onclick="fn(this)"
																data-toggle="modal" data-target="#exampleModalLong" />
															</td>
															<td><div class="form-group mb-0">
																	<div>
																		<a href="generatePdf?id=${i.id }"><button type="submit" class="btn btn-secondary waves-effect waves-light">Generate  Report </button></a>

																	</div>
																</div></td>
																<td></td>
																
																
												

														</c:if>
												
														
														
														<c:if test="${i.detectionStatus !=null && i.detectionReportStatus =='Generated' }">
															<td>Detected</td>
															<td align="left"><img
																src="<%=request.getContextPath() %>/document/output_image/${i.detectionOutputFilePath }"
																style="width: 50px; height: 50px" onclick="fn(this)"
																data-toggle="modal" data-target="#exampleModalLong" />
															</td>
															<td>Generated</td>
															
																					
												<td>
												<a href="<%=request.getContextPath() %>/document/pdf/${i.detectionReport}">
												<button type="submit" class="btn btn-secondary waves-effect waves-light">Open Report</button> </a></td>

																

														</c:if>
											












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

	<!-- Modal -->
	<div class="modal fade" id="exampleModalLong" tabindex="-1"
		role="dialog" aria-labelledby="exampleModalLongTitle"
		aria-hidden="true">
		<div class="modal-dialog modal-lg" role="document">
			<div class="modal-content">
				<div class="modal-header bg-primary">
					<h5 class="modal-title text-white" id="exampleModalLongTitle"
						style="text-align: center;">Image Preview</h5>
					<button type="button" class="close" data-dismiss="modal"
						aria-label="Close">
						<span aria-hidden="true">&times;</span>
					</button>
				</div>
				<div class="modal-body" id="myModal">



					<img class="modal-content" id="img01"
						style="width: 750px; height: 600px">



				</div>

			</div>
		</div>
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
	<!-- Required datatable js -->
	<script
		src="<%=request.getContextPath()%>/adminResources/js/jquery.dataTables.min.js"></script>
	<script
		src="<%=request.getContextPath()%>/adminResources/js/dataTables.bootstrap4.min.js"></script>
	<!-- Buttons examples -->
	<script
		src="<%=request.getContextPath()%>/adminResources/js/dataTables.buttons.min.js"></script>
	<script
		src="<%=request.getContextPath()%>/adminResources/js/buttons.bootstrap4.min.js"></script>
	<script
		src="<%=request.getContextPath()%>/adminResources/js/jszip.min.js"></script>
	<script
		src="<%=request.getContextPath()%>/adminResources/js/pdfmake.min.js"></script>
	<script
		src="<%=request.getContextPath()%>/adminResources/js/vfs_fonts.js"></script>
	<script
		src="<%=request.getContextPath()%>/adminResources/js/buttons.html5.min.js"></script>
	<script
		src="<%=request.getContextPath()%>/adminResources/js/buttons.print.min.js"></script>
	<script
		src="<%=request.getContextPath()%>/adminResources/js/buttons.colVis.min.js"></script>
	<!-- Responsive examples -->
	<script
		src="<%=request.getContextPath()%>/adminResources/js/dataTables.responsive.min.js"></script>
	<script
		src="<%=request.getContextPath()%>/adminResources/js/responsive.bootstrap4.min.js"></script>
	<!-- Datatable init js -->
	<script
		src="<%=request.getContextPath()%>/adminResources/js/datatables.init.js"></script>
	<!-- App js -->
	<script src="<%=request.getContextPath()%>/adminResources/js/app.js"></script>


	<script
		src="<%=request.getContextPath()%>/adminResources/js/custom/detection.js"></script>


	<script>

var span = document.getElementsByClassName("close");
var modal = document.getElementById("myModal");

function fn(x)
{
	var img = document.getElementById("myImg");
	var modalImg = document.getElementById("img01");
	var captionText = document.getElementById("caption");

	modal.style.display = "block";
	modalImg.src = x.src;
	captionText.innerHTML = x.alt;
}
function fn1()
{ 
	modal.style.display = "none";
}

</script>

</body>
</html>