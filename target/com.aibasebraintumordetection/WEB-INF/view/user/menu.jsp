
<div class="left side-menu">
	<button type="button"
		class="button-menu-mobile button-menu-mobile-topbar open-left">
		<i class="ion-close"></i>
	</button>
	<!-- LOGO -->
	<div class="topbar-left">
		<div class="text-center">



			<a href="index" class="logo"><img
				src="<%=request.getContextPath()%>/adminResources/image/logo_1.jpg" height="80" width="240" alt="logo"></a>
		</div>
	</div>
	<div class="sidebar-inner slimscrollleft" id="sidebar-main">
		<div id="sidebar-menu">
			<ul>

				<li><a href="index" class="waves-effect waves-light"> <i
						class="fas fa-home"></i> <span> Home</span>
				</a></li>

				<li><a href="viewPackage" class="waves-effect waves-light">
						<i class="ti-package"></i> <span>View Package</span>
				</a></li>


				<!--	
					
					<li class="has_sub"><a href="javascript:void(0);"
					class="waves-effect waves-light"><i class="mdi mdi-city"></i> <span>Manage
							Dataset </span><span class="float-right"><i
							class="mdi mdi-chevron-right"></i></span></a>
					<ul class="list-unstyled">
						<li><a href="addDataset">Add DataSet</a></li>
						<li><a href="viewDataset">View DataSet</a></li>

					</ul></li>
					<li><a href="viewDetection"
					class="waves-effect waves-light"> <i
						class="mdi mdi-calendar-clock"></i> <span> Manage Detection</span>
				</a></li> -->

				
					
					
					
					
					
					<li class="has_sub"><a href="javascript:void(0);"
					class="waves-effect waves-light"><i class="fas fa-bullseye"></i> <span>Manage
							Detection </span><span class="float-right"><i
							class="mdi mdi-chevron-right"></i></span></a>
					<ul class="list-unstyled">
						<li><a href="addDataset">Upload Image</a></li>
						<li><a href="viewDataset">View Detection</a></li>

					</ul></li>
					
					
					
					<li class="has_sub"><a href="javascript:void(0);"
					class="waves-effect waves-light"><i class="mdi mdi-headset"></i> <span>Manage
							Complain </span><span class="float-right"><i
							class="mdi mdi-chevron-right"></i></span></a>
					<ul class="list-unstyled">
						<li><a href="addComplain">Post Complain</a></li>
						<li><a href="viewUserComplain">View Complain</a></li>

					</ul></li>
					


				<li class="has_sub"><a href="javascript:void(0);"
					class="waves-effect waves-light"><i class="mdi mdi-thumb-up"></i> <span>Manage
							Feedback </span><span class="float-right"><i
							class="mdi mdi-chevron-right"></i></span></a>
					<ul class="list-unstyled">
						<li><a href="addFeedback">Add FeedBack</a></li>
						<li><a href="viewUserFeedback">View Feedback</a></li>

					</ul></li>

				<li><a href="/logout" class="waves-effect waves-light"> <i
						class="mdi mdi-logout"></i> <span> Logout</span>
				</a></li>
			</ul>
		</div>
		<div class="clearfix"></div>
	</div>
	<!-- end sidebarinner -->
</div>
