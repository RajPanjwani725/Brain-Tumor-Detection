
<div class="topbar">
	<nav class="navbar-custom">
		<ul class="list-inline float-right mb-0">




			<li class="list-inline-item dropdown notification-list"><a
				class="nav-link dropdown-toggle arrow-none waves-effect waves-light nav-user"
				data-toggle="dropdown" href="#" role="button" aria-haspopup="false"
				aria-expanded="false"><img 
					src="<%=request.getContextPath()%>/adminResources/image/avatar.png" alt="user"
					class="rounded-circle"></a>
				<div class="dropdown-menu dropdown-menu-right profile-dropdown">
					<!-- item-->
					<div class="dropdown-item noti-title">
						<h5>Welcome</h5>
					</div>
					
					<a class="dropdown-item text-danger" href="/logout"><i
						class="mdi mdi-power text-danger"></i> Logout</a>
				</div></li>
		</ul>
		<ul class="list-inline menu-left mb-0">
			<li class="float-left">
				<button
					class="button-menu-mobile open-left waves-light waves-effect">
					<i class="mdi mdi-menu"></i>
				</button>
			</li>

		</ul>
		<div class="clearfix"></div>
	</nav>
</div>
<!-- Top Bar End -->
