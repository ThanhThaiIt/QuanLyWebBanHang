<!DOCTYPE html>
<html lang="en">
<%@ taglib prefix="c" uri="http://java.sun.com/jstl/core_rt"%>
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


<script type="text/javascript">
	document.getElementById("countrySelect").addEventListener(
			"change",
			function() {
				var selectedCountry = this.value;

				// Tạo một đối tượng XMLHttpRequest để gửi dữ liệu đến servlet
				var xhr = new XMLHttpRequest();
				xhr.open("POST", "Checkout2Controller", true);
				xhr.setRequestHeader("Content-Type",
						"application/x-www-form-urlencoded");
				xhr.onreadystatechange = function() {
					if (xhr.readyState === 4 && xhr.status === 200) {
						// Xử lý phản hồi từ servlet nếu cần
					}
				};

				// Gửi dữ liệu đã chọn đến servlet
				xhr.send("selectedCountry=" + selectedCountry);
			});

	/*function updateTotal() {
	 var totalPrice = parseFloat(document.getElementById("totalPrice").textContent.replace("$", ""));
	
	 // Kiểm tra checkbox Free Shipping
	 var freeShippingCheckbox = document.getElementById("free-shipping");
	 if (freeShippingCheckbox.checked) {
	 // Nếu được chọn, giảm giá trị tổng tiền đi 0$
	 totalPrice += 0;
	 }
	
	 // Kiểm tra checkbox Local Pickup
	 var localPickupCheckbox = document.getElementById("local-pickup");
	 if (localPickupCheckbox.checked) {
	 // Nếu được chọn, tăng giá trị tổng tiền lên 20$
	 totalPrice += 20;
	 }
	
	 // Cập nhật giá trị tổng tiền
	 document.getElementById("totalPrice").textContent = "$" + totalPrice.toFixed(2);
	 }*/
</script>




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
	<jsp:include page="LoaderStart.jsp" />
	<!-- header end -->

	<!-- breadcrumb start -->
	<div class="breadcrumb-section">
		<div class="container">
			<div class="row">
				<div class="col-sm-6">
					<div class="page-title">
						<h1 style="color: red;">Hello ${ssName}</h1>
						<br>
						<p>Please enter complete information to complete the order</p>
					</div>
				</div>
				<div class="col-sm-6">
					<nav aria-label="breadcrumb" class="theme-breadcrumb">
						<ol class="breadcrumb">
							<li class="breadcrumb-item"><a href="index.html">Home</a></li>
							<li class="breadcrumb-item active" aria-current="page">Check-out</li>
						</ol>
					</nav>
				</div>
			</div>
		</div>
	</div>
	<!-- breadcrumb End -->


	<!-- section start -->
	<section class="section-b-space">
		<div class="container">
			<div class="checkout-page">
				<div class="checkout-form">
					<form action="Checkout2Controller" method="post">
						<div class="row">
							<div class="col-lg-6 col-sm-12 col-xs-12">
								<div class="checkout-title">
									<h3>Billing Details</h3>
								</div>
								<div class="row check-out">
									<div class="form-group col-md-6 col-sm-6 col-xs-12">
										<div class="field-label">First Name</div>
										<input type="text" name="fname" value="" placeholder="">
									</div>
									<div class="form-group col-md-6 col-sm-6 col-xs-12">
										<div class="field-label">Last Name</div>
										<input type="text" name="lname" value="" placeholder="">
									</div>
									<div class="form-group col-md-6 col-sm-6 col-xs-12">
										<div class="field-label">Phone</div>
										<input type="text" name="phone" value="" placeholder="">
									</div>
									<div class="form-group col-md-6 col-sm-6 col-xs-12">
										<div class="field-label">Email Address</div>
										<input type="text" name="email" value="" placeholder="">
									</div>
									<div class="form-group col-md-12 col-sm-12 col-xs-12">
										<div class="field-label">Country</div>
										<select id="Points" name="Points">
											<jsp:include page="Country.jsp" />
										</select>
									</div>
									<div class="form-group col-md-12 col-sm-12 col-xs-12">
										<div class="field-label">Address</div>
										<input type="text" name="address" value=""
											placeholder="Street address">
									</div>
									<div class="form-group col-md-12 col-sm-12 col-xs-12">
										<div class="field-label">Town/City</div>
										<input type="text" name="towncity" value="" placeholder="">
									</div>
									<div class="form-group col-md-12 col-sm-6 col-xs-12">
										<div class="field-label">State / County</div>
										<input type="text" name="statecountry" value="" placeholder="">
									</div>

									<div class="form-group col-lg-12 col-md-12 col-sm-12 col-xs-12">
										<input type="checkbox" name="shipping-option"
											id="account-option"> &ensp; <label
											for="account-option">Create An Account?</label>
									</div>
								</div>
							</div>
							<div class="col-lg-6 col-sm-12 col-xs-12">
								<div class="checkout-details">
									<div class="order-box">
										<div class="title-box">
											<div>
												Product <span>Total</span>
											</div>
										</div>

										<c:forEach items="${sessionScope.listProduct}" var="list">

											<ul class="qty">
												<li>${list.getName()}<span>$${list.getPrice()}</span></li>

											</ul>
										</c:forEach>



										<ul class="sub-total">
											<li>Subtotal <span class="count">$${totalPrice}</span></li>
											<li>Shipping
												<div class="shipping">
													<div class="shopping-option">
														<input type="checkbox" name="freeshipping"
															id="free-shipping"> <label for="free-shipping">Free
															Shipping</label>
													</div>
													<div class="shopping-option">
														<input type="checkbox" name="localpickup"
															id="local-pickup"> <label for="local-pickup">Local
															Pickup</label>
													</div>
												</div>
											</li>
										</ul>
										<ul class="total">
											<li>Total <span class="count">$${totalPrice}</span></li>

										</ul>
									</div>
									<div class="payment-box">
										<div class="upper-box">
											<div class="payment-options">
												<ul>
													
													<li>
														<div class="radio-option">
															<input type="radio" name="payment-group" value="0" id="payment-2">
															<label for="payment-2">Cash On Delivery<span
																class="small-text">Please send a check to Store
																	Name, Store Street, Store Town, Store State / County,
																	Store Postcode.</span></label>
														</div>
													</li>
													<li>
														<div class="radio-option paypal">
															<input type="radio" value="1" name="payment-group" id="payment-3">
															<label for="payment-3">PayPal<span class="image"><img
																	src="../assets/images/paypal.png" alt=""></span></label>
														</div>
													</li>
												</ul>
											</div>
										</div>

										<!-- onclick="window.location.href='Checkout2Controller'" -->

										<div class="text-end">
											<button type="submit" class="btn-solid btn">Place
												Order</button>
										</div>
									</div>
								</div>
							</div>
						</div>
					</form>
				</div>
			</div>
		</div>
	</section>
	<!-- section end -->


	<!-- footer start -->
	<footer class="footer-light">
		<div class="light-layout">
			<div class="container">
				<section class="small-section border-section border-top-0">
					<div class="row">
						<div class="col-lg-6">
							<div class="subscribe">
								<div>
									<h4>KNOW IT ALL FIRST!</h4>
									<p>Never Miss Anything From Multikart By Signing Up To Our
										Newsletter.</p>
								</div>
							</div>
						</div>
						<div class="col-lg-6">
							<form
								action="https://pixelstrap.us19.list-manage.com/subscribe/post?u=5a128856334b598b395f1fc9b&amp;id=082f74cbda"
								class="form-inline subscribe-form auth-form needs-validation"
								method="post" id="mc-embedded-subscribe-form"
								name="mc-embedded-subscribe-form" target="_blank">
								<div class="form-group mx-sm-3">
									<input type="text" class="form-control" name="EMAIL"
										id="mce-EMAIL" placeholder="Enter your email"
										required="required">
								</div>
								<button type="submit" class="btn btn-solid" id="mc-submit">subscribe</button>
							</form>
						</div>
					</div>
				</section>
			</div>
		</div>
		<section class="section-b-space light-layout">
			<div class="container">
				<div class="row footer-theme partition-f">
					<div class="col-lg-4 col-md-6">
						<div class="footer-title footer-mobile-title">
							<h4>about</h4>
						</div>
						<div class="footer-contant">
							<div class="footer-logo">
								<img src="../assets/images/icon/logo.png" alt="">
							</div>
							<p>Lorem ipsum dolor sit amet, consectetur adipiscing elit,
								sed do eiusmod tempor incididunt ut labore et dolore magna
								aliqua. Ut enim ad minim veniam,</p>
							<div class="footer-social">
								<ul>
									<li><a href="#"><i class="fa fa-facebook"
											aria-hidden="true"></i></a></li>
									<li><a href="#"><i class="fa fa-google-plus"
											aria-hidden="true"></i></a></li>
									<li><a href="#"><i class="fa fa-twitter"
											aria-hidden="true"></i></a></li>
									<li><a href="#"><i class="fa fa-instagram"
											aria-hidden="true"></i></a></li>
									<li><a href="#"><i class="fa fa-rss"
											aria-hidden="true"></i></a></li>
								</ul>
							</div>
						</div>
					</div>
					<div class="col offset-xl-1">
						<div class="sub-title">
							<div class="footer-title">
								<h4>my account</h4>
							</div>
							<div class="footer-contant">
								<ul>
									<li><a href="#">mens</a></li>
									<li><a href="#">womens</a></li>
									<li><a href="#">clothing</a></li>
									<li><a href="#">accessories</a></li>
									<li><a href="#">featured</a></li>
								</ul>
							</div>
						</div>
					</div>
					<div class="col">
						<div class="sub-title">
							<div class="footer-title">
								<h4>why we choose</h4>
							</div>
							<div class="footer-contant">
								<ul>
									<li><a href="#">shipping & return</a></li>
									<li><a href="#">secure shopping</a></li>
									<li><a href="#">gallary</a></li>
									<li><a href="#">affiliates</a></li>
									<li><a href="#">contacts</a></li>
								</ul>
							</div>
						</div>
					</div>
					<div class="col">
						<div class="sub-title">
							<div class="footer-title">
								<h4>store information</h4>
							</div>
							<div class="footer-contant">
								<ul class="contact-list">
									<li><i class="fa fa-map-marker"></i>Multikart Demo Store,
										Demo store India 345-659</li>
									<li><i class="fa fa-phone"></i>Call Us: 123-456-7898</li>
									<li><i class="fa fa-envelope-o"></i>Email Us:
										Support@Multikart.com</li>
									<li><i class="fa fa-fax"></i>Fax: 123456</li>
								</ul>
							</div>
						</div>
					</div>
				</div>
			</div>
		</section>
		<div class="sub-footer">
			<div class="container">
				<div class="row">
					<div class="col-xl-6 col-md-6 col-sm-12">
						<div class="footer-end">
							<p>
								<i class="fa fa-copyright" aria-hidden="true"></i> 2017-18
								themeforest powered by pixelstrap
							</p>
						</div>
					</div>
					<div class="col-xl-6 col-md-6 col-sm-12">
						<div class="payment-card-bottom">
							<ul>
								<li><a href="#"><img
										src="../assets/images/icon/visa.png" alt=""></a></li>
								<li><a href="#"><img
										src="../assets/images/icon/mastercard.png" alt=""></a></li>
								<li><a href="#"><img
										src="../assets/images/icon/paypal.png" alt=""></a></li>
								<li><a href="#"><img
										src="../assets/images/icon/american-express.png" alt=""></a>
								</li>
								<li><a href="#"><img
										src="../assets/images/icon/discover.png" alt=""></a></li>
							</ul>
						</div>
					</div>
				</div>
			</div>
		</div>
	</footer>
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