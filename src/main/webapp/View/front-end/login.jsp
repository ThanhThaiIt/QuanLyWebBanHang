<!DOCTYPE html>
<html lang="en">

<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<meta http-equiv="X-UA-Compatible" content="IE=edge">
<meta name="viewport" content="width=device-width,initial-scale=1">
<meta name="description" content="multikart">
<meta name="keywords" content="multikart">
<meta name="author" content="multikart">
<link rel="icon"
	href="${pageContext.request.contextPath}/View/assets/images/favicon/1.png"
	type="image/x-icon">
<link rel="shortcut icon"
	href="${pageContext.request.contextPath}/View/assets/images/favicon/1.png"
	type="image/x-icon">
<title>Multikart - Multi-purpopse E-commerce Html Template</title>

<!--Google font-->
<link
	href="https://fonts.googleapis.com/css?family=Lato:300,400,700,900"
	rel="stylesheet">
<link rel="preconnect" href="https://fonts.gstatic.com">
<link
	href="https://fonts.googleapis.com/css2?family=Yellowtail&display=swap"
	rel="stylesheet">

<!-- Icons -->
<link rel="stylesheet" type="text/css"
	href="${pageContext.request.contextPath}/View/assets/css/vendors/fontawesome.css">

<!--Slick slider css-->
<link rel="stylesheet" type="text/css"
	href="${pageContext.request.contextPath}/View/assets/css/vendors/slick.css">
<link rel="stylesheet" type="text/css"
	href="${pageContext.request.contextPath}/View/assets/css/vendors/slick-theme.css">

<!-- Animate icon -->
<link rel="stylesheet" type="text/css"
	href="${pageContext.request.contextPath}/View/assets/css/vendors/animate.css">

<!-- Themify icon -->
<link rel="stylesheet" type="text/css"
	href="${pageContext.request.contextPath}/View/assets/css/vendors/themify-icons.css">

<!-- Bootstrap css -->
<link rel="stylesheet" type="text/css"
	href="${pageContext.request.contextPath}/View/assets/css/vendors/bootstrap.css">

<!-- Theme css -->
<link rel="stylesheet" type="text/css"
	href="${pageContext.request.contextPath}/View/assets/css/style.css">

</head>

<body class="theme-color-1">


	<!-- header start -->
	<jsp:include page="HeaderFront.jsp" />
	<!-- header end -->


	<!-- breadcrumb start -->
	<div class="breadcrumb-section">
		<div class="container">
			<div class="row">
				<div class="col-sm-6">
					<div class="page-title">
						<h2>customer's login</h2>
					</div>
				</div>
				<div class="col-sm-6">
					<nav aria-label="breadcrumb" class="theme-breadcrumb">
						<ol class="breadcrumb">
							<li class="breadcrumb-item"><a href="index.html">Home</a></li>
							<li class="breadcrumb-item active">login</li>
						</ol>
					</nav>
				</div>
			</div>
		</div>
	</div>
	<!-- breadcrumb End -->


	<!--section start-->
	<section class="login-page section-b-space">
		<div class="container">
			<div class="row">
				<div class="col-lg-6">
					<h3>Login</h3>
					<div class="theme-card">
						<form class="theme-form" action="LoginController" method="post">
							<div class="form-row row">
								<%=request.getAttribute("msgLogin") != null ? request.getAttribute("msgLogin") : " "%>
							</div>
							<div class="form-group">
								<label for="email">Email</label> <input name="maill" type="text"
									class="form-control" id="email" placeholder="Email" required="">
							</div>
							<div class="form-group">
								<label for="review">Password</label> <input name="passw"
									type="password" class="form-control" id="review"
									placeholder="Enter your password" required="">

								<button type="submit" class="btn btn-solid">Login</button>
								
								</div>
						</form>
						<div class="footer-social">
                                <ul>
                                <li><a href="https://accounts.google.com/o/oauth2/auth?scope=profile&redirect_uri=http://localhost:8080/WebBanHang/LoginGoogleController&response_type=code
		   &client_id=181441056548-pa7bvl26vkc2jgpk6pgpbqfb17qbm7o9.apps.googleusercontent.com&approval_prompt=force"><i class="fa fa-google-plus" aria-hidden="true"></i></a></li>
                                </ul>
                            </div>
					</div>
				</div>
				<div class="col-lg-6 right-login">
					<h3>New Customer</h3>
					<div class="theme-card authentication-right">
						<h6 class="title-font">Create A Account</h6>
						<p>Sign up for a free account at our store. Registration is
							quick and easy. It allows you to be able to order from our shop.
							To start shopping click register.</p>
						<a href="#" class="btn btn-solid">Create an Account</a>
					</div>
				</div>
			</div>
		</div>
	</section>
	<!--Section ends-->


	<!-- footer start -->
	<jsp:include page="FooterFront.jsp" />
	<!-- footer end -->


	<!-- theme setting -->
	<div class="theme-settings">
		<ul>
			<li class="demo-li"><a href="javascript:void(0)"
				onclick="openSetting()">
					<div class="setting-sidebar" id="setting-icon">
						<h5>
							50+ <br>demo
						</h5>
					</div>
			</a></li>
			<li>
				<div class="dark-btn">Dark</div>
			</li>
			<li>
				<div class="rtl-btn">RTL</div>
			</li>
			<li class="input-picker"><input id="ColorPicker1" type="color"
				value="#ff4c3b" name="Background"></li>
		</ul>
	</div>
	<div class="scroll-setting-box">
		<div id="setting_box" class="setting-box">
			<a href="javascript:void(0)" class="overlay" onclick="closeSetting()"></a>
			<div class="setting_box_body">
				<div onclick="closeSetting()">
					<div class="sidebar-back text-start">
						<i class="fa fa-angle-left pe-2" aria-hidden="true"></i> Back
					</div>
				</div>
				<div class="setting-body">
					<div class="setting-title">
						<div>
							<img src="../assets/images/icon/logo.png" class="img-fluid"
								alt="">
							<h3>
								50+ <span>demos</span> <br> suit for any type of online
								store.
							</h3>
						</div>
					</div>
					<div class="setting-contant">
						<div class="row demo-section">
							<div class="col-md-4 col-6 text-center demo-effects">
								<div class="set-position">
									<a href="gradient.html" class="layout-container"> <img
										src="../assets/images/landing-page/demo/gradient.jpg"
										class="img-fluid bg-img bg-top" alt="">
									</a> <a href="gradient.html" class="demo-text">
										<h4>
											gradient
											<h4>
									</a>
								</div>
							</div>
							<div class="col-md-4 col-6 text-center demo-effects">
								<div class="set-position">
									<a href="index.html" class="layout-container"> <img
										src="../assets/images/landing-page/demo/fashion.jpg"
										class="img-fluid bg-img bg-top" alt="">
									</a> <a href="index.html" class="demo-text">
										<h4>fashion</h4>
									</a>
								</div>
							</div>
							<div class="col-md-4 col-6 text-center demo-effects">
								<div class="set-position">
									<a href="fashion-2.html" class="layout-container"> <img
										src="../assets/images/landing-page/demo/fashion-2.jpg"
										class="img-fluid bg-img bg-top" alt="">
									</a> <a href="fashion-2.html" class="demo-text">
										<h4>fashion 2</h4>
									</a>
								</div>
							</div>
							<div class="col-md-4 col-6 text-center demo-effects">
								<div class="set-position">
									<a href="fashion-3.html" class="layout-container"> <img
										src="../assets/images/landing-page/demo/fashion-3.jpg"
										class="img-fluid bg-img bg-top" alt="">
									</a> <a href="fashion-3.html" class="demo-text">
										<h4>fashion 3</h4>
									</a>
								</div>
							</div>
							<div class="col-md-4 col-6 text-center demo-effects">
								<div class="set-position">
									<a href="fashion-4.html" class="layout-container"> <img
										src="../assets/images/landing-page/demo/fashion-4.jpg"
										class="img-fluid bg-img bg-top" alt="">
									</a> <a href="fashion-4.html" class="demo-text">
										<h4>fashion 4</h4>
									</a>
								</div>
							</div>
							<div class="col-md-4 col-6 text-center demo-effects">
								<div class="set-position">
									<a href="fashion-5.html" class="layout-container"> <img
										src="../assets/images/landing-page/demo/fashion-5.jpg"
										class="img-fluid bg-img bg-top" alt="">
									</a> <a href="fashion-5.html" class="demo-text">
										<h4>fashion 5</h4>
									</a>
								</div>
							</div>
							<div class="col-md-4 col-6 text-center demo-effects">
								<div class="set-position">
									<a href="fashion-6.html" class="layout-container"> <img
										src="../assets/images/landing-page/demo/fashion-6.jpg"
										class="img-fluid bg-img bg-top" alt="">
									</a> <a href="fashion-6.html" class="demo-text">
										<h4>fashion 6</h4>
									</a>
								</div>
							</div>
							<div class="col-md-4 col-6 text-center demo-effects">
								<div class="set-position">
									<a href="fashion-7.html" class="layout-container"> <img
										src="../assets/images/landing-page/demo/fashion-7.jpg"
										class="img-fluid bg-img bg-top" alt="">
									</a> <a href="fashion-7.html" class="demo-text">
										<h4>fashion 7</h4>
									</a>
								</div>
							</div>
							<div class="col-md-4 col-6 text-center demo-effects">
								<div class="set-position">
									<a href="furniture.html" class="layout-container"> <img
										src="../assets/images/landing-page/demo/furniture.jpg"
										class="img-fluid bg-img bg-top" alt="">
									</a> <a href="furniture.html" class="demo-text">
										<h4>furniture</h4>
									</a>
								</div>
							</div>
							<div class="col-md-4 col-6 text-center demo-effects">
								<div class="set-position">
									<a href="furniture-2.html" class="layout-container"> <img
										src="../assets/images/landing-page/demo/furniture-2.jpg"
										class="img-fluid bg-img bg-top" alt="">
									</a> <a href="furniture-2.html" class="demo-text">
										<h4>furniture 2</h4>
									</a>
								</div>
							</div>
							<div class="col-md-4 col-6 text-center demo-effects">
								<div class="set-position">
									<a href="furniture-3.html" class="layout-container"> <img
										src="../assets/images/landing-page/demo/furniture-dark.jpg"
										class="img-fluid bg-img bg-top" alt="">
									</a> <a href="furniture-3.html" class="demo-text">
										<h4>furniture dark</h4>
									</a>
								</div>
							</div>
							<div class="col-md-4 col-6 text-center demo-effects">
								<div class="set-position">
									<a href="electronic-1.html" class="layout-container"> <img
										src="../assets/images/landing-page/demo/electronics.jpg"
										class="img-fluid bg-img bg-top" alt="">
									</a> <a href="electronic-1.html" class="demo-text">
										<h4>electronics</h4>
									</a>
								</div>
							</div>
							<div class="col-md-4 col-6 text-center demo-effects">
								<div class="set-position">
									<a href="electronic-2.html" class="layout-container"> <img
										src="../assets/images/landing-page/demo/electronics-2.jpg"
										class="img-fluid bg-img bg-top" alt="">
									</a> <a href="electronic-2.html" class="demo-text">
										<h4>electronics 2</h4>
									</a>
								</div>
							</div>
							<div class="col-md-4 col-6 text-center demo-effects">
								<div class="set-position">
									<a href="electronic-3.html" class="layout-container"> <img
										src="../assets/images/landing-page/demo/electronics-3.jpg"
										class="img-fluid bg-img bg-top" alt="">
									</a> <a href="electronic-3.html" class="demo-text">
										<h4>electronics 3</h4>
									</a>
								</div>
							</div>
							<div class="col-md-4 col-6 text-center demo-effects">
								<div class="set-position">
									<a href="marketplace-demo.html" class="layout-container"> <img
										src="../assets/images/landing-page/demo/marketplace.jpg"
										class="img-fluid bg-img bg-top" alt="">
									</a> <a href="marketplace-demo.html" class="demo-text">
										<h4>marketplace</h4>
									</a>
								</div>
							</div>
							<div class="col-md-4 col-6 text-center demo-effects">
								<div class="set-position">
									<a href="marketplace-demo-2.html" class="layout-container">
										<img
										src="../assets/images/landing-page/demo/marketplace-2.jpg"
										class="img-fluid bg-img bg-top" alt="">
									</a> <a href="marketplace-demo-2.html" class="demo-text">
										<h4>marketplace 2</h4>
									</a>
								</div>
							</div>
							<div class="col-md-4 col-6 text-center demo-effects">
								<div class="set-position">
									<a href="marketplace-demo-3.html" class="layout-container">
										<img
										src="../assets/images/landing-page/demo/marketplace-3.jpg"
										class="img-fluid bg-img bg-top" alt="">
									</a> <a href="marketplace-demo-3.html" class="demo-text">
										<h4>marketplace 3</h4>
									</a>
								</div>
							</div>
							<div class="col-md-4 col-6 text-center demo-effects">
								<div class="set-position">
									<a href="marketplace-demo-4.html" class="layout-container">
										<img
										src="../assets/images/landing-page/demo/marketplace-4.jpg"
										class="img-fluid bg-img bg-top" alt="">
									</a> <a href="marketplace-demo-4.html" class="demo-text">
										<h4>marketplace 4</h4>
									</a>
								</div>
							</div>
							<div class="col-md-4 col-6 text-center demo-effects">
								<div class="set-position">
									<a href="vegetables.html" class="layout-container"> <img
										src="../assets/images/landing-page/demo/vegetables.jpg"
										class="img-fluid bg-img bg-top" alt="">
									</a> <a href="vegetables.html" class="demo-text">
										<h4>vegetables</h4>
									</a>
								</div>
							</div>
							<div class="col-md-4 col-6 text-center demo-effects">
								<div class="set-position">
									<a href="vegetables-2.html" class="layout-container"> <img
										src="../assets/images/landing-page/demo/vegetables-2.jpg"
										class="img-fluid bg-img bg-top" alt="">
									</a> <a href="vegetables-2.html" class="demo-text">
										<h4>vegetables 2</h4>
									</a>
								</div>
							</div>
							<div class="col-md-4 col-6 text-center demo-effects">
								<div class="set-position">
									<a href="vegetables-3.html" class="layout-container"> <img
										src="../assets/images/landing-page/demo/vegetables-3.jpg"
										class="img-fluid bg-img bg-top" alt="">
									</a> <a href="vegetables-3.html" class="demo-text">
										<h4>vegetables 3</h4>
									</a>
								</div>
							</div>
							<div class="col-md-4 col-6 text-center demo-effects">
								<div class="set-position">
									<a href="jewellery.html" class="layout-container"> <img
										src="../assets/images/landing-page/demo/jewellery.jpg"
										class="img-fluid bg-img bg-top" alt="">
									</a> <a href="jewellery.html" class="demo-text">
										<h4>jewellery</h4>
									</a>
								</div>
							</div>
							<div class="col-md-4 col-6 text-center demo-effects">
								<div class="set-position">
									<a href="jewellery-2.html" class="layout-container"> <img
										src="../assets/images/landing-page/demo/jewellery-2.jpg"
										class="img-fluid bg-img bg-top" alt="">
									</a> <a href="jewellery-2.html" class="demo-text">
										<h4>jewellery 2</h4>
									</a>
								</div>
							</div>
							<div class="col-md-4 col-6 text-center demo-effects">
								<div class="set-position">
									<a href="jewellery-3.html" class="layout-container"> <img
										src="../assets/images/landing-page/demo/jewellery-3.jpg"
										class="img-fluid bg-img bg-top" alt="">
									</a> <a href="jewellery-3.html" class="demo-text">
										<h4>jewellery 3</h4>
									</a>
								</div>
							</div>
							<div class="col-md-4 col-6 text-center demo-effects">
								<div class="set-position">
									<a href="bags.html" class="layout-container"> <img
										src="../assets/images/landing-page/demo/bag.jpg"
										class="img-fluid bg-img bg-top" alt="">
									</a> <a href="bags.html" class="demo-text">
										<h4>bag</h4>
									</a>
								</div>
							</div>
							<div class="col-md-4 col-6 text-center demo-effects">
								<div class="set-position">
									<a href="watch.html" class="layout-container"> <img
										src="../assets/images/landing-page/demo/watch.jpg"
										class="img-fluid bg-img bg-top" alt="">
									</a> <a href="watch.html" class="demo-text">
										<h4>watch</h4>
									</a>
								</div>
							</div>
							<div class="col-md-4 col-6 text-center demo-effects">
								<div class="set-position">
									<a href="medical.html" class="layout-container"> <img
										src="../assets/images/landing-page/demo/medical.jpg"
										class="img-fluid bg-img bg-top" alt="">
									</a> <a href="medical.html" class="demo-text">
										<h4>medical</h4>
									</a>
								</div>
							</div>
							<div class="col-md-4 col-6 text-center demo-effects">
								<div class="set-position">
									<a href="perfume.html" class="layout-container"> <img
										src="../assets/images/landing-page/demo/perfume.jpg"
										class="img-fluid bg-img bg-top" alt="">
									</a> <a href="perfume.html" class="demo-text">
										<h4>perfume</h4>
									</a>
								</div>
							</div>
							<div class="col-md-4 col-6 text-center demo-effects">
								<div class="set-position">
									<a href="yoga.html" class="layout-container"> <img
										src="../assets/images/landing-page/demo/yoga.jpg"
										class="img-fluid bg-img bg-top" alt="">
									</a> <a href="yoga.html" class="demo-text">
										<h4>yoga</h4>
									</a>
								</div>
							</div>
							<div class="col-md-4 col-6 text-center demo-effects">
								<div class="set-position">
									<a href="christmas.html" class="layout-container"> <img
										src="../assets/images/landing-page/demo/christmas.jpg"
										class="img-fluid bg-img bg-top" alt="">
									</a> <a href="christmas.html" class="demo-text">
										<h4>christmas</h4>
									</a>
								</div>
							</div>
							<div class="col-md-4 col-6 text-center demo-effects">
								<div class="set-position">
									<a href="bicycle.html" class="layout-container"> <img
										src="../assets/images/landing-page/demo/bicycle.jpg"
										class="img-fluid bg-img bg-top" alt="">
									</a> <a href="bicycle.html" class="demo-text">
										<h4>bicycle</h4>
									</a>
								</div>
							</div>
							<div class="col-md-4 col-6 text-center demo-effects">
								<div class="set-position">
									<a href="marijuana.html" class="layout-container"> <img
										src="../assets/images/landing-page/demo/marijuana.jpg"
										class="img-fluid bg-img bg-top" alt="">
									</a> <a href="marijuana.html" class="demo-text">
										<h4>marijuana</h4>
									</a>
								</div>
							</div>
							<div class="col-md-4 col-6 text-center demo-effects">
								<div class="set-position">
									<a href="gym-product.html" class="layout-container"> <img
										src="../assets/images/landing-page/demo/gym.jpg"
										class="img-fluid bg-img bg-top" alt="">
									</a> <a href="gym-product.html" class="demo-text">
										<h4>gym</h4>
									</a>
								</div>
							</div>
							<div class="col-md-4 col-6 text-center demo-effects">
								<div class="set-position">
									<a href="tools.html" class="layout-container"> <img
										src="../assets/images/landing-page/demo/tools.jpg"
										class="img-fluid bg-img bg-top" alt="">
									</a> <a href="tools.html" class="demo-text">
										<h4>tools</h4>
									</a>
								</div>
							</div>
							<div class="col-md-4 col-6 text-center demo-effects">
								<div class="set-position">
									<a href="shoes.html" class="layout-container"> <img
										src="../assets/images/landing-page/demo/shoes.jpg"
										class="img-fluid bg-img bg-top" alt="">
									</a> <a href="shoes.html" class="demo-text">
										<h4>shoes</h4>
									</a>
								</div>
							</div>
							<div class="col-md-4 col-6 text-center demo-effects">
								<div class="set-position">
									<a href="books.html" class="layout-container"> <img
										src="../assets/images/landing-page/demo/books.jpg"
										class="img-fluid bg-img bg-top" alt="">
									</a> <a href="books.html" class="demo-text">
										<h4>books</h4>
									</a>
								</div>
							</div>
							<div class="col-md-4 col-6 text-center demo-effects">
								<div class="set-position">
									<a href="kids.html" class="layout-container"> <img
										src="../assets/images/landing-page/demo/kids.jpg"
										class="img-fluid bg-img bg-top" alt="">
									</a> <a href="kids.html" class="demo-text">
										<h4>kids</h4>
									</a>
								</div>
							</div>
							<div class="col-md-4 col-6 text-center demo-effects">
								<div class="set-position">
									<a href="game.html" class="layout-container"> <img
										src="../assets/images/landing-page/demo/game.jpg"
										class="img-fluid bg-img bg-top" alt="">
									</a> <a href="game.html" class="demo-text">
										<h4>game</h4>
									</a>
								</div>
							</div>
							<div class="col-md-4 col-6 text-center demo-effects">
								<div class="set-position">
									<a href="beauty.html" class="layout-container"> <img
										src="../assets/images/landing-page/demo/beauty.jpg"
										class="img-fluid bg-img bg-top" alt="">
									</a> <a href="beauty.html" class="demo-text">
										<h4>beauty</h4>
									</a>
								</div>
							</div>
							<div class="col-md-4 col-6 text-center demo-effects">
								<div class="set-position">
									<a href="left_sidebar-demo.html" class="layout-container">
										<img src="../assets/images/landing-page/demo/left-sidebar.jpg"
										class="img-fluid bg-img bg-top" alt="">
									</a> <a href="left_sidebar-demo.html" class="demo-text">
										<h4>left sidebar</h4>
									</a>
								</div>
							</div>
							<div class="col-md-4 col-6 text-center demo-effects">
								<div class="set-position">
									<a href="video-slider.html" class="layout-container"> <img
										src="../assets/images/landing-page/demo/video-slider.jpg"
										class="img-fluid bg-img bg-top" alt="">
									</a> <a href="video-slider.html" class="demo-text">
										<h4>video slider</h4>
									</a>
								</div>
							</div>
							<div class="col-md-4 col-6 text-center demo-effects">
								<div class="set-position">
									<a href="metro.html" class="layout-container"> <img
										src="../assets/images/landing-page/demo/metro.jpg"
										class="img-fluid bg-img bg-top" alt="">
									</a> <a href="metro.html" class="demo-text">
										<h4>metro</h4>
									</a>
								</div>
							</div>
							<div class="col-md-4 col-6 text-center demo-effects">
								<div class="set-position">
									<a href="goggles.html" class="layout-container"> <img
										src="../assets/images/landing-page/demo/goggles.jpg"
										class="img-fluid bg-img bg-top" alt="">
									</a> <a href="goggles.html" class="demo-text">
										<h4>goggles</h4>
									</a>
								</div>
							</div>
							<div class="col-md-4 col-6 text-center demo-effects">
								<div class="set-position">
									<a href="flower.html" class="layout-container"> <img
										src="../assets/images/landing-page/demo/flower.jpg"
										class="img-fluid bg-img bg-top" alt="">
									</a> <a href="flower.html" class="demo-text">
										<h4>flower</h4>
									</a>
								</div>
							</div>
							<div class="col-md-4 col-6 text-center demo-effects">
								<div class="set-position">
									<a href="light.html" class="layout-container"> <img
										src="../assets/images/landing-page/demo/light.jpg"
										class="img-fluid bg-img bg-top" alt="">
									</a> <a href="light.html" class="demo-text">
										<h4>light</h4>
									</a>
								</div>
							</div>
							<div class="col-md-4 col-6 text-center demo-effects">
								<div class="set-position">
									<a href="nursery.html" class="layout-container"> <img
										src="../assets/images/landing-page/demo/nursery.jpg"
										class="img-fluid bg-img bg-top" alt="">
									</a> <a href="nursery.html" class="demo-text">
										<h4>nursery</h4>
									</a>
								</div>
							</div>
							<div class="col-md-4 col-6 text-center demo-effects">
								<div class="set-position">
									<a href="pets.html" class="layout-container"> <img
										src="../assets/images/landing-page/demo/pets.jpg"
										class="img-fluid bg-img bg-top" alt="">
									</a> <a href="pets.html" class="demo-text">
										<h4>pets</h4>
									</a>
								</div>
							</div>
							<div class="col-md-4 col-6 text-center demo-effects">
								<div class="set-position">
									<a href="video.html" class="layout-container"> <img
										src="../assets/images/landing-page/demo/video.jpg"
										class="img-fluid bg-img bg-top" alt="">
									</a> <a href="video.html" class="demo-text">
										<h4>video</h4>
									</a>
								</div>
							</div>
							<div class="col-md-4 col-6 text-center demo-effects">
								<div class="set-position">
									<a href="lookbook-demo.html" class="layout-container"> <img
										src="../assets/images/landing-page/demo/lookbook.jpg"
										class="img-fluid bg-img bg-top" alt="">
									</a> <a href="lookbook-demo.html" class="demo-text">
										<h4>lookbook</h4>
									</a>
								</div>
							</div>
							<div class="col-md-4 col-6 text-center demo-effects">
								<div class="set-position">
									<a href="full-page.html" class="layout-container"> <img
										src="../assets/images/landing-page/demo/full-page.jpg"
										class="img-fluid bg-img bg-top" alt="">
									</a> <a href="full-page.html" class="demo-text">
										<h4>full page</h4>
									</a>
								</div>
							</div>
							<div class="col-md-4 col-6 text-center demo-effects">
								<div class="set-position">
									<a href="instagram-shop.html" class="layout-container"> <img
										src="../assets/images/landing-page/demo/instagram.jpg"
										class="img-fluid bg-img bg-top" alt="">
									</a> <a href="instagram-shop.html" class="demo-text">
										<h4>instagram</h4>
									</a>
								</div>
							</div>
							<div class="col-md-4 col-6 text-center demo-effects">
								<div class="set-position">
									<a href="parallax.html" class="layout-container"> <img
										src="../assets/images/landing-page/demo/parallax.jpg"
										class="img-fluid bg-img bg-top" alt="">
									</a> <a href="parallax.html" class="demo-text">
										<h4>parallax</h4>
									</a>
								</div>
							</div>
						</div>
					</div>
				</div>
			</div>
		</div>
	</div>
	<!-- theme setting -->


	<!-- tap to top start -->
	<div class="tap-top">
		<div>
			<i class="fa fa-angle-double-up"></i>
		</div>
	</div>
	<!-- tap to top end -->


	<!-- latest jquery-->
	<script
		src="${pageContext.request.contextPath}/View/assets/js/jquery-3.3.1.min.js"></script>

	<!-- menu js-->
	<script src="${pageContext.request.contextPath}/View/assets/js/menu.js"></script>

	<!-- lazyload js-->
	<script
		src="${pageContext.request.contextPath}/View/assets/js/lazysizes.min.js"></script>

	<!-- slick js-->
	<script
		src="${pageContext.request.contextPath}/View/assets/js/slick.js"></script>

	<!-- Bootstrap js-->
	<script
		src="${pageContext.request.contextPath}/View/assets/js/bootstrap.bundle.min.js"></script>

	<!-- Bootstrap Notification js-->
	<script
		src="${pageContext.request.contextPath}/View/assets/js/bootstrap-notify.min.js"></script>

	<!-- Theme js-->
	<script
		src="${pageContext.request.contextPath}/View/assets/js/theme-setting.js"></script>
	<script
		src="${pageContext.request.contextPath}/View/assets/js/script.js"></script>

	<script>
		function openSearch() {
			document.getElementById("search-overlay").style.display = "block";
		}

		function closeSearch() {
			document.getElementById("search-overlay").style.display = "none";
		}
	</script>
</body>

</html>