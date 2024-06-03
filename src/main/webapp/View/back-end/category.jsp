<!DOCTYPE html>
<html lang="en">
<head>

<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<meta http-equiv="X-UA-Compatible" content="IE=edge">
<meta name="viewport" content="width=device-width, initial-scale=1.0">
<meta name="description"
	content="Multikart admin is super flexible, powerful, clean &amp; modern responsive bootstrap 4 admin template with unlimited possibilities.">
<meta name="keywords"
	content="admin template, Multikart admin template, dashboard template, flat admin template, responsive admin template, web app">
<meta name="author" content="pixelstrap">
<link rel="icon"
	href="${pageContext.request.contextPath}/View/assets/images/dashboard/favicon.png"
	type="image/x-icon">
<link rel="shortcut icon"
	href="${pageContext.request.contextPath}/View/assets/images/dashboard/favicon.png"
	type="image/x-icon">
<title>Multikart - Premium Admin Template</title>

<!-- Google font-->
<link
	href="https://fonts.googleapis.com/css?family=Work+Sans:100,200,300,400,500,600,700,800,900"
	rel="stylesheet">
<link
	href="https://fonts.googleapis.com/css?family=Nunito:200,200i,300,300i,400,400i,600,600i,700,700i,800,800i,900,900i"
	rel="stylesheet">

<!-- Font Awesome-->
<link rel="stylesheet" type="text/css"
	href="${pageContext.request.contextPath}/View/assets/css/vendors/fontawesome.css">

<!-- Flag icon-->
<link rel="stylesheet" type="text/css"
	href="${pageContext.request.contextPath}/View/assets/css/vendors/flag-icon.css">

<!-- jsgrid css-->
<link rel="stylesheet" type="text/css"
	href="${pageContext.request.contextPath}/View/assets/css/vendors/jsgrid.css">

<!-- Bootstrap css-->
<link rel="stylesheet" type="text/css"
	href="${pageContext.request.contextPath}/View/assets/css/vendors/bootstrap.css">

<!-- App css-->
<link rel="stylesheet" type="text/css"
	href="${pageContext.request.contextPath}/View/assets/css/admin.css">
<style>
.btn-red {
	background-color: red;
	color: white;
	padding: 10px 20px;
	border: none;
	border-radius: 5px;
	cursor: pointer;
	font-size: 16px;
}

.btn-red:hover {
	background-color: darkred;
}
</style>
</head>
<body>


	<!-- page-wrapper Start-->
	<div class="page-wrapper">

		<!-- Page Header Start-->
		<jsp:include page="HeaderAdmin.jsp" />
		<!-- Page Header Ends -->

		<!-- Page Body Start-->
		<div class="page-body-wrapper">

			<!-- Page Sidebar Start-->
			<jsp:include page="SideBar.jsp" />
			<!-- Page Sidebar Ends-->

			<!-- Right sidebar Start-->
			<div class="right-sidebar" id="right_side_bar">
				<div>
					<div class="container p-0">
						<div class="modal-header p-l-20 p-r-20">
							<div class="col-sm-8 p-0">
								<h6 class="modal-title font-weight-bold">FRIEND LIST</h6>
							</div>
							<div class="col-sm-4 text-end p-0">
								<i class="me-2" data-feather="settings"></i>
							</div>
						</div>
					</div>
					<div class="friend-list-search mt-0">
						<input type="text" placeholder="search friend"><i
							class="fa fa-search"></i>
					</div>
					<div class="p-l-30 p-r-30">
						<div class="chat-box">
							<div class="people-list friend-list">
								<ul class="list">
									<li class="clearfix"><img
										class="rounded-circle user-image"
										src="${pageContext.request.contextPath}/View/assets/images/dashboard/user.png"
										alt="">
										<div class="status-circle online"></div>
										<div class="about">
											<div class="name">Vincent Porter</div>
											<div class="status">Online</div>
										</div></li>
									<li class="clearfix"><img
										class="rounded-circle user-image"
										src="${pageContext.request.contextPath}/View/assets/images/dashboard/user1.jpg"
										alt="">
										<div class="status-circle away"></div>
										<div class="about">
											<div class="name">Ain Chavez</div>
											<div class="status">28 minutes ago</div>
										</div></li>
									<li class="clearfix"><img
										class="rounded-circle user-image"
										src="${pageContext.request.contextPath}/View/assets/images/dashboard/user2.jpg"
										alt="">
										<div class="status-circle online"></div>
										<div class="about">
											<div class="name">Kori Thomas</div>
											<div class="status">Online</div>
										</div></li>
									<li class="clearfix"><img
										class="rounded-circle user-image"
										src="${pageContext.request.contextPath}/View/assets/images/dashboard/user3.jpg"
										alt="">
										<div class="status-circle online"></div>
										<div class="about">
											<div class="name">Erica Hughes</div>
											<div class="status">Online</div>
										</div></li>
									<li class="clearfix"><img
										class="rounded-circle user-image"
										src="${pageContext.request.contextPath}/View/assets/images/dashboard/man.png"
										alt="">
										<div class="status-circle offline"></div>
										<div class="about">
											<div class="name">Ginger Johnston</div>
											<div class="status">2 minutes ago</div>
										</div></li>
									<li class="clearfix"><img
										class="rounded-circle user-image"
										src="${pageContext.request.contextPath}/View/assets/images/dashboard/user5.jpg"
										alt="">
										<div class="status-circle away"></div>
										<div class="about">
											<div class="name">Prasanth Anand</div>
											<div class="status">2 hour ago</div>
										</div></li>
									<li class="clearfix"><img
										class="rounded-circle user-image"
										src="${pageContext.request.contextPath}/View/assets/images/dashboard/designer.jpg"
										alt="">
										<div class="status-circle online"></div>
										<div class="about">
											<div class="name">Hileri Jecno</div>
											<div class="status">Online</div>
										</div></li>
								</ul>
							</div>
						</div>
					</div>
				</div>
			</div>
			<!-- Right sidebar Ends-->

			<div class="page-body">

				<!-- Container-fluid starts-->
				<div class="container-fluid">
					<div class="page-header">
						<div class="row">
							<div class="col-lg-6">
								<div class="page-header-left">
									<h3>
										Category <small>Multikart Admin panel</small>
									</h3>
								</div>
							</div>
							<div class="col-lg-6">
								<ol class="breadcrumb pull-right">
									<li class="breadcrumb-item"><a href="index.html"><i
											data-feather="home"></i></a></li>
									<li class="breadcrumb-item">Physical</li>
									<li class="breadcrumb-item active">Category</li>
								</ol>
							</div>
						</div>
					</div>
				</div>
				<!-- Container-fluid Ends-->

				<!-- Container-fluid starts-->
				<div class="container-fluid">
					<div class="row">
						<div class="col-sm-12">
							<div class="card">
								<div class="card-header">
									<h5>Products Category</h5>
								</div>
								<div class="card-body">
									<div class="btn-popup pull-right">


 


										
										<a class="btn-red" href="${pageContext.request.contextPath}/LoadSizeColorr">
    Add Product Nee
</a>
										
										

										<div class="modal fade" id="exampleModal" tabindex="-1"
											role="dialog" aria-labelledby="exampleModalLabel"
											aria-hidden="true">
											<div class="modal-dialog" role="document">
												<div class="modal-content">
													<div class="modal-header">
														


														<button class="btn-close" type="button"
															data-bs-dismiss="modal" aria-label="Close">
															<span aria-hidden="true">×</span>
														</button>
													</div>
													<div class="modal-body">
														<form class="needs-validation">
															<div class="form">
																<div class="form-group">
																	<label for="validationCustom01" class="mb-1">Category
																		Name :</label> <input class="form-control"
																		id="validationCustom01" type="text">
																</div>
																<div class="form-group mb-0">
																	<label for="validationCustom02" class="mb-1">Category
																		Image :</label> <input class="form-control"
																		id="validationCustom02" type="file">
																</div>
															</div>
														</form>
													</div>
													<div class="modal-footer">
														<button class="btn btn-primary" type="button">Save</button>
														<button class="btn btn-secondary" type="button"
															data-bs-dismiss="modal">Close</button>
													</div>
												</div>
											</div>
										</div>
									</div>
									<div id="basicScenario"
										class="product-physical table-responsive"></div>
								</div>
							</div>
						</div>
					</div>
				</div>
				<!-- Container-fluid Ends-->

			</div>

			<!-- footer start-->
			<footer class="footer">
				<div class="container-fluid">
					<div class="row">
						<div class="col-md-6 footer-copyright">
							<p class="mb-0">Copyright 2019 © Multikart All rights
								reserved.</p>
						</div>
						<div class="col-md-6">
							<p class="pull-right mb-0">
								Hand crafted & made with<i class="fa fa-heart"></i>
							</p>
						</div>
					</div>
				</div>
			</footer>
			<!-- footer end-->

		</div>

	</div>

	<!-- latest jquery-->
	<script
		src="${pageContext.request.contextPath}/View/assets/js/jquery-3.3.1.min.js"></script>

	<!-- Bootstrap js-->
	<script
		src="${pageContext.request.contextPath}/View/assets/js/bootstrap.bundle.min.js"></script>

	<!-- feather icon js-->
	<script
		src="${pageContext.request.contextPath}/View/assets/js/icons/feather-icon/feather.min.js"></script>
	<script
		src="${pageContext.request.contextPath}/View/assets/js/icons/feather-icon/feather-icon.js"></script>

	<!-- Sidebar jquery-->
	<script
		src="${pageContext.request.contextPath}/View/assets/js/sidebar-menu.js"></script>

	<!--Customizer admin-->
	<script
		src="${pageContext.request.contextPath}/View/assets/js/admin-customizer.js"></script>

	<!-- Jsgrid js-->
	<script
		src="${pageContext.request.contextPath}/View/assets/js/jsgrid/jsgrid.min.js"></script>
	<script
		src="${pageContext.request.contextPath}/View/assets/js/jsgrid/griddata-manage-product.js"></script>
	<script
		src="${pageContext.request.contextPath}/View/assets/js/jsgrid/jsgrid-manage-product.js"></script>

	<!--right sidebar js-->
	<script
		src="${pageContext.request.contextPath}/View/assets/js/chat-menu.js"></script>

	<!--script admin-->
	<script
		src="${pageContext.request.contextPath}/View/assets/js/admin-script.js"></script>

</body>
</html>
