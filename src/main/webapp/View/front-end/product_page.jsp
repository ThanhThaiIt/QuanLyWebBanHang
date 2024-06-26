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


<script type="text/javascript">
var size=-1;
var color=-1;
function choiceSize(id){
	size = id;
}

function choiceColor(ids){
	color = ids;
}

function addToCart(idProduct) {
	var xhttp;
/* 	if(size == -1){
		alert('Vui Long Chọn Size!!! ');
		return;
	}
	
	if(color == -1){
		alert('Vui Lòng Chọn Color!!! ');
		return;
	} */
	
	
	//var ulElement = document.getElementById("sizee");
	 
		//var idSize = ulElement.dataset.id;  
		//var url = "CartController?id=" + idProduct;
		var url = "CartController?id=" + idProduct + "&size=" + size + "&color="+color;
		if (window.XMLHttpRequest) {
			//code for chrome, firefox, IE7+, Opera, Safari 
			xhttp = new XMLHttpRequest();
		} else {
			// code for IE6, IE5
			xhttp = new ActiveXObject("Microsoft.XMLHTTP");
		}

		//để theo dõi thay đổi trạng thái của XMLHttpRequest.
		xhttp.onreadystatechange = function() {// trang thai luon la 4 (4: hoàn hành xử lý và đợi gửi lại phía client)
			if (xhttp.readyState == 4) { // lay gia tri tu trang result.jsp
				var data = xhttp.responseText;
				document.getElementById("cartProduct").innerHTML = data;
			}
		}

		// gui yeu cau Sever/ Ajax reuqest
		xhttp.open("POST", url, true);
		xhttp.send();
	 
}

function loadDoc(data) { 
	var xhttp = new XMLHttpRequest();
	xhttp.onreadystatechange = function() {
	if (this.readyState == 4 && this.status == 200) {
	  document.getElementById("demo").innerHTML =
	  this.responseText;
	}
	};
	xhttp.open("GET", "CartController?data1="+data, true);
	xhttp.send();
	}



</script>


</head>

<body class="theme-color-1">

	<!-- loader start -->
	<jsp:include page="LoaderStart.jsp" />
	<!-- loader end -->


	<!-- header start -->
	<jsp:include page="HeaderFront.jsp" />
	<!-- header end -->


	<!-- breadcrumb start -->
	<div class="breadcrumb-section">
		<div class="container">
			<div class="row">
				<div class="col-sm-6">
					<div class="page-title">
						<h2>product</h2>
					</div>
				</div>
				<div class="col-sm-6">
					<nav aria-label="breadcrumb" class="theme-breadcrumb">
						<ol class="breadcrumb">
							<li class="breadcrumb-item"><a href="index.html">Home</a></li>
							<li class="breadcrumb-item active" aria-current="page">product</li>
						</ol>
					</nav>
				</div>
			</div>
		</div>
	</div>
	<!-- breadcrumb End -->


	<!-- section start -->
	<section>
		<div class="collection-wrapper">
			<div class="container">
				<div class="row">
					<div class="col-lg-5 col-sm-10 col-xs-12">
						<div class="product-right-slick">
							<div>
								<img
									src="${pageContext.request.contextPath}/View${productimage.get(0)}"
									alt="" class="img-fluid blur-up lazyload image_zoom_cls-0">
							</div>
							<div>
								<img
									src="${pageContext.request.contextPath}/View${productimage.get(1)}"
									alt="" class="img-fluid blur-up lazyload image_zoom_cls-0">
							</div>
							<div>
								<img
									src="${pageContext.request.contextPath}/View${productimage.get(2)}"
									alt="" class="img-fluid blur-up lazyload image_zoom_cls-0">
							</div>
							<div>
								<img
									src="${pageContext.request.contextPath}/View${productimage.get(3)}"
									alt="" class="img-fluid blur-up lazyload image_zoom_cls-0">
							</div>
						</div>
					</div>
					<div class="col-lg-1 col-sm-2 col-xs-12">
						<div class="row">
							<div class="col-12 p-0">
								<div class="slider-right-nav">
									<div>
										<img
											src="${pageContext.request.contextPath}/View${productimage.get(0)}"
											alt="" class="img-fluid blur-up lazyload">
									</div>
									<div>
										<img
											src="${pageContext.request.contextPath}/View${productimage.get(1)}"
											alt="" class="img-fluid blur-up lazyload">
									</div>
									<div>
										<img
											src="${pageContext.request.contextPath}/View${productimage.get(2)}"
											alt="" class="img-fluid blur-up lazyload">
									</div>
									<div>
										<img
											src="${pageContext.request.contextPath}/View${productimage.get(3)}"
											alt="" class="img-fluid blur-up lazyload">
									</div>
								</div>
							</div>
						</div>
					</div>
					<div class="col-lg-6 rtl-text">
						<div class="product-right">
							<div class="product-count">
								<ul>
									<li><img
										src="${pageContext.request.contextPath}/View/assets/images/fire.gif"
										class="img-fluid" alt="image"> <span class="p-counter">37</span>
										<span class="lang">orders in last 24 hours</span></li>
									<li><img
										src="${pageContext.request.contextPath}/View/assets/images/person.gif"
										class="img-fluid user_img" alt="image"> <span
										class="p-counter">44</span> <span class="lang">active
											view this</span></li>
								</ul>
							</div>
							<h2>${productDetail.getName()}</h2>
							<div class="rating-section">
								<div class="rating">
									<i class="fa fa-star"></i> <i class="fa fa-star"></i> <i
										class="fa fa-star"></i> <i class="fa fa-star"></i> <i
										class="fa fa-star"></i>
								</div>
								<h6>120 ratings</h6>
							</div>
							<div class="label-section">
								<span class="badge badge-grey-color">#1 Best seller</span> <span
									class="label-text">in fashion</span>
							</div>
							<h3 class="price-detail">
								$${productDetail.getPrice()} <span>${productDetail.getDiscount()}%
									off</span>
							</h3>
							<ul class="color-variant">
								<c:forEach items="${listColor}" var="list">
									<li onclick="choiceColor(${list.getId()})" class="${list.getTitle()} "></li>
								</c:forEach>
							</ul>
							<div id="selectSize"
								class="addeffect-section product-description border-product">
								<h6 class="product-title size-text">
									select size <span><a href="" data-bs-toggle="modal"
										data-bs-target="#sizemodal">size chart</a></span>
								</h6>
								<div class="modal fade" id="sizemodal" tabindex="-1"
									role="dialog" aria-labelledby="exampleModalLabel"
									aria-hidden="true">
									<div class="modal-dialog modal-dialog-centered" role="document">
										<div class="modal-content">
											<div class="modal-header">
												<h5 class="modal-title" id="exampleModalLabel">Sheer
													Straight Kurta</h5>
												<button type="button" class="btn-close"
													data-bs-dismiss="modal" aria-label="Close">
													<span aria-hidden="true">&times;</span>
												</button>
											</div>
											<div class="modal-body">
												<img
													src="${pageContext.request.contextPath}/View/assets/images/size-chart.jpg"
													alt="" class="img-fluid blur-up lazyload">
											</div>
										</div>
									</div>
								</div>
								<h6 class="error-message">please select size</h6>
								<div class="size-box">
									<ul id="sizee" data-id="${list.getId()}">

										<c:forEach items="${listSize}" var="list">
											<li><a onclick="choiceSize(${list.getId()})">${list.getTitle()}</a></li>

										</c:forEach>
									</ul>
								</div>
								<h6 class="product-title">quantity</h6>
								<div class="qty-box">
									<div class="input-group">
										<span class="input-group-prepend"><button type="button"
												class="btn quantity-left-minus" data-type="minus"
												data-field="">
												<i class="ti-angle-left"></i>
											</button> </span> <input type="text" name="quantity"
											class="form-control input-number" value="1"> <span
											class="input-group-prepend"><button type="button"
												class="btn quantity-right-plus" data-type="plus"
												data-field="">
												<i class="ti-angle-right"></i>
											</button></span>
									</div>
								</div>
							</div>
							<div class="product-buttons">
								<!-- javascript:void(0) href="CartController?id=${productDetail.getId()}" -->

								<a onclick="addToCart(${productDetail.getId()})"
									class="btn btn-solid" id="cartEffect"
									class="btn btn-solid hover-solid btn-animation"><i
									class="fa fa-shopping-cart me-1" aria-hidden="true"></i> add to
									cart</a> 
									
									<a href="#"><i class="fa fa-bookmark fz-16 me-2"
									aria-hidden="true"></i>wishlist</a>
							</div>
							<div class="product-count">
								<ul>
									<li><img
										src="${pageContext.request.contextPath}/View/assets/images/icon/truck.png"
										class="img-fluid" alt="image"> <span class="lang">Free
											shipping for orders above $500 USD</span></li>
								</ul>
							</div>
							<div class="border-product">
								<h6 class="product-title">Sales Ends In</h6>
								<div class="timer">
									<p id="demo"></p>
								</div>
							</div>
							<div class="border-product">
								<h6 class="product-title">shipping info</h6>
								<ul class="shipping-info">
									<li>100% Original Products</li>
									<li>Free Delivery on order above Rs. 799</li>
									<li>Pay on delivery is available</li>
									<li>Easy 30 days returns and exchanges</li>
								</ul>
							</div>
							<div class="border-product">
								<h6 class="product-title">share it</h6>
								<div class="product-icon">
									<ul class="product-social">
										<li><a href="#"><i class="fa fa-facebook"></i></a></li>
										<li><a href="#"><i class="fa fa-google-plus"></i></a></li>
										<li><a href="#"><i class="fa fa-twitter"></i></a></li>
										<li><a href="#"><i class="fa fa-instagram"></i></a></li>
										<li><a href="#"><i class="fa fa-rss"></i></a></li>
									</ul>
								</div>
							</div>
						</div>
					</div>
				</div>
			</div>
		</div>
	</section>
	<!-- Section ends -->


	<!-- product-tab starts -->
	<section class="tab-product m-0">
		<div class="container">
			<div class="row">
				<div class="col-sm-12 col-lg-12">
					<ul class="nav nav-tabs nav-material" id="top-tab" role="tablist">
						<li class="nav-item"><a class="nav-link active"
							id="top-home-tab" data-bs-toggle="tab" href="#top-home"
							role="tab" aria-selected="true"><i
								class="icofont icofont-ui-home"></i>Details</a>
							<div class="material-border"></div></li>
						<li class="nav-item"><a class="nav-link" id="profile-top-tab"
							data-bs-toggle="tab" href="#top-profile" role="tab"
							aria-selected="false"><i
								class="icofont icofont-man-in-glasses"></i>Specification</a>
							<div class="material-border"></div></li>
						<li class="nav-item"><a class="nav-link" id="contact-top-tab"
							data-bs-toggle="tab" href="#top-contact" role="tab"
							aria-selected="false"><i class="icofont icofont-contacts"></i>Video</a>
							<div class="material-border"></div></li>
						<li class="nav-item"><a class="nav-link" id="review-top-tab"
							data-bs-toggle="tab" href="#top-review" role="tab"
							aria-selected="false"><i class="icofont icofont-contacts"></i>Write
								Review</a>
							<div class="material-border"></div></li>
					</ul>
					<div class="tab-content nav-material" id="top-tabContent">
						<div class="tab-pane fade show active" id="top-home"
							role="tabpanel" aria-labelledby="top-home-tab">
							<div class="product-tab-discription">
								${productDetail.getDescription()}</div>
						</div>
						<div class="tab-pane fade" id="top-profile" role="tabpanel"
							aria-labelledby="profile-top-tab">
							<p>The Model is wearing a white blouse from our stylist's
								collection, see the image for a mock-up of what the actual
								blouse would look like.it has text written on it in a black
								cursive language which looks great on a white color.</p>
							<div class="single-product-tables">
								<table>
									<tbody>
										<tr>
											<td>Sleeve Length</td>
											<td>Sleevless</td>
										</tr>
										<tr>
											<td>Neck</td>
											<td>Round Neck</td>
										</tr>
										<tr>
											<td>Occasion</td>
											<td>Sports</td>
										</tr>
									</tbody>
								</table>
								<table>
									<tbody>
										<tr>
											<td>Fabric</td>
											<td>Polyester</td>
										</tr>
										<tr>
											<td>Fit</td>
											<td>Regular Fit</td>
										</tr>
									</tbody>
								</table>
							</div>
						</div>
						<div class="tab-pane fade" id="top-contact" role="tabpanel"
							aria-labelledby="contact-top-tab">
							<div class="">
								<iframe width="560" height="315"
									src="https://www.youtube.com/embed/BUWzX78Ye_8"
									allow="autoplay; encrypted-media" allowfullscreen></iframe>
							</div>
						</div>
						<div class="tab-pane fade" id="top-review" role="tabpanel"
							aria-labelledby="review-top-tab">
							<form class="theme-form">
								<div class="form-row row">
									<div class="col-md-12">
										<div class="media">
											<label>Rating</label>
											<div class="media-body ms-3">
												<div class="rating three-star">
													<i class="fa fa-star"></i> <i class="fa fa-star"></i> <i
														class="fa fa-star"></i> <i class="fa fa-star"></i> <i
														class="fa fa-star"></i>
												</div>
											</div>
										</div>
									</div>
									<div class="col-md-6">
										<label for="name">Name</label> <input type="text"
											class="form-control" id="name" placeholder="Enter Your name"
											required>
									</div>
									<div class="col-md-6">
										<label for="email">Email</label> <input type="text"
											class="form-control" id="email" placeholder="Email" required>
									</div>
									<div class="col-md-12">
										<label for="review">Review Title</label> <input type="text"
											class="form-control" id="review"
											placeholder="Enter your Review Subjects" required>
									</div>
									<div class="col-md-12">
										<label for="review">Review Title</label>
										<textarea class="form-control"
											placeholder="Wrire Your Testimonial Here"
											id="exampleFormControlTextarea1" rows="6"></textarea>
									</div>
									<div class="col-md-12">
										<button class="btn btn-solid" type="submit">Submit
											YOur Review</button>
									</div>
								</div>
							</form>
						</div>
					</div>
				</div>
			</div>
		</div>
	</section>
	<!-- product-tab ends -->


	<!-- product section start -->
	<section class="section-b-space ratio_asos">
		<div class="container">
			<div class="row">
				<div class="col-12 product-related">
					<h2>related products</h2>
				</div>
			</div>
			<div class="row search-product">

				<c:forEach items="${ListProductRalate}" var="list">

					<div class="col-xl-2 col-md-4 col-6">
						<div class="product-box">
							<div class="img-wrapper">
								<div class="front">
									<a href="#"><img
										src="${pageContext.request.contextPath}/View${list.value.get(0)}"
										class="img-fluid blur-up lazyload bg-img" alt=""></a>
								</div>
								<div class="back">
									<a href="#"><img
										src="${pageContext.request.contextPath}/View${list.value.get(1)}"
										class="img-fluid blur-up lazyload bg-img" alt=""></a>
								</div>
								<div class="cart-info cart-wrap">
									<button data-bs-toggle="modal"
										onclick="addToCart(${list.key.getId()})"
										data-bs-target="#addtocart" title="Add to cart">
										<i class="ti-shopping-cart"></i>
									</button>
									<a href="javascript:void(0)" title="Add to Wishlist"><i
										class="ti-heart" aria-hidden="true"></i></a> <a href="#"
										data-bs-toggle="modal" data-bs-target="#quick-view"
										title="Quick View"><i class="ti-search" aria-hidden="true"></i></a>
									<a href="compare.html" title="Compare"><i class="ti-reload"
										aria-hidden="true"></i></a>
								</div>
							</div>
							<div class="product-detail">
								<div class="rating">
									<i class="fa fa-star"></i> <i class="fa fa-star"></i> <i
										class="fa fa-star"></i> <i class="fa fa-star"></i> <i
										class="fa fa-star"></i>
								</div>
								<a href="product-page(no-sidebar).html">
									<h6>${list.key.getName()}</h6>
								</a>
								<h4>$${list.key.getPrice()}</h4>
								<ul class="color-variant">
									<li class="bg-light0"></li>
									<li class="bg-light1"></li>
									<li class="bg-light2"></li>
								</ul>
							</div>
						</div>
					</div>

				</c:forEach>




			</div>
		</div>
	</section>
	<!-- product section end -->


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
								<img
									src="${pageContext.request.contextPath}/View/assets/images/icon/logo.png"
									alt="">
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
										src="${pageContext.request.contextPath}/View/assets/images/icon/visa.png"
										alt=""></a></li>
								<li><a href="#"><img
										src="${pageContext.request.contextPath}/View/assets/images/icon/mastercard.png"
										alt=""></a></li>
								<li><a href="#"><img
										src="${pageContext.request.contextPath}/View/assets/images/icon/paypal.png"
										alt=""></a></li>
								<li><a href="#"><img
										src="${pageContext.request.contextPath}/View/assets/images/icon/american-express.png"
										alt=""></a></li>
								<li><a href="#"><img
										src="${pageContext.request.contextPath}/View/assets/images/icon/discover.png"
										alt=""></a></li>
							</ul>
						</div>
					</div>
				</div>
			</div>
		</div>
	</footer>
	<!-- footer end -->


	<!-- recently purchase product -->
	<div class="media recently-purchase">
		<img
			src="${pageContext.request.contextPath}/View/assets/images/pro3/sm.jpg"
			alt="Floral Dress ">
		<div class="media-body">
			<div>
				<div class="title">Some recently purchase this item</div>
				<a href="#"> <span class="product-name"> Floral Dress </span>
				</a> <small class="timeAgo">50 minutes ago</small>
			</div>
		</div>
		<a href="javascript:void(0)" class="close-popup fa fa-times"></a>
	</div>
	<!-- recently purchase product -->


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
							<img
								src="${pageContext.request.contextPath}/View/assets/images/icon/logo.png"
								class="img-fluid" alt="">
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
										src="${pageContext.request.contextPath}/View/assets/images/landing-page/demo/gradient.jpg"
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
										src="${pageContext.request.contextPath}/View/assets/images/landing-page/demo/fashion.jpg"
										class="img-fluid bg-img bg-top" alt="">
									</a> <a href="index.html" class="demo-text">
										<h4>fashion</h4>
									</a>
								</div>
							</div>
							<div class="col-md-4 col-6 text-center demo-effects">
								<div class="set-position">
									<a href="fashion-2.html" class="layout-container"> <img
										src="${pageContext.request.contextPath}/View/assets/images/landing-page/demo/fashion-2.jpg"
										class="img-fluid bg-img bg-top" alt="">
									</a> <a href="fashion-2.html" class="demo-text">
										<h4>fashion 2</h4>
									</a>
								</div>
							</div>
							<div class="col-md-4 col-6 text-center demo-effects">
								<div class="set-position">
									<a href="fashion-3.html" class="layout-container"> <img
										src="${pageContext.request.contextPath}/View/assets/images/landing-page/demo/fashion-3.jpg"
										class="img-fluid bg-img bg-top" alt="">
									</a> <a href="fashion-3.html" class="demo-text">
										<h4>fashion 3</h4>
									</a>
								</div>
							</div>
							<div class="col-md-4 col-6 text-center demo-effects">
								<div class="set-position">
									<a href="fashion-4.html" class="layout-container"> <img
										src="${pageContext.request.contextPath}/View/assets/images/landing-page/demo/fashion-4.jpg"
										class="img-fluid bg-img bg-top" alt="">
									</a> <a href="fashion-4.html" class="demo-text">
										<h4>fashion 4</h4>
									</a>
								</div>
							</div>
							<div class="col-md-4 col-6 text-center demo-effects">
								<div class="set-position">
									<a href="fashion-5.html" class="layout-container"> <img
										src="${pageContext.request.contextPath}/View/assets/images/landing-page/demo/fashion-5.jpg"
										class="img-fluid bg-img bg-top" alt="">
									</a> <a href="fashion-5.html" class="demo-text">
										<h4>fashion 5</h4>
									</a>
								</div>
							</div>
							<div class="col-md-4 col-6 text-center demo-effects">
								<div class="set-position">
									<a href="fashion-6.html" class="layout-container"> <img
										src="${pageContext.request.contextPath}/View/assets/images/landing-page/demo/fashion-6.jpg"
										class="img-fluid bg-img bg-top" alt="">
									</a> <a href="fashion-6.html" class="demo-text">
										<h4>fashion 6</h4>
									</a>
								</div>
							</div>
							<div class="col-md-4 col-6 text-center demo-effects">
								<div class="set-position">
									<a href="fashion-7.html" class="layout-container"> <img
										src="${pageContext.request.contextPath}/View/assets/images/landing-page/demo/fashion-7.jpg"
										class="img-fluid bg-img bg-top" alt="">
									</a> <a href="fashion-7.html" class="demo-text">
										<h4>fashion 7</h4>
									</a>
								</div>
							</div>
							<div class="col-md-4 col-6 text-center demo-effects">
								<div class="set-position">
									<a href="furniture.html" class="layout-container"> <img
										src="${pageContext.request.contextPath}/View/assets/images/landing-page/demo/furniture.jpg"
										class="img-fluid bg-img bg-top" alt="">
									</a> <a href="furniture.html" class="demo-text">
										<h4>furniture</h4>
									</a>
								</div>
							</div>
							<div class="col-md-4 col-6 text-center demo-effects">
								<div class="set-position">
									<a href="furniture-2.html" class="layout-container"> <img
										src="${pageContext.request.contextPath}/View/assets/images/landing-page/demo/furniture-2.jpg"
										class="img-fluid bg-img bg-top" alt="">
									</a> <a href="furniture-2.html" class="demo-text">
										<h4>furniture 2</h4>
									</a>
								</div>
							</div>
							<div class="col-md-4 col-6 text-center demo-effects">
								<div class="set-position">
									<a href="furniture-3.html" class="layout-container"> <img
										src="${pageContext.request.contextPath}/View/assets/images/landing-page/demo/furniture-dark.jpg"
										class="img-fluid bg-img bg-top" alt="">
									</a> <a href="furniture-3.html" class="demo-text">
										<h4>furniture dark</h4>
									</a>
								</div>
							</div>
							<div class="col-md-4 col-6 text-center demo-effects">
								<div class="set-position">
									<a href="electronic-1.html" class="layout-container"> <img
										src="${pageContext.request.contextPath}/View/assets/images/landing-page/demo/electronics.jpg"
										class="img-fluid bg-img bg-top" alt="">
									</a> <a href="electronic-1.html" class="demo-text">
										<h4>electronics</h4>
									</a>
								</div>
							</div>
							<div class="col-md-4 col-6 text-center demo-effects">
								<div class="set-position">
									<a href="electronic-2.html" class="layout-container"> <img
										src="${pageContext.request.contextPath}/View/assets/images/landing-page/demo/electronics-2.jpg"
										class="img-fluid bg-img bg-top" alt="">
									</a> <a href="electronic-2.html" class="demo-text">
										<h4>electronics 2</h4>
									</a>
								</div>
							</div>
							<div class="col-md-4 col-6 text-center demo-effects">
								<div class="set-position">
									<a href="electronic-3.html" class="layout-container"> <img
										src="${pageContext.request.contextPath}/View/assets/images/landing-page/demo/electronics-3.jpg"
										class="img-fluid bg-img bg-top" alt="">
									</a> <a href="electronic-3.html" class="demo-text">
										<h4>electronics 3</h4>
									</a>
								</div>
							</div>
							<div class="col-md-4 col-6 text-center demo-effects">
								<div class="set-position">
									<a href="marketplace-demo.html" class="layout-container"> <img
										src="${pageContext.request.contextPath}/View/assets/images/landing-page/demo/marketplace.jpg"
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
										src="${pageContext.request.contextPath}/View/assets/images/landing-page/demo/marketplace-2.jpg"
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
										src="${pageContext.request.contextPath}/View/assets/images/landing-page/demo/marketplace-3.jpg"
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
										src="${pageContext.request.contextPath}/View/assets/images/landing-page/demo/marketplace-4.jpg"
										class="img-fluid bg-img bg-top" alt="">
									</a> <a href="marketplace-demo-4.html" class="demo-text">
										<h4>marketplace 4</h4>
									</a>
								</div>
							</div>
							<div class="col-md-4 col-6 text-center demo-effects">
								<div class="set-position">
									<a href="vegetables.html" class="layout-container"> <img
										src="${pageContext.request.contextPath}/View/assets/images/landing-page/demo/vegetables.jpg"
										class="img-fluid bg-img bg-top" alt="">
									</a> <a href="vegetables.html" class="demo-text">
										<h4>vegetables</h4>
									</a>
								</div>
							</div>
							<div class="col-md-4 col-6 text-center demo-effects">
								<div class="set-position">
									<a href="vegetables-2.html" class="layout-container"> <img
										src="${pageContext.request.contextPath}/View/assets/images/landing-page/demo/vegetables-2.jpg"
										class="img-fluid bg-img bg-top" alt="">
									</a> <a href="vegetables-2.html" class="demo-text">
										<h4>vegetables 2</h4>
									</a>
								</div>
							</div>
							<div class="col-md-4 col-6 text-center demo-effects">
								<div class="set-position">
									<a href="vegetables-3.html" class="layout-container"> <img
										src="${pageContext.request.contextPath}/View/assets/images/landing-page/demo/vegetables-3.jpg"
										class="img-fluid bg-img bg-top" alt="">
									</a> <a href="vegetables-3.html" class="demo-text">
										<h4>vegetables 3</h4>
									</a>
								</div>
							</div>
							<div class="col-md-4 col-6 text-center demo-effects">
								<div class="set-position">
									<a href="jewellery.html" class="layout-container"> <img
										src="${pageContext.request.contextPath}/View/assets/images/landing-page/demo/jewellery.jpg"
										class="img-fluid bg-img bg-top" alt="">
									</a> <a href="jewellery.html" class="demo-text">
										<h4>jewellery</h4>
									</a>
								</div>
							</div>
							<div class="col-md-4 col-6 text-center demo-effects">
								<div class="set-position">
									<a href="jewellery-2.html" class="layout-container"> <img
										src="${pageContext.request.contextPath}/View/assets/images/landing-page/demo/jewellery-2.jpg"
										class="img-fluid bg-img bg-top" alt="">
									</a> <a href="jewellery-2.html" class="demo-text">
										<h4>jewellery 2</h4>
									</a>
								</div>
							</div>
							<div class="col-md-4 col-6 text-center demo-effects">
								<div class="set-position">
									<a href="jewellery-3.html" class="layout-container"> <img
										src="${pageContext.request.contextPath}/View/assets/images/landing-page/demo/jewellery-3.jpg"
										class="img-fluid bg-img bg-top" alt="">
									</a> <a href="jewellery-3.html" class="demo-text">
										<h4>jewellery 3</h4>
									</a>
								</div>
							</div>
							<div class="col-md-4 col-6 text-center demo-effects">
								<div class="set-position">
									<a href="bags.html" class="layout-container"> <img
										src="${pageContext.request.contextPath}/View/assets/images/landing-page/demo/bag.jpg"
										class="img-fluid bg-img bg-top" alt="">
									</a> <a href="bags.html" class="demo-text">
										<h4>bag</h4>
									</a>
								</div>
							</div>
							<div class="col-md-4 col-6 text-center demo-effects">
								<div class="set-position">
									<a href="watch.html" class="layout-container"> <img
										src="${pageContext.request.contextPath}/View/assets/images/landing-page/demo/watch.jpg"
										class="img-fluid bg-img bg-top" alt="">
									</a> <a href="watch.html" class="demo-text">
										<h4>watch</h4>
									</a>
								</div>
							</div>
							<div class="col-md-4 col-6 text-center demo-effects">
								<div class="set-position">
									<a href="medical.html" class="layout-container"> <img
										src="${pageContext.request.contextPath}/View/assets/images/landing-page/demo/medical.jpg"
										class="img-fluid bg-img bg-top" alt="">
									</a> <a href="medical.html" class="demo-text">
										<h4>medical</h4>
									</a>
								</div>
							</div>
							<div class="col-md-4 col-6 text-center demo-effects">
								<div class="set-position">
									<a href="perfume.html" class="layout-container"> <img
										src="${pageContext.request.contextPath}/View/assets/images/landing-page/demo/perfume.jpg"
										class="img-fluid bg-img bg-top" alt="">
									</a> <a href="perfume.html" class="demo-text">
										<h4>perfume</h4>
									</a>
								</div>
							</div>
							<div class="col-md-4 col-6 text-center demo-effects">
								<div class="set-position">
									<a href="yoga.html" class="layout-container"> <img
										src="${pageContext.request.contextPath}/View/assets/images/landing-page/demo/yoga.jpg"
										class="img-fluid bg-img bg-top" alt="">
									</a> <a href="yoga.html" class="demo-text">
										<h4>yoga</h4>
									</a>
								</div>
							</div>
							<div class="col-md-4 col-6 text-center demo-effects">
								<div class="set-position">
									<a href="christmas.html" class="layout-container"> <img
										src="${pageContext.request.contextPath}/View/assets/images/landing-page/demo/christmas.jpg"
										class="img-fluid bg-img bg-top" alt="">
									</a> <a href="christmas.html" class="demo-text">
										<h4>christmas</h4>
									</a>
								</div>
							</div>
							<div class="col-md-4 col-6 text-center demo-effects">
								<div class="set-position">
									<a href="bicycle.html" class="layout-container"> <img
										src="${pageContext.request.contextPath}/View/assets/images/landing-page/demo/bicycle.jpg"
										class="img-fluid bg-img bg-top" alt="">
									</a> <a href="bicycle.html" class="demo-text">
										<h4>bicycle</h4>
									</a>
								</div>
							</div>
							<div class="col-md-4 col-6 text-center demo-effects">
								<div class="set-position">
									<a href="marijuana.html" class="layout-container"> <img
										src="${pageContext.request.contextPath}/View/assets/images/landing-page/demo/marijuana.jpg"
										class="img-fluid bg-img bg-top" alt="">
									</a> <a href="marijuana.html" class="demo-text">
										<h4>marijuana</h4>
									</a>
								</div>
							</div>
							<div class="col-md-4 col-6 text-center demo-effects">
								<div class="set-position">
									<a href="gym-product.html" class="layout-container"> <img
										src="${pageContext.request.contextPath}/View/assets/images/landing-page/demo/gym.jpg"
										class="img-fluid bg-img bg-top" alt="">
									</a> <a href="gym-product.html" class="demo-text">
										<h4>gym</h4>
									</a>
								</div>
							</div>
							<div class="col-md-4 col-6 text-center demo-effects">
								<div class="set-position">
									<a href="tools.html" class="layout-container"> <img
										src="${pageContext.request.contextPath}/View/assets/images/landing-page/demo/tools.jpg"
										class="img-fluid bg-img bg-top" alt="">
									</a> <a href="tools.html" class="demo-text">
										<h4>tools</h4>
									</a>
								</div>
							</div>
							<div class="col-md-4 col-6 text-center demo-effects">
								<div class="set-position">
									<a href="shoes.html" class="layout-container"> <img
										src="${pageContext.request.contextPath}/View/assets/images/landing-page/demo/shoes.jpg"
										class="img-fluid bg-img bg-top" alt="">
									</a> <a href="shoes.html" class="demo-text">
										<h4>shoes</h4>
									</a>
								</div>
							</div>
							<div class="col-md-4 col-6 text-center demo-effects">
								<div class="set-position">
									<a href="books.html" class="layout-container"> <img
										src="${pageContext.request.contextPath}/View/assets/images/landing-page/demo/books.jpg"
										class="img-fluid bg-img bg-top" alt="">
									</a> <a href="books.html" class="demo-text">
										<h4>books</h4>
									</a>
								</div>
							</div>
							<div class="col-md-4 col-6 text-center demo-effects">
								<div class="set-position">
									<a href="kids.html" class="layout-container"> <img
										src="${pageContext.request.contextPath}/View/assets/images/landing-page/demo/kids.jpg"
										class="img-fluid bg-img bg-top" alt="">
									</a> <a href="kids.html" class="demo-text">
										<h4>kids</h4>
									</a>
								</div>
							</div>
							<div class="col-md-4 col-6 text-center demo-effects">
								<div class="set-position">
									<a href="game.html" class="layout-container"> <img
										src="${pageContext.request.contextPath}/View/assets/images/landing-page/demo/game.jpg"
										class="img-fluid bg-img bg-top" alt="">
									</a> <a href="game.html" class="demo-text">
										<h4>game</h4>
									</a>
								</div>
							</div>
							<div class="col-md-4 col-6 text-center demo-effects">
								<div class="set-position">
									<a href="beauty.html" class="layout-container"> <img
										src="${pageContext.request.contextPath}/View/assets/images/landing-page/demo/beauty.jpg"
										class="img-fluid bg-img bg-top" alt="">
									</a> <a href="beauty.html" class="demo-text">
										<h4>beauty</h4>
									</a>
								</div>
							</div>
							<div class="col-md-4 col-6 text-center demo-effects">
								<div class="set-position">
									<a href="left_sidebar-demo.html" class="layout-container">
										<img
										src="${pageContext.request.contextPath}/View/assets/images/landing-page/demo/left-sidebar.jpg"
										class="img-fluid bg-img bg-top" alt="">
									</a> <a href="left_sidebar-demo.html" class="demo-text">
										<h4>left sidebar</h4>
									</a>
								</div>
							</div>
							<div class="col-md-4 col-6 text-center demo-effects">
								<div class="set-position">
									<a href="video-slider.html" class="layout-container"> <img
										src="${pageContext.request.contextPath}/View/assets/images/landing-page/demo/video-slider.jpg"
										class="img-fluid bg-img bg-top" alt="">
									</a> <a href="video-slider.html" class="demo-text">
										<h4>video slider</h4>
									</a>
								</div>
							</div>
							<div class="col-md-4 col-6 text-center demo-effects">
								<div class="set-position">
									<a href="metro.html" class="layout-container"> <img
										src="${pageContext.request.contextPath}/View/assets/images/landing-page/demo/metro.jpg"
										class="img-fluid bg-img bg-top" alt="">
									</a> <a href="metro.html" class="demo-text">
										<h4>metro</h4>
									</a>
								</div>
							</div>
							<div class="col-md-4 col-6 text-center demo-effects">
								<div class="set-position">
									<a href="goggles.html" class="layout-container"> <img
										src="${pageContext.request.contextPath}/View/assets/images/landing-page/demo/goggles.jpg"
										class="img-fluid bg-img bg-top" alt="">
									</a> <a href="goggles.html" class="demo-text">
										<h4>goggles</h4>
									</a>
								</div>
							</div>
							<div class="col-md-4 col-6 text-center demo-effects">
								<div class="set-position">
									<a href="flower.html" class="layout-container"> <img
										src="${pageContext.request.contextPath}/View/assets/images/landing-page/demo/flower.jpg"
										class="img-fluid bg-img bg-top" alt="">
									</a> <a href="flower.html" class="demo-text">
										<h4>flower</h4>
									</a>
								</div>
							</div>
							<div class="col-md-4 col-6 text-center demo-effects">
								<div class="set-position">
									<a href="light.html" class="layout-container"> <img
										src="${pageContext.request.contextPath}/View/assets/images/landing-page/demo/light.jpg"
										class="img-fluid bg-img bg-top" alt="">
									</a> <a href="light.html" class="demo-text">
										<h4>light</h4>
									</a>
								</div>
							</div>
							<div class="col-md-4 col-6 text-center demo-effects">
								<div class="set-position">
									<a href="nursery.html" class="layout-container"> <img
										src="${pageContext.request.contextPath}/View/assets/images/landing-page/demo/nursery.jpg"
										class="img-fluid bg-img bg-top" alt="">
									</a> <a href="nursery.html" class="demo-text">
										<h4>nursery</h4>
									</a>
								</div>
							</div>
							<div class="col-md-4 col-6 text-center demo-effects">
								<div class="set-position">
									<a href="pets.html" class="layout-container"> <img
										src="${pageContext.request.contextPath}/View/assets/images/landing-page/demo/pets.jpg"
										class="img-fluid bg-img bg-top" alt="">
									</a> <a href="pets.html" class="demo-text">
										<h4>pets</h4>
									</a>
								</div>
							</div>
							<div class="col-md-4 col-6 text-center demo-effects">
								<div class="set-position">
									<a href="video.html" class="layout-container"> <img
										src="${pageContext.request.contextPath}/View/assets/images/landing-page/demo/video.jpg"
										class="img-fluid bg-img bg-top" alt="">
									</a> <a href="video.html" class="demo-text">
										<h4>video</h4>
									</a>
								</div>
							</div>
							<div class="col-md-4 col-6 text-center demo-effects">
								<div class="set-position">
									<a href="lookbook-demo.html" class="layout-container"> <img
										src="${pageContext.request.contextPath}/View/assets/images/landing-page/demo/lookbook.jpg"
										class="img-fluid bg-img bg-top" alt="">
									</a> <a href="lookbook-demo.html" class="demo-text">
										<h4>lookbook</h4>
									</a>
								</div>
							</div>
							<div class="col-md-4 col-6 text-center demo-effects">
								<div class="set-position">
									<a href="full-page.html" class="layout-container"> <img
										src="${pageContext.request.contextPath}/View/assets/images/landing-page/demo/full-page.jpg"
										class="img-fluid bg-img bg-top" alt="">
									</a> <a href="full-page.html" class="demo-text">
										<h4>full page</h4>
									</a>
								</div>
							</div>
							<div class="col-md-4 col-6 text-center demo-effects">
								<div class="set-position">
									<a href="instagram-shop.html" class="layout-container"> <img
										src="${pageContext.request.contextPath}/View/assets/images/landing-page/demo/instagram.jpg"
										class="img-fluid bg-img bg-top" alt="">
									</a> <a href="instagram-shop.html" class="demo-text">
										<h4>instagram</h4>
									</a>
								</div>
							</div>
							<div class="col-md-4 col-6 text-center demo-effects">
								<div class="set-position">
									<a href="parallax.html" class="layout-container"> <img
										src="${pageContext.request.contextPath}/View/assets/images/landing-page/demo/parallax.jpg"
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


	<!-- Add to cart modal popup start-->
	<div class="modal fade bd-example-modal-lg theme-modal cart-modal"
		id="addtocart" tabindex="-1" role="dialog" aria-hidden="true">
		<div class="modal-dialog modal-lg modal-dialog-centered"
			role="document">
			<div class="modal-content">
				<div class="modal-body modal1">
					<div class="container-fluid p-0">
						<div class="row">
							<div class="col-12">
								<div class="modal-bg addtocart">
									<button type="button" class="btn-close" data-bs-dismiss="modal"
										aria-label="Close">
										<span aria-hidden="true">&times;</span>
									</button>
									<div class="media">
										<a href="#"> <img
											class="img-fluid blur-up lazyload pro-img"
											src="${pageContext.request.contextPath}/View/assets/images/fashion/product/43.jpg"
											alt="">
										</a>
										<div class="media-body align-self-center text-center">
											<a href="#">
												<h6>
													<i class="fa fa-check"></i>Item <span>men full
														sleeves</span> <span> successfully added to your Cart</span>
												</h6>
											</a>
											<div class="buttons">
												<a href="#" class="view-cart btn btn-solid">Your cart</a> <a
													href="#" class="checkout btn btn-solid">Check out</a> <a
													href="#" class="continue btn btn-solid">Continue
													shopping</a>
											</div>

											<div class="upsell_payment">
												<img
													src="${pageContext.request.contextPath}/View/assets/images/payment_cart.png"
													class="img-fluid blur-up lazyload" alt="">
											</div>
										</div>
									</div>
									<div class="product-section">
										<div class="col-12 product-upsell text-center">
											<h4>Customers who bought this item also.</h4>
										</div>
										<div class="row" id="upsell_product">
											<div class="product-box col-sm-3 col-6">
												<div class="img-wrapper">
													<div class="front">
														<a href="#"> <img
															src="${pageContext.request.contextPath}/View/assets/images/fashion/product/1.jpg"
															class="img-fluid blur-up lazyload mb-1" alt="cotton top">
														</a>
													</div>
													<div class="product-detail">
														<h6>
															<a href="#"><span>cotton top</span></a>
														</h6>
														<h4>
															<span>$25</span>
														</h4>
													</div>
												</div>
											</div>
											<div class="product-box col-sm-3 col-6">
												<div class="img-wrapper">
													<div class="front">
														<a href="#"> <img
															src="${pageContext.request.contextPath}/View/assets/images/fashion/product/34.jpg"
															class="img-fluid blur-up lazyload mb-1" alt="cotton top">
														</a>
													</div>
													<div class="product-detail">
														<h6>
															<a href="#"><span>cotton top</span></a>
														</h6>
														<h4>
															<span>$25</span>
														</h4>
													</div>
												</div>
											</div>
											<div class="product-box col-sm-3 col-6">
												<div class="img-wrapper">
													<div class="front">
														<a href="#"> <img
															src="${pageContext.request.contextPath}/View/assets/images/fashion/product/13.jpg"
															class="img-fluid blur-up lazyload mb-1" alt="cotton top">
														</a>
													</div>
													<div class="product-detail">
														<h6>
															<a href="#"><span>cotton top</span></a>
														</h6>
														<h4>
															<span>$25</span>
														</h4>
													</div>
												</div>
											</div>
											<div class="product-box col-sm-3 col-6">
												<div class="img-wrapper">
													<div class="front">
														<a href="#"> <img
															src="${pageContext.request.contextPath}/View/assets/images/fashion/product/19.jpg"
															class="img-fluid blur-up lazyload mb-1" alt="cotton top">
														</a>
													</div>
													<div class="product-detail">
														<h6>
															<a href="#"><span>cotton top</span></a>
														</h6>
														<h4>
															<span>$25</span>
														</h4>
													</div>
												</div>
											</div>
										</div>
									</div>
								</div>
							</div>
						</div>
					</div>
				</div>
			</div>
		</div>
	</div>
	<!-- Add to cart modal popup end-->


	<!-- tap to top start -->
	<div class="tap-top">
		<div>
			<i class="fa fa-angle-double-up"></i>
		</div>
	</div>
	<!-- tap to top end -->


	<!-- sticky cart bottom start -->
	<div class="sticky-bottom-cart d-sm-block d-none">
		<div class="container">
			<div class="cart-content">
				<div class="product-image">
					<img
						src="${pageContext.request.contextPath}/View/assets/images/pro3/1.jpg"
						class="img-fluid" alt="">
					<div class="content d-lg-block d-none">
						<h5>WOMEN PINK SHIRT</h5>
						<h6>
							$32.96
							<del>$459.00</del>
							<span>55% off</span>
						</h6>
					</div>
				</div>
				<div class="selection-section">
					<div class="form-group mb-0">
						<select id="inputState" class="form-control">
							<option selected>Choose color...</option>
							<option>pink</option>
							<option>blue</option>
							<option>grey</option>
						</select>
					</div>
					<div class="form-group mb-0">
						<select id="inputState" class="form-control">
							<option selected>Choose size...</option>
							<option>small</option>
							<option>medium</option>
							<option>large</option>
							<option>extra large</option>
						</select>
					</div>
				</div>
				<div class="add-btn">
					<a data-bs-toggle="modal" data-bs-target="#addtocart" href=""
						class="btn btn-solid btn-sm">add to cart</a>
				</div>
			</div>
		</div>
	</div>
	<!-- sticky cart bottom end -->


	<!-- added to cart notification -->
	<div class="added-notification">
		<img
			src="${pageContext.request.contextPath}/View/assets/images/fashion/pro/1.jpg"
			class="img-fluid" alt="">
		<h3>added to cart</h3>
	</div>
	<!-- added to cart notification -->


	<!-- latest jquery-->
	<script
		src="${pageContext.request.contextPath}/View/assets/js/jquery-3.3.1.min.js"></script>

	<!-- menu js-->
	<script src="${pageContext.request.contextPath}/View/assets/js/menu.js"></script>

	<!-- lazyload js-->
	<script
		src="${pageContext.request.contextPath}/View/assets/js/lazysizes.min.js"></script>

	<!-- timer js-->
	<script
		src="${pageContext.request.contextPath}/View/assets/js/timer.js"></script>

	<!-- slick js-->
	<script
		src="${pageContext.request.contextPath}/View/assets/js/slick.js"></script>

	<!-- Bootstrap js-->
	<script
		src="${pageContext.request.contextPath}/View/assets/js/bootstrap.bundle.min.js"></script>

	<!-- sticky cart bottom js-->
	<script
		src="${pageContext.request.contextPath}/View/assets/js/sticky-cart-bottom.js"></script>

	<!-- Bootstrap Notification js-->
	<script
		src="${pageContext.request.contextPath}/View/assets/js/bootstrap-notify.min.js"></script>

	<!-- Zoom js-->
	<script
		src="${pageContext.request.contextPath}/View/assets/js/jquery.elevatezoom.js"></script>

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