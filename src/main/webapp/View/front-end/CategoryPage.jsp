<!DOCTYPE html>
<%@page import="org.apache.jasper.tagplugins.jstl.core.If"%>
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

<!-- Price range icon -->
<link rel="stylesheet" type="text/css"
	href="${pageContext.request.contextPath}/View/assets/css/vendors/price-range.css">

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
	

	
	
	function pagination(idPage ,brands, colors, sizes) {
		var xhttp;
		 
		 

			//var url = "SearchAdvanceController?pageid=" + idPage;  encodeURIComponent(
			
			var url = "SearchAdvanceController2?pageid=" + idPage +
	          "&brands=" + brands +
	          "&colors=" + colors +
	          "&sizes=" + sizes;
			//alert(url);
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
					document.getElementById("Pagination").innerHTML = data;
				}
			}

			// gui yeu cau Sever/ Ajax reuqest
			xhttp.open("POST", url, true);
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
						<h2>collection</h2>
					</div>
				</div>
				<div class="col-sm-6">
					<nav aria-label="breadcrumb" class="theme-breadcrumb">
						<ol class="breadcrumb">
							<li class="breadcrumb-item"><a href="index.html">home</a></li>
							<li class="breadcrumb-item active" aria-current="page">collection</li>
						</ol>
					</nav>
				</div>
			</div>
		</div>
	</div>
	<!-- breadcrumb end -->


	<!-- section start -->
	<section class="section-b-space ratio_asos">
		<div class="collection-wrapper">
			<div class="container">
				<div class="row">
					<div class="collection-content col">
						<div class="page-main-content">
							<div class="row">
								<div class="col-sm-12">
									<div class="top-banner-wrapper">
										<a href="#"><img
											src="${pageContext.request.contextPath}/View/assets/images/mega-menu/2.jpg"
											class="img-fluid blur-up lazyload" alt=""></a>
										<div class="top-banner-content small-section">
											<h4>BIGGEST DEALS ON TOP BRANDS</h4>
											<p>The trick to choosing the best wear for yourself is to
												keep in mind your body type, individual style, occasion and
												also the time of day or weather. In addition to eye-catching
												products from top brands, we also offer an easy 30-day
												return and exchange policy, free and fast shipping across
												all pin codes, cash or card on delivery option, deals and
												discounts, among other perks. So, sign up now and shop for
												westarn wear to your heartâs content on Multikart.</p>
										</div>
									</div>
									<div class="collection-product-wrapper">
										<div class="product-top-filter">
											<div class="container-fluid p-0">
												<div class="row">
													<div class="col-12">
														<div class="product-filter-content">
															<div class="search-count">
																<h5 class="filter-bottom-title">
																	filter-panel
																	<h5>
															</div>
															<div class="collection-view">
																<ul>
																	<li><i class="fa fa-th grid-layout-view"></i></li>
																	<li><i class="fa fa-list-ul list-layout-view"></i>
																	</li>
																</ul>
															</div>
															<div class="collection-grid-view">
																<ul>
																	<li><img
																		src="${pageContext.request.contextPath}/View/assets/images/icon/2.png"
																		alt="" class="product-2-layout-view"></li>
																	<li><img
																		src="${pageContext.request.contextPath}/View/assets/images/icon/3.png"
																		alt="" class="product-3-layout-view"></li>
																	<li><img
																		src="${pageContext.request.contextPath}/View/assets/images/icon/4.png"
																		alt="" class="product-4-layout-view"></li>
																	<li><img
																		src="${pageContext.request.contextPath}/View/assets/images/icon/6.png"
																		alt="" class="product-6-layout-view"></li>
																</ul>
															</div>
															<div class="product-page-per-view">
																<select>
																	<option value="High to low">24 Products Par
																		Page</option>
																	<option value="Low to High">50 Products Par
																		Page</option>
																	<option value="Low to High">100 Products Par
																		Page</option>
																</select>
															</div>
															<div class="product-page-filter">
																<select>
																	<option value="High to low">Sorting items</option>
																	<option value="Low to High">50 Products</option>
																	<option value="Low to High">100 Products</option>
																</select>
															</div>
														</div>
														<div
															class="collection-filter container-fluid top-filter filter-bottom-content">
															<!-- side-bar colleps block stat -->

															<form action="SearchAdvanceController?pageid=1" method="post"
																id="filterForm">
																<div class="collection-filter-block row m-0">
																	<!-- brand filter start -->
																	<div class="collection-mobile-back col-12">
																		<span class="filter-back"><i
																			class="fa fa-angle-left" aria-hidden="true"></i> back</span>
																	</div>
																	<div class="collection-collapse-block open col-lg-3">
																		<h3 class="collapse-block-title">brand</h3>
																		<div class="collection-collapse-block-content">
																			<div class="collection-brand-filter">

																				<div class="form-check collection-filter-checkbox">
																					<input type="checkbox" name="brand" value="1"
																						class="form-check-input" id="zara"> <label
																						class="form-check-label" for="zara">Guangzhou
																						Brand</label>
																				</div>

																				<div class="form-check collection-filter-checkbox">
																					<input type="checkbox" name="brand" value="2"
																						class="form-check-input" id="vera-moda"> <label
																						class="form-check-label" for="vera-moda">Taiwan
																						Brand</label>
																				</div>
																				<div class="form-check collection-filter-checkbox">
																					<input type="checkbox" name="brand" value="3"
																						class="form-check-input" id="forever-21">
																					<label class="form-check-label" for="forever-21">Vietnam
																						Brand</label>
																				</div>
																				<div class="form-check collection-filter-checkbox">
																					<input type="checkbox" name="brand" value="4"
																						class="form-check-input" id="roadster"> <label
																						class="form-check-label" for="roadster">Fest
																						Brand</label>
																				</div>
																				<div class="form-check collection-filter-checkbox">
																					<input type="checkbox" name="brand" value="10"
																						class="form-check-input" id="only"> <label
																						class="form-check-label" for="only">Nike</label>
																				</div>
																				<div class="form-check collection-filter-checkbox">
																					<input type="checkbox" name="brand" value="11"
																						class="form-check-input" id="only"> <label
																						class="form-check-label" for="only">Rolex</label>
																				</div>
																				<div class="form-check collection-filter-checkbox">
																					<input type="checkbox" name="brand" value="12"
																						class="form-check-input" id="only"> <label
																						class="form-check-label" for="only">New
																						Era</label>
																				</div>
																			</div>
																		</div>
																	</div>
																	<!-- color filter start here -->
																	<div class="collection-collapse-block open col-lg-3">
																		<h3 class="collapse-block-title">colors</h3>
																		<div class="collection-collapse-block-content">
																			<div class="color-w-name">
																				<ul class="row">
																					<!--  
																					<li class="active col-12"><span
																						class="color-1"></span>white</li>
																					<li class="col-12"><span class="color-2" ></span>grey</li>
																					<li class="col-12"><span class="color-3"></span>red</li>
																					<li class="col-12"><span class="color-4"></span>purple
																					</li>
																					<li class="col-12"><span class="color-5"></span>blue</li>
																					<li class="col-12"><span class="color-6"></span>yellow
																					</li>
																					<li class="col-12"><span class="color-7"></span>green
																					</li>
																					-->

																					<li class="active col-12"><span
																						class="color-1"></span> <input type="checkbox"
																						name="color" value="5">white</li>

																					<li class="col-12"><span class="color-2"></span>
																						<input type="checkbox" name="color" value="3">grey
																					</li>

																					<li class="col-12"><span class="color-3"></span>
																						<input type="checkbox" name="color" value="1">red
																					</li>



																					<li class="col-12"><span class="color-5"></span>
																						<input type="checkbox" name="color" value="2">blue
																					</li>

																					<li class="col-12"><span class="color-6"></span>
																						<input type="checkbox" name="color" value="4">yellow
																					</li>



																				</ul>
																			</div>
																		</div>
																	</div>
																	<!-- size filter start here -->
																	<div
																		class="collection-collapse-block border-0 open col-lg-3">
																		<h3 class="collapse-block-title">size</h3>
																		<div class="collection-collapse-block-content">
																			<div class="collection-brand-filter">
																				<div class="form-check collection-filter-checkbox">
																					<input type="checkbox" name="size" value="1"
																						class="form-check-input" id="hundred"> <label
																						class="form-check-label" for="hundred">s</label>
																				</div>
																				<div class="form-check collection-filter-checkbox">
																					<input type="checkbox" name="size" value="2"
																						class="form-check-input" id="twohundred">
																					<label class="form-check-label" for="twohundred">m</label>
																				</div>
																				<div class="form-check collection-filter-checkbox">
																					<input type="checkbox" name="size" value="3"
																						class="form-check-input" id="threehundred">
																					<label class="form-check-label" for="threehundred">l</label>
																				</div>
																				<div class="form-check collection-filter-checkbox">
																					<input type="checkbox" name="size" value="4"
																						class="form-check-input" id="fourhundred">
																					<label class="form-check-label" for="fourhundred">xl</label>
																				</div>
																			</div>
																		</div>
																	</div>
																	<!-- price filter start here -->
																	<div
																		class="collection-collapse-block border-0 open col-lg-3">
																		<h3 class="collapse-block-title">price</h3>
																		<div class="collection-collapse-block-content">
																			<div class="wrapper mt-3">
																				<div class="range-slider">
																					<input type="text" class="js-range-slider" value="" />
																				</div>
																			</div>
																		</div>
																	</div>
																	<div class="col-12">
																		<div class="text-end button_bottom">


																			<button type="submit"
																				class="btn btn-solid btn-xs me-2">apply</button>
																			<button type="reset"
																				class="btn btn-solid btn-xs close-filter-bottom">close
																				filter</button>

																			<!--  
																			<a href="javascript:void(0)"
																				class="btn btn-solid btn-xs me-2">apply</a> <a
																				href="javascript:void(0)"
																				class="btn btn-solid btn-xs close-filter-bottom">close
																				filter</a>-->
																		</div>
																	</div>
																</div>
															</form>
															<!-- silde-bar colleps block end here -->
														</div>

													</div>
												</div>
											</div>
										</div>
										 <!--  
										<div id="Pagination"></div>
										-->
										 <div id="Pagination">
										<div class="product-wrapper-grid">
											<div class="row margin-res">

												<c:forEach items="${AllProduct}" var="list">
													<div class="col-xl-3 col-6 col-grid-box">
														<div class="product-box">
															<div class="img-wrapper">
																<div class="front">
																	<a href="ProductController?id=${list.key.getId()}"><img
																		src="${pageContext.request.contextPath}/View${list.value.get(0)}"
																		class="img-fluid blur-up lazyload bg-img" alt=""></a>
																</div>
																<div class="back">
																	<a href="ProductController?id=${list.key.getId()}"><img
																		src="${pageContext.request.contextPath}/View${list.value.get(1)}"
																		class="img-fluid blur-up lazyload bg-img" alt=""></a>
																</div>
																<div class="cart-info cart-wrap">
																	<button data-bs-toggle="modal"
																		data-bs-target="#addtocart" title="Add to cart">
																		<i class="ti-shopping-cart"></i>
																	</button>
																	<a href="javascript:void(0)" title="Add to Wishlist"><i
																		class="ti-heart" aria-hidden="true"></i></a> <a href="#"
																		data-bs-toggle="modal" data-bs-target="#quick-view"
																		title="Quick View"><i class="ti-search"
																		aria-hidden="true"></i></a> <a href="compare.html"
																		title="Compare"><i class="ti-reload"
																		aria-hidden="true"></i></a>
																</div>
															</div>
															<div class="product-detail">
																<div>
																	<div class="rating">
																		<i class="fa fa-star"></i> <i class="fa fa-star"></i>
																		<i class="fa fa-star"></i> <i class="fa fa-star"></i>
																		<i class="fa fa-star"></i>
																	</div>
																	<a href="ProductController?id=${list.key.getId()}">
																		<h6>${list.key.getName()}</h6>
																	</a>
																	<p>Lorem Ipsum is simply dummy text of the printing
																		and typesetting industry. Lorem Ipsum has been the
																		industry's standard dummy text ever since the 1500s,
																		when an unknown printer took a galley of type and
																		scrambled it to make a type specimen book</p>
																	<h4>$${list.key.getPrice()}</h4>
																	<ul class="color-variant">
																		<li class="bg-light0"></li>
																		<li class="bg-light1"></li>
																		<li class="bg-light2"></li>
																	</ul>
																</div>
															</div>
														</div>
													</div>
												</c:forEach>

											</div>
										</div>
										</div>
										
										<%
												int stt = (int) request.getAttribute("stt");
										if(stt == 1) {
											%>
											
											

										
										
										
										<div class="product-pagination">
											<div class="theme-paggination-block">
												<div class="container-fluid p-0">
													<div class="row">
														<div class="col-xl-6 col-md-6 col-sm-12">
															<nav aria-label="Page navigation">
																<ul class="pagination">
																	<c:if test="${numberpage == 1}">
																		<li class="page-item"><a class="page-link"
																			href="#" aria-label="Previous"><span
																				aria-hidden="true"><i
																					class="fa fa-chevron-left" aria-hidden="true"></i></span>
																				<span class="sr-only">Previous</span></a></li>
																	</c:if>
																	
																	
																	<!-- href="SearchAdvanceController?pageid=${numberpage-1}"
																	href="SearchAdvanceController?pageid=${num}"
																	href="SearchAdvanceController?pageid=${numberpage+1}"
																	onclick="pagination(${numberpage-1},${listBrand},${listColor},${listSize})"
																	  -->
																	

																	<c:if test="${numberpage != 1}">
																		<li class="page-item"><a class="page-link"
																		href="javascript:void(0);"
																			onclick="pagination('${numberpage-1}','${listBrand}','${listColor}','${listSize}')"
																			aria-label="Previous"><span aria-hidden="true"><i
																					class="fa fa-chevron-left" aria-hidden="true"></i></span>
																				<span class="sr-only">Previous</span></a></li>
																	</c:if>




																	<c:forEach begin="1" end="${maxpageid}" var="num">
																		<li class="page-item active"><a class="page-link"
																		href="javascript:void(0);"
																			onclick="pagination('${num}','${listBrand}','${listColor}','${listSize}')">${num}</a></li>
																	</c:forEach>
																	<c:if test="${numberpage == maxpageid}">
																		<li class="page-item"><a class="page-link"
																			href="#" aria-label="Next"><span
																				aria-hidden="true"><i
																					class="fa fa-chevron-right" aria-hidden="true"></i></span>
																				<span class="sr-only">Next</span></a></li>

																	</c:if>

																	<c:if test="${numberpage != maxpageid}">
																		<li class="page-item"><a class="page-link"
																			href="javascript:void(0);"
																			onclick="pagination('${numberpage+1}','${listBrand}','${listColor}','${listSize}')"
																			aria-label="Next"><span aria-hidden="true"><i
																					class="fa fa-chevron-right" aria-hidden="true"></i></span>
																				<span class="sr-only">Next</span></a></li>

																	</c:if>
																</ul>
															</nav>
														</div>
														<div class="col-xl-6 col-md-6 col-sm-12">
															<div class="product-search-count-bottom">
																<h5>Showing Products 1-24 of 10 Result</h5>
															</div>
														</div>
													</div>
												</div>
											</div>
										</div>

									<%
    } else {
%>
<div class="product-wrapper-grid">
											<div class="row margin-res">

												<c:forEach items="${AllProduct}" var="list">
													<div class="col-xl-3 col-6 col-grid-box">
														<div class="product-box">
															<div class="img-wrapper">
																<div class="front">
																	<a href="ProductController?id=${list.key.getId()}"><img
																		src="${pageContext.request.contextPath}/View${list.value.get(0)}"
																		class="img-fluid blur-up lazyload bg-img" alt=""></a>
																</div>
																<div class="back">
																	<a href="ProductController?id=${list.key.getId()}"><img
																		src="${pageContext.request.contextPath}/View${list.value.get(1)}"
																		class="img-fluid blur-up lazyload bg-img" alt=""></a>
																</div>
																<div class="cart-info cart-wrap">
																	<button data-bs-toggle="modal"
																		data-bs-target="#addtocart" title="Add to cart">
																		<i class="ti-shopping-cart"></i>
																	</button>
																	<a href="javascript:void(0)" title="Add to Wishlist"><i
																		class="ti-heart" aria-hidden="true"></i></a> <a href="#"
																		data-bs-toggle="modal" data-bs-target="#quick-view"
																		title="Quick View"><i class="ti-search"
																		aria-hidden="true"></i></a> <a href="compare.html"
																		title="Compare"><i class="ti-reload"
																		aria-hidden="true"></i></a>
																</div>
															</div>
															<div class="product-detail">
																<div>
																	<div class="rating">
																		<i class="fa fa-star"></i> <i class="fa fa-star"></i>
																		<i class="fa fa-star"></i> <i class="fa fa-star"></i>
																		<i class="fa fa-star"></i>
																	</div>
																	<a href="ProductController?id=${list.key.getId()}">
																		<h6>${list.key.getName()}</h6>
																	</a>
																	<p>Lorem Ipsum is simply dummy text of the printing
																		and typesetting industry. Lorem Ipsum has been the
																		industry's standard dummy text ever since the 1500s,
																		when an unknown printer took a galley of type and
																		scrambled it to make a type specimen book</p>
																	<h4>$${list.key.getPrice()}</h4>
																	<ul class="color-variant">
																		<li class="bg-light0"></li>
																		<li class="bg-light1"></li>
																		<li class="bg-light2"></li>
																	</ul>
																</div>
															</div>
														</div>
													</div>
												</c:forEach>

											</div>
										</div>

<div class="product-pagination">
											<div class="theme-paggination-block">
												<div class="container-fluid p-0">
													<div class="row">
														<div class="col-xl-6 col-md-6 col-sm-12">
															<nav aria-label="Page navigation">
																<ul class="pagination">
																	<c:if test="${numberpage == 1}">
																		<li class="page-item"><a class="page-link"
																			href="#" aria-label="Previous"><span
																				aria-hidden="true"><i
																					class="fa fa-chevron-left" aria-hidden="true"></i></span>
																				<span class="sr-only">Previous</span></a></li>
																	</c:if>

																	<c:if test="${numberpage != 1}">
																		<li class="page-item"><a class="page-link"
																			href="CategoryPageController?pageid=${numberpage-1}"
																			aria-label="Previous"><span aria-hidden="true"><i
																					class="fa fa-chevron-left" aria-hidden="true"></i></span>
																				<span class="sr-only">Previous</span></a></li>
																	</c:if>




																	<c:forEach begin="1" end="${maxpageid}" var="num">
																		<li class="page-item active"><a class="page-link"
																			href="CategoryPageController?pageid=${num}">${num}</a></li>
																	</c:forEach>
																	<c:if test="${numberpage == maxpageid}">
																		<li class="page-item"><a class="page-link"
																			href="#" aria-label="Next"><span
																				aria-hidden="true"><i
																					class="fa fa-chevron-right" aria-hidden="true"></i></span>
																				<span class="sr-only">Next</span></a></li>

																	</c:if>

																	<c:if test="${numberpage != maxpageid}">
																		<li class="page-item"><a class="page-link"
																			href="CategoryPageController?pageid=${numberpage+1}"
																			aria-label="Next"><span aria-hidden="true"><i
																					class="fa fa-chevron-right" aria-hidden="true"></i></span>
																				<span class="sr-only">Next</span></a></li>

																	</c:if>
																</ul>
															</nav>
														</div>
														<div class="col-xl-6 col-md-6 col-sm-12">
															<div class="product-search-count-bottom">
																<h5>Showing Products 1-24 of 10 Result</h5>
															</div>
														</div>
													</div>
												</div>
											</div>
										</div>


<%
    }
%>

									</div>
								</div>
							</div>
						</div>
					</div>
				</div>
			</div>
		</div>
	</section>
	<!-- section End -->


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


	<!-- Quick-view modal popup start-->
	<div class="modal fade bd-example-modal-lg theme-modal" id="quick-view"
		tabindex="-1" role="dialog" aria-hidden="true">
		<div class="modal-dialog modal-lg modal-dialog-centered"
			role="document">
			<div class="modal-content quick-view-modal">
				<div class="modal-body">
					<button type="button" class="btn-close" data-bs-dismiss="modal"
						aria-label="Close">
						<span aria-hidden="true">&times;</span>
					</button>
					<div class="row">
						<div class="col-lg-6 col-xs-12">
							<div class="quick-view-img">
								<img
									src="${pageContext.request.contextPath}/View/assets/images/pro3/1.jpg"
									alt="" class="img-fluid blur-up lazyload">
							</div>
						</div>
						<div class="col-lg-6 rtl-text">
							<div class="product-right">
								<h2>Women Pink Shirt</h2>
								<h3>$32.96</h3>
								<ul class="color-variant">
									<li class="bg-light0"></li>
									<li class="bg-light1"></li>
									<li class="bg-light2"></li>
								</ul>
								<div class="border-product">
									<h6 class="product-title">product details</h6>
									<p>Sed ut perspiciatis, unde omnis iste natus error sit
										voluptatem accusantium doloremque laudantium</p>
								</div>
								<div class="product-description border-product">
									<div class="size-box">
										<ul>
											<li class="active"><a href="javascript:void(0)">s</a></li>
											<li><a href="javascript:void(0)">m</a></li>
											<li><a href="javascript:void(0)">l</a></li>
											<li><a href="javascript:void(0)">xl</a></li>
										</ul>
									</div>
									<h6 class="product-title">quantity</h6>
									<div class="qty-box">
										<div class="input-group">
											<span class="input-group-prepend"><button
													type="button" class="btn quantity-left-minus"
													data-type="minus" data-field="">
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
									<a href="#" class="btn btn-solid">add to cart</a> <a href="#"
										class="btn btn-solid">view detail</a>
								</div>
							</div>
						</div>
					</div>
				</div>
			</div>
		</div>
	</div>
	<!-- Quick-view modal popup end-->


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

	<!-- price range js -->
	<script
		src="${pageContext.request.contextPath}/View/assets/js/price-range.js"></script>

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