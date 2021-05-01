
<div class="left side-menu">
	<button type="button"
		class="button-menu-mobile button-menu-mobile-topbar open-left">
		<i class="ion-close"></i>
	</button>
	<!-- LOGO -->
	<div class="topbar-left">
		<div class="text-center">
			


			<a href="index" class="logo"><img src="<%=request.getContextPath()%>/adminResources/image/logo_1.jpg" height="80" width="240" alt="logo"></a>
		</div>
	</div>
	<div class="sidebar-inner slimscrollleft" id="sidebar-main">
		<div id="sidebar-menu">
			<ul>

				<li><a href="index" class="waves-effect waves-light">
						<i class="fas fa-home"></i> <span> Home</span>
				</a></li>

				<li><a href="viewUser" class="waves-effect waves-light">
						<i class="fas fa-users"></i> <span> Manage User</span>
				</a></li>

				<li class="has_sub"><a href="javascript:void(0);"
					class="waves-effect waves-light"><i class="mdi mdi-city"></i> <span>Manage
							State </span><span class="float-right"><i
							class="mdi mdi-chevron-right"></i></span></a>
					<ul class="list-unstyled">
						<li><a href="addState">Add State</a></li>
						<li><a href="viewState">View State</a></li>

					</ul></li>

				<li class="has_sub"><a href="javascript:void(0);"
					class="waves-effect waves-light"><i class="mdi mdi-map-marker-radius"></i> <span>Manage
							City </span><span class="float-right"><i
							class="mdi mdi-chevron-right"></i></span></a>
					<ul class="list-unstyled">
						<li><a href="addCity">Add City</a></li>
						<li><a href="viewCity">View City</a></li>

					</ul></li>

				<li class="has_sub"><a href="javascript:void(0);"
					class="waves-effect waves-light"><i class="ti-package"></i> <span>Manage
							Package </span><span class="float-right"><i
							class="mdi mdi-chevron-right"></i></span></a>
					<ul class="list-unstyled">
						<li><a href="addPackage">Add Package</a></li>
						<li><a href="viewPackage">View Package</a></li>

					</ul></li>
					
					
					 
					<li><a href="viewDataset" class="waves-effect waves-light">
						<i class="fas fa-bullseye"></i> <span> View DataSet</span>
				</a></li>
					
					
				
					

				<li><a href="viewComplain"
					class="waves-effect waves-light"> <i class="mdi mdi-headset"></i>
						<span> View Complains</span>
				</a></li>

				<li><a href="viewFeedback"
					class="waves-effect waves-light"> <i class=" mdi mdi-thumb-up"></i>
						<span> View Feedback</span>
				</a></li>

				<li><a href="/logout" class="waves-effect waves-light">
						<i class="mdi mdi-logout"></i> <span> Logout</span>
				</a></li>
			</ul>
		</div>
		<div class="clearfix"></div>
	</div>
	<!-- end sidebarinner -->
</div>
