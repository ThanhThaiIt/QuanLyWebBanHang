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

function addToCart(idProduct) {
	var xhttp;
	 
	 

		var url = "CartController?id=" + idProduct;
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



</script>

</head>

<body class="theme-color-1">


	<!-- loader start -->
	<jsp:include page="LoaderStart.jsp" />
	<!-- loader end -->


	<!-- header start -->
	<jsp:include page="HeaderFront.jsp" />
	<!-- header end -->


	<!-- Home slider -->
	<section class="p-0">


		<div class="slide-1 home-slider">
			<c:forEach items="${listBannera}" var="list">
				<div>



					<div class="home  text-center">
						<img src="${pageContext.request.contextPath}/${list}" alt=""
							class="bg-img blur-up lazyload">
						<div class="container">
							<div class="row">
								<div class="col">
									<div class="slider-contain">
										<div>
											<h4>welcome to fashion</h4>
											<h1>men fashion</h1>
											<a href="#" class="btn btn-solid">shop now</a>
										</div>
									</div>
								</div>
							</div>
						</div>
					</div>

				</div>
			</c:forEach>
		</div>
	</section>
	<!-- Home slider end -->


	<!-- collection banner -->
	<section class="pb-0 ratio2_1">
		<div class="container">
			<div class="row partition2">
				<div class="col-md-6">
					<a href="#">
						<div class="collection-banner p-right text-center">
							<div class="img-part">
								<img src="../assets/images/sub-banner1.jpg"
									class="img-fluid blur-up lazyload bg-img" alt="">
							</div>
							<div class="contain-banner">
								<div>
									<h4>save 30%</h4>
									<h2>men</h2>
								</div>
							</div>
						</div>
					</a>
				</div>
				<div class="col-md-6">
					<a href="#">
						<div class="collection-banner p-right text-center">
							<div class="img-part">
								<img src="../assets/images/sub-banner2.jpg"
									class="img-fluid blur-up lazyload bg-img" alt="">
							</div>
							<div class="contain-banner">
								<div>
									<h4>save 60%</h4>
									<h2>women</h2>
								</div>
							</div>
						</div>
					</a>
				</div>
			</div>
		</div>
	</section>
	<!-- collection banner end -->


	<!-- Paragraph-->
	<div class="title1 section-t-space">
		<h4>special offer</h4>
		<h2 class="title-inner1">Latest Drops</h2>
	</div>
	<div class="container">
		<div class="row">
			<div class="col-lg-6 offset-lg-3">
				<div class="product-para">
					<p class="text-center">Looking for the latest trends in
						clothing, shoes and accessories? Welcome to our 'Latest Drops'
						edit, bringing you all the latest styles from all your fave
						brands.</p>
				</div>
			</div>
		</div>
	</div>
	<!-- Paragraph end -->


	<!-- Product slider -->
	<section class="section-b-space pt-0 ratio_asos">
		<div class="container">
			<div class="row">
				<div class="col">
					<div class="product-4 product-m no-arrow">
						<c:forEach items="${listProduct}" var="list">
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
										<button data-bs-toggle="modal"  onclick="addToCart(${list.key.getId()})" data-bs-target="#addtocart"
											title="Add to cart">
											<i  class="ti-shopping-cart"></i>
										</button>
										<a href="javascript:void(0)" title="Add to Wishlist"> <i
											class="ti-heart" aria-hidden="true"></i>
										</a> <a href="#" data-bs-toggle="modal"
											data-bs-target="#quick-view" title="Quick View"> <i
											class="ti-search" aria-hidden="true"></i>
										</a> <a href="compare.html" title="Compare"> <i
											class="ti-reload" aria-hidden="true"></i>
										</a>
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
						</c:forEach>
					</div>
				</div>
			</div>
		</div>
	</section>
	<!-- Product slider end -->


	<!-- Parallax banner -->
	<section class="p-0">
		<div class="full-banner parallax text-center p-left">
			<img src="../assets/images/parallax/1.jpg" alt=""
				class="bg-img blur-up lazyload">
			<div class="container">
				<div class="row">
					<div class="col">
						<div class="banner-contain">
							<h2>2021</h2>
							<h3>fashion trends</h3>
							<h4>special offer</h4>
						</div>
					</div>
				</div>
			</div>
		</div>
	</section>
	<!-- Parallax banner end -->


	<!-- Tab product -->
	<div class="title1 section-t-space">
		<h4>exclusive products</h4>
		<h2 class="title-inner1">everyday casual</h2>
	</div>
	<section class="section-b-space pt-0 ratio_asos">
		<div class="container">
			<div class="row">
				<div class="col">
					<div class="theme-tab">
						<ul class="tabs tab-title">
							<li class="current"><a href="tab-4">Sneaker</a></li>
							<li class=""><a href="tab-5">Watch</a></li>
							<li class=""><a href="tab-6">CAP</a></li>
						</ul>
						<div class="tab-content-cls">
							<div id="tab-4" class="tab-content active default">
								<div class="no-slider row">

									<c:forEach items="${listSneaker}" var="listSn">
										<div class="product-box">
											<div class="img-wrapper">
												<div class="front">
													<a href="ProductController?id=${listSn.key.getId()}"><img
														src="${pageContext.request.contextPath}/View${listSn.value.get(0)}"
														class="img-fluid blur-up lazyload bg-img" alt=""></a>
												</div>
												<div class="back">
													<a href="ProductController?id=${listSn.key.getId()}"><img
														src="${pageContext.request.contextPath}/View${listSn.value.get(1)}"
														class="img-fluid blur-up lazyload bg-img" alt=""></a>
												</div>
												<div class="cart-info cart-wrap">
													<button data-bs-toggle="modal" data-bs-target="#addtocart"
														title="Add to cart">
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
												<div class="rating">
													<i class="fa fa-star"></i> <i class="fa fa-star"></i> <i
														class="fa fa-star"></i> <i class="fa fa-star"></i> <i
														class="fa fa-star"></i>
												</div>
												<a href="product-page(no-sidebar).html">
													<h6>${listSn.key.getName()}</h6>
												</a>
												<h4>$${listSn.key.getPrice()}</h4>
												<ul class="color-variant">
													<li class="bg-light0"></li>
													<li class="bg-light1"></li>
													<li class="bg-light2"></li>
												</ul>
											</div>
										</div>
									</c:forEach>



								</div>
							</div>
							<div id="tab-5" class="tab-content">
								<div class="no-slider row">
									<c:forEach items="${listWatch}" var="listW">
										<div class="product-box">
											<div class="img-wrapper">
												<div class="lable-block">
													<span class="lable3">new</span> <span class="lable4">on
														sale</span>
												</div>
												<div class="front">
													<a href="ProductController?id=${listW.key.getId()}"><img
														src="${pageContext.request.contextPath}/View${listW.value.get(0)}"
														class="img-fluid blur-up lazyload bg-img" alt=""></a>
												</div>
												<div class="back">
													<a href="ProductController?id=${listW.key.getId()}"><img
														src="${pageContext.request.contextPath}/View${listW.value.get(1)}"
														class="img-fluid blur-up lazyload bg-img" alt=""></a>
												</div>
												<div class="cart-info cart-wrap">
													<button data-bs-toggle="modal" data-bs-target="#addtocart"
														title="Add to cart">
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
												<div class="rating">
													<i class="fa fa-star"></i> <i class="fa fa-star"></i> <i
														class="fa fa-star"></i> <i class="fa fa-star"></i> <i
														class="fa fa-star"></i>
												</div>
												<a href="product-page(no-sidebar).html">
													<h6>${listW.key.getName()}</h6>
												</a>
												<h4>$${listW.key.getPrice()}</h4>
												<ul class="color-variant">
													<li class="bg-light0"></li>
													<li class="bg-light1"></li>
													<li class="bg-light2"></li>
												</ul>
											</div>
										</div>

									</c:forEach>

								</div>
							</div>
							<div id="tab-6" class="tab-content">
								<div class="no-slider row">
									<c:forEach items="${listCap}" var="lCap">
										<div class="product-box">
											<div class="img-wrapper">
												<div class="lable-block">
													<span class="lable3">new</span> <span class="lable4">on
														sale</span>
												</div>
												<div class="front">
													<a href="ProductController?id=${lCap.key.getId()}"><img
														src="${pageContext.request.contextPath}/View${lCap.value.get(0)}"
														class="img-fluid blur-up lazyload bg-img" alt=""></a>
												</div>
												<div class="back">
													<a href="ProductController?id=${lCap.key.getId()}"><img
														src="${pageContext.request.contextPath}/View${lCap.value.get(1)}"
														class="img-fluid blur-up lazyload bg-img" alt=""></a>
												</div>
												<div class="cart-info cart-wrap">
													<button data-bs-toggle="modal" data-bs-target="#addtocart"
														title="Add to cart">
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
												<div class="rating">
													<i class="fa fa-star"></i> <i class="fa fa-star"></i> <i
														class="fa fa-star"></i> <i class="fa fa-star"></i> <i
														class="fa fa-star"></i>
												</div>
												<a href="product-page(no-sidebar).html">
													<h6>${lCap.key.getName()}</h6>
												</a>
												<h4>$${lCap.key.getPrice()}</h4>
												<ul class="color-variant">
													<li class="bg-light0"></li>
													<li class="bg-light1"></li>
													<li class="bg-light2"></li>
												</ul>
											</div>
										</div>

									</c:forEach>

								</div>
							</div>

						</div>
					</div>
				</div>
			</div>
		</div>
	</section>
	<!-- Tab product end -->


	<!-- service layout -->
	<div class="container">
		<section class="service border-section small-section">
			<div class="row">
				<div class="col-md-4 service-block">
					<div class="media">
						<svg xmlns="http://www.w3.org/2000/svg"
							viewBox="0 -117 679.99892 679">
                            <path
								d="m12.347656 378.382812h37.390625c4.371094 37.714844 36.316407 66.164063 74.277344 66.164063 37.96875 0 69.90625-28.449219 74.28125-66.164063h241.789063c4.382812 37.714844 36.316406 66.164063 74.277343 66.164063 37.96875 0 69.902344-28.449219 74.285157-66.164063h78.890624c6.882813 0 12.460938-5.578124 12.460938-12.460937v-352.957031c0-6.882813-5.578125-12.464844-12.460938-12.464844h-432.476562c-6.875 0-12.457031 5.582031-12.457031 12.464844v69.914062h-105.570313c-4.074218.011719-7.890625 2.007813-10.21875 5.363282l-68.171875 97.582031-26.667969 37.390625-9.722656 13.835937c-1.457031 2.082031-2.2421872 4.558594-2.24999975 7.101563v121.398437c-.09765625 3.34375 1.15624975 6.589844 3.47656275 9.003907 2.320312 2.417968 5.519531 3.796874 8.867187 3.828124zm111.417969 37.386719c-27.527344 0-49.851563-22.320312-49.851563-49.847656 0-27.535156 22.324219-49.855469 49.851563-49.855469 27.535156 0 49.855469 22.320313 49.855469 49.855469 0 27.632813-22.21875 50.132813-49.855469 50.472656zm390.347656 0c-27.53125 0-49.855469-22.320312-49.855469-49.847656 0-27.535156 22.324219-49.855469 49.855469-49.855469 27.539063 0 49.855469 22.320313 49.855469 49.855469.003906 27.632813-22.21875 50.132813-49.855469 50.472656zm140.710938-390.34375v223.34375h-338.375c-6.882813 0-12.464844 5.578125-12.464844 12.460938 0 6.882812 5.582031 12.464843 12.464844 12.464843h338.375v79.761719h-66.421875c-4.382813-37.710937-36.320313-66.15625-74.289063-66.15625-37.960937 0-69.898437 28.445313-74.277343 66.15625h-192.308594v-271.324219h89.980468c6.882813 0 12.464844-5.582031 12.464844-12.464843 0-6.882813-5.582031-12.464844-12.464844-12.464844h-89.980468v-31.777344zm-531.304688 82.382813h99.703125v245.648437h-24.925781c-4.375-37.710937-36.3125-66.15625-74.28125-66.15625-37.960937 0-69.90625 28.445313-74.277344 66.15625h-24.929687v-105.316406l3.738281-5.359375h152.054687c6.882813 0 12.460938-5.574219 12.460938-12.457031v-92.226563c0-6.882812-5.578125-12.464844-12.460938-12.464844h-69.796874zm-30.160156 43h74.777344v67.296875h-122.265625zm0 0"
								fill="#ff4c3b" />
                        </svg>
						<div class="media-body">
							<h4>free shipping</h4>
							<p>free shipping world wide</p>
						</div>
					</div>
				</div>
				<div class="col-md-4 service-block">
					<div class="media">
						<svg xmlns="http://www.w3.org/2000/svg"
							xmlns:xlink="http://www.w3.org/1999/xlink" version="1.1"
							id="Capa_1" x="0px" y="0px" viewBox="0 0 480 480"
							style="enable-background: new 0 0 480 480;" xml:space="preserve"
							width="512px" height="512px">
                            <g>
                                <g>
                                    <g>
                                        <path
								d="M472,432h-24V280c-0.003-4.418-3.588-7.997-8.006-7.994c-2.607,0.002-5.05,1.274-6.546,3.41l-112,160 c-2.532,3.621-1.649,8.609,1.972,11.14c1.343,0.939,2.941,1.443,4.58,1.444h104v24c0,4.418,3.582,8,8,8s8-3.582,8-8v-24h24 c4.418,0,8-3.582,8-8S476.418,432,472,432z M432,432h-88.64L432,305.376V432z"
								fill="#ff4c3b" />
                                        <path
								d="M328,464h-94.712l88.056-103.688c0.2-0.238,0.387-0.486,0.56-0.744c16.566-24.518,11.048-57.713-12.56-75.552 c-28.705-20.625-68.695-14.074-89.319,14.631C212.204,309.532,207.998,322.597,208,336c0,4.418,3.582,8,8,8s8-3.582,8-8 c-0.003-26.51,21.486-48.002,47.995-48.005c10.048-0.001,19.843,3.151,28.005,9.013c16.537,12.671,20.388,36.007,8.8,53.32 l-98.896,116.496c-2.859,3.369-2.445,8.417,0.924,11.276c1.445,1.226,3.277,1.899,5.172,1.9h112c4.418,0,8-3.582,8-8 S332.418,464,328,464z"
								fill="#ff4c3b" />
                                        <path
								d="M216.176,424.152c0.167-4.415-3.278-8.129-7.693-8.296c-0.001,0-0.002,0-0.003,0 C104.11,411.982,20.341,328.363,16.28,224H48c4.418,0,8-3.582,8-8s-3.582-8-8-8H16.28C20.283,103.821,103.82,20.287,208,16.288 V40c0,4.418,3.582,8,8,8s8-3.582,8-8V16.288c102.754,3.974,185.686,85.34,191.616,188l-31.2-31.2 c-3.178-3.07-8.242-2.982-11.312,0.196c-2.994,3.1-2.994,8.015,0,11.116l44.656,44.656c0.841,1.018,1.925,1.807,3.152,2.296 c0.313,0.094,0.631,0.172,0.952,0.232c0.549,0.198,1.117,0.335,1.696,0.408c0.08,0,0.152,0,0.232,0c0.08,0,0.152,0,0.224,0 c0.609-0.046,1.211-0.164,1.792-0.352c0.329-0.04,0.655-0.101,0.976-0.184c1.083-0.385,2.069-1.002,2.888-1.808l45.264-45.248 c3.069-3.178,2.982-8.242-0.196-11.312c-3.1-2.994-8.015-2.994-11.116,0l-31.976,31.952 C425.933,90.37,331.38,0.281,216.568,0.112C216.368,0.104,216.2,0,216,0s-0.368,0.104-0.568,0.112 C96.582,0.275,0.275,96.582,0.112,215.432C0.112,215.632,0,215.8,0,216s0.104,0.368,0.112,0.568 c0.199,115.917,91.939,210.97,207.776,215.28h0.296C212.483,431.847,216.013,428.448,216.176,424.152z"
								fill="#ff4c3b" />
                                        <path
								d="M323.48,108.52c-3.124-3.123-8.188-3.123-11.312,0L226.2,194.48c-6.495-2.896-13.914-2.896-20.408,0l-40.704-40.704 c-3.178-3.069-8.243-2.981-11.312,0.197c-2.994,3.1-2.994,8.015,0,11.115l40.624,40.624c-5.704,11.94-0.648,26.244,11.293,31.947 c9.165,4.378,20.095,2.501,27.275-4.683c7.219-7.158,9.078-18.118,4.624-27.256l85.888-85.888 C326.603,116.708,326.603,111.644,323.48,108.52z M221.658,221.654c-0.001,0.001-0.001,0.001-0.002,0.002 c-3.164,3.025-8.148,3.025-11.312,0c-3.125-3.124-3.125-8.189-0.002-11.314c3.124-3.125,8.189-3.125,11.314-0.002 C224.781,213.464,224.781,218.53,221.658,221.654z"
								fill="#ff4c3b" />
                                    </g>
                                </g>
                            </g>
                        </svg>
						<div class="media-body">
							<h4>24 X 7 service</h4>
							<p>online service for new customer</p>
						</div>
					</div>
				</div>
				<div class="col-md-4 service-block">
					<div class="media">
						<svg xmlns="http://www.w3.org/2000/svg"
							viewBox="0 -14 512.00001 512">
                            <path
								d="m136.964844 308.234375c4.78125-2.757813 6.417968-8.878906 3.660156-13.660156-2.761719-4.777344-8.878906-6.417969-13.660156-3.660157-4.78125 2.761719-6.421875 8.882813-3.660156 13.660157 2.757812 4.78125 8.878906 6.421875 13.660156 3.660156zm0 0"
								fill="#ff4c3b" />
                            <path
								d="m95.984375 377.253906 50.359375 87.230469c10.867188 18.84375 35.3125 25.820313 54.644531 14.644531 19.128907-11.054687 25.703125-35.496094 14.636719-54.640625l-30-51.96875 25.980469-15c4.78125-2.765625 6.421875-8.878906 3.660156-13.660156l-13.003906-22.523437c1.550781-.300782 11.746093-2.300782 191.539062-37.570313 22.226563-1.207031 35.542969-25.515625 24.316407-44.949219l-33.234376-57.5625 21.238282-32.167968c2.085937-3.164063 2.210937-7.230469.316406-10.511719l-20-34.640625c-1.894531-3.28125-5.492188-5.203125-9.261719-4.980469l-38.472656 2.308594-36.894531-63.90625c-5.34375-9.257813-14.917969-14.863281-25.605469-14.996094-.128906-.003906-.253906-.003906-.382813-.003906-10.328124 0-19.703124 5.140625-25.257812 13.832031l-130.632812 166.414062-84.925782 49.03125c-33.402344 19.277344-44.972656 62.128907-25.621094 95.621094 17.679688 30.625 54.953126 42.671875 86.601563 30zm102.324219 57.238282c5.523437 9.554687 2.253906 21.78125-7.328125 27.316406-9.613281 5.558594-21.855469 2.144531-27.316407-7.320313l-50-86.613281 34.640626-20c57.867187 100.242188 49.074218 85.011719 50.003906 86.617188zm-22.683594-79.296876-10-17.320312 17.320312-10 10 17.320312zm196.582031-235.910156 13.820313 23.9375-12.324219 18.664063-23.820313-41.261719zm-104.917969-72.132812c2.683594-4.390625 6.941407-4.84375 8.667969-4.796875 1.707031.019531 5.960938.550781 8.527344 4.996093l116.3125 201.464844c3.789063 6.558594-.816406 14.804688-8.414063 14.992188-1.363281.03125-1.992187.277344-5.484374.929687l-123.035157-213.105469c2.582031-3.320312 2.914063-3.640624 3.425781-4.480468zm-16.734374 21.433594 115.597656 200.222656-174.460938 34.21875-53.046875-91.878906zm-223.851563 268.667968c-4.390625-7.597656-6.710937-16.222656-6.710937-24.949218 0-17.835938 9.585937-34.445313 25.011718-43.351563l77.941406-45 50 86.601563-77.941406 45.003906c-23.878906 13.78125-54.515625 5.570312-68.300781-18.304688zm0 0"
								fill="#ff4c3b" />
                            <path
								d="m105.984375 314.574219c-2.761719-4.78125-8.878906-6.421875-13.660156-3.660157l-17.320313 10c-4.773437 2.757813-10.902344 1.113282-13.660156-3.660156-2.761719-4.78125-8.878906-6.421875-13.660156-3.660156s-6.421875 8.878906-3.660156 13.660156c8.230468 14.257813 26.589843 19.285156 40.980468 10.980469l17.320313-10c4.78125-2.761719 6.421875-8.875 3.660156-13.660156zm0 0"
								fill="#ff4c3b" />
                            <path
								d="m497.136719 43.746094-55.722657 31.007812c-4.824218 2.6875-6.5625 8.777344-3.875 13.601563 2.679688 4.820312 8.765626 6.566406 13.601563 3.875l55.71875-31.007813c4.828125-2.6875 6.5625-8.777344 3.875-13.601562-2.683594-4.828125-8.773437-6.5625-13.597656-3.875zm0 0"
								fill="#ff4c3b" />
                            <path
								d="m491.292969 147.316406-38.636719-10.351562c-5.335938-1.429688-10.820312 1.734375-12.25 7.070312-1.429688 5.335938 1.738281 10.816406 7.074219 12.246094l38.640625 10.351562c5.367187 1.441407 10.824218-1.773437 12.246094-7.070312 1.429687-5.335938-1.738282-10.820312-7.074219-12.246094zm0 0"
								fill="#ff4c3b" />
                            <path
								d="m394.199219 7.414062-10.363281 38.640626c-1.429688 5.335937 1.734374 10.816406 7.070312 12.25 5.332031 1.425781 10.816406-1.730469 12.25-7.070313l10.359375-38.640625c1.429687-5.335938-1.734375-10.820312-7.070313-12.25-5.332031-1.429688-10.816406 1.734375-12.246093 7.070312zm0 0"
								fill="#ff4c3b" />
                        </svg>
						<div class="media-body">
							<h4>festival offer</h4>
							<p>new online special festival offer</p>
						</div>
					</div>
				</div>
			</div>
		</section>
	</div>
	<!-- service layout  end -->


	<!-- blog section -->
	<div class="container">
		<div class="row">
			<div class="col">
				<div class="title1 section-t-space">
					<h4>From the Blog</h4>
					<h2 class="title-inner1">Fashion for you</h2>
				</div>
			</div>
		</div>
	</div>
	<section class="blog pt-0 ratio2_3">
		<div class="container">
			<div class="row">
				<div class="col-md-12">
					<div class="slide-3 no-arrow slick-default-margin">
						<div class="col-md-12">
							<a href="#">
								<div class="classic-effect">
									<div>
										<img src="../assets/images/blog/1.jpg"
											class="img-fluid blur-up lazyload bg-img" alt="">
									</div>
									<span></span>
								</div>
							</a>
							<div class="blog-details">
								<h4>25 January 2021</h4>
								<a href="#">
									<p>Top 10 January Best-Sellers Products â All Under $50!</p>
								</a>
								<hr class="style1">
								<h6>by: John Dio , 2 Comment</h6>
							</div>
						</div>
						<div class="col-md-12">
							<a href="#">
								<div class="classic-effect">
									<div>
										<img src="../assets/images/blog/2.jpg"
											class="img-fluid blur-up lazyload bg-img" alt="">
									</div>
									<span></span>
								</div>
							</a>
							<div class="blog-details">
								<h4>25 January 2018</h4>
								<a href="#">
									<p>Quarantine Birthday Celebration | In The Times of
										COVID-19</p>
								</a>
								<hr class="style1">
								<h6>by: John Dio , 2 Comment</h6>
							</div>
						</div>
						<div class="col-md-12">
							<a href="#">
								<div class="classic-effect">
									<div>
										<img src="../assets/images/blog/3.jpg"
											class="img-fluid blur-up lazyload bg-img" alt="">
									</div>
									<span></span>
								</div>
							</a>
							<div class="blog-details">
								<h4>25 January 2018</h4>
								<a href="#">
									<p>London fashion & Hair Trends From Fashion Week</p>
								</a>
								<hr class="style1">
								<h6>by: John Dio , 2 Comment</h6>
							</div>
						</div>
						<div class="col-md-12">
							<a href="#">
								<div class="classic-effect">
									<div>
										<img src="../assets/images/blog/4.jpg"
											class="img-fluid blur-up lazyload bg-img" alt="">
									</div>
									<span></span>
								</div>
							</a>
							<div class="blog-details">
								<h4>25 January 2018</h4>
								<a href="#">
									<p>Fun Fashion Clothing and Ideas for Valentineâs Day</p>
								</a>
								<hr class="style1">
								<h6>by: John Dio , 2 Comment</h6>
							</div>
						</div>
						<div class="col-md-12">
							<a href="#">
								<div class="classic-effect">
									<div>
										<img src="../assets/images/blog/5.jpg"
											class="img-fluid blur-up lazyload bg-img" alt="">
									</div>
									<span></span>
								</div>
							</a>
							<div class="blog-details">
								<h4>25 January 2018</h4>
								<a href="#">
									<p>Lorem ipsum dolor sit consectetur adipiscing elit,</p>
								</a>
								<hr class="style1">
								<h6>by: John Dio , 2 Comment</h6>
							</div>
						</div>
					</div>
				</div>
			</div>
		</div>
	</section>
	<!-- blog section end -->


	<!-- instagram section -->
	<section class="instagram ratio_square">
		<div class="container-fluid">
			<div class="row">
				<div class="col-md-12 p-0">
					<h2 class="title-borderless">#whowearwhat</h2>
					<div class="slide-7 no-arrow slick-instagram">
						<div>
							<a href="#">
								<div class="instagram-box">
									<img src="../assets/images/slider/2.jpg" class="bg-img"
										alt="img">
									<div class="overlay">
										<i class="fa fa-instagram" aria-hidden="true"></i>
									</div>
								</div>
							</a>
						</div>
						<div>
							<a href="#">
								<div class="instagram-box">
									<img src="../assets/images/slider/3.jpg" class="bg-img"
										alt="img">
									<div class="overlay">
										<i class="fa fa-instagram" aria-hidden="true"></i>
									</div>
								</div>
							</a>
						</div>
						<div>
							<a href="#">
								<div class="instagram-box">
									<img src="../assets/images/slider/4.jpg" class="bg-img"
										alt="img">
									<div class="overlay">
										<i class="fa fa-instagram" aria-hidden="true"></i>
									</div>
								</div>
							</a>
						</div>
						<div>
							<a href="#">
								<div class="instagram-box">
									<img src="../assets/images/slider/9.jpg" class="bg-img"
										alt="img">
									<div class="overlay">
										<i class="fa fa-instagram" aria-hidden="true"></i>
									</div>
								</div>
							</a>
						</div>
						<div>
							<a href="#">
								<div class="instagram-box">
									<img src="../assets/images/slider/6.jpg" class="bg-img"
										alt="img">
									<div class="overlay">
										<i class="fa fa-instagram" aria-hidden="true"></i>
									</div>
								</div>
							</a>
						</div>
						<div>
							<a href="#">
								<div class="instagram-box">
									<img src="../assets/images/slider/7.jpg" class="bg-img"
										alt="img">
									<div class="overlay">
										<i class="fa fa-instagram" aria-hidden="true"></i>
									</div>
								</div>
							</a>
						</div>
						<div>
							<a href="#">
								<div class="instagram-box">
									<img src="../assets/images/slider/8.jpg" class="bg-img"
										alt="img">
									<div class="overlay">
										<i class="fa fa-instagram" aria-hidden="true"></i>
									</div>
								</div>
							</a>
						</div>
						<div>
							<a href="#">
								<div class="instagram-box">
									<img src="../assets/images/slider/9.jpg" class="bg-img"
										alt="img">
									<div class="overlay">
										<i class="fa fa-instagram" aria-hidden="true"></i>
									</div>
								</div>
							</a>
						</div>
						<div>
							<a href="#">
								<div class="instagram-box">
									<img src="../assets/images/slider/2.jpg" class="bg-img"
										alt="img">
									<div class="overlay">
										<i class="fa fa-instagram" aria-hidden="true"></i>
									</div>
								</div>
							</a>
						</div>
					</div>
				</div>
			</div>
		</div>
	</section>
	<!-- instagram section end -->


	<!--  logo section -->
	<section class="section-b-space">
		<div class="container">
			<div class="row">
				<div class="col-md-12">
					<div class="slide-6 no-arrow">
						<div>
							<div class="logo-block">
								<a href="#"><img src="../assets/images/logos/1.png" alt=""></a>
							</div>
						</div>
						<div>
							<div class="logo-block">
								<a href="#"><img src="../assets/images/logos/2.png" alt=""></a>
							</div>
						</div>
						<div>
							<div class="logo-block">
								<a href="#"><img src="../assets/images/logos/3.png" alt=""></a>
							</div>
						</div>
						<div>
							<div class="logo-block">
								<a href="#"><img src="../assets/images/logos/4.png" alt=""></a>
							</div>
						</div>
						<div>
							<div class="logo-block">
								<a href="#"><img src="../assets/images/logos/5.png" alt=""></a>
							</div>
						</div>
						<div>
							<div class="logo-block">
								<a href="#"><img src="../assets/images/logos/6.png" alt=""></a>
							</div>
						</div>
						<div>
							<div class="logo-block">
								<a href="#"><img src="../assets/images/logos/7.png" alt=""></a>
							</div>
						</div>
						<div>
							<div class="logo-block">
								<a href="#"><img src="../assets/images/logos/8.png" alt=""></a>
							</div>
						</div>
					</div>
				</div>
			</div>
		</div>
	</section>
	<!--  logo section end-->


	<!-- footer -->
	<jsp:include page="FooterFront.jsp" />
	<!-- footer end -->


	<!-- cookie bar start -->
	<div class="cookie-bar">
		<p>We use cookies to improve our site and your shopping
			experience. By continuing to browse our site you accept our cookie
			policy.</p>
		<a href="javascript:void(0)" class="btn btn-solid btn-xs">accept</a> <a
			href="javascript:void(0)" class="btn btn-solid btn-xs">decline</a>
	</div>
	<!-- cookie bar end -->


	<!--modal popup start-->
	<div class="modal fade bd-example-modal-lg theme-modal"
		id="exampleModal" tabindex="-1" role="dialog" aria-hidden="true">
		<div class="modal-dialog modal-lg modal-dialog-centered"
			role="document">
			<div class="modal-content">
				<div class="modal-body modal1">
					<div class="container-fluid p-0">
						<div class="row">
							<div class="col-12">
								<div class="modal-bg">
									<button type="button" class="btn-close" data-bs-dismiss="modal"
										aria-label="Close">
										<span aria-hidden="true">&times;</span>
									</button>
									<div class="offer-content">
										<img src="../assets/images/Offer-banner.png"
											class="img-fluid blur-up lazyload" alt="">
										<h2>newsletter</h2>
										<form
											action="https://pixelstrap.us19.list-manage.com/subscribe/post?u=5a128856334b598b395f1fc9b&amp;id=082f74cbda"
											class="auth-form needs-validation" method="post"
											id="mc-embedded-subscribe-form"
											name="mc-embedded-subscribe-form" target="_blank">
											<div class="form-group mx-sm-3">
												<input type="email" class="form-control" name="EMAIL"
													id="mce-EMAIL" placeholder="Enter your email"
													required="required">
												<button type="submit" class="btn btn-solid" id="mc-submit">subscribe</button>
											</div>
										</form>
									</div>
								</div>
							</div>
						</div>
					</div>
				</div>
			</div>
		</div>
	</div>
	<!--modal popup end-->


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
								<img src="../assets/images/pro3/1.jpg" alt=""
									class="img-fluid blur-up lazyload">
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


	<!-- cart start -->
	<div class="addcart_btm_popup" id="fixed_cart_icon">
		<a href="#" class="fixed_cart"> <i class="ti-shopping-cart"></i>
		</a>
	</div>
	<!-- cart end -->


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


	<!-- exit modal popup start-->
	<div class="modal fade bd-example-modal-lg theme-modal exit-modal"
		id="exit_popup" tabindex="-1" role="dialog" aria-hidden="true">
		<div class="modal-dialog modal-lg modal-dialog-centered"
			role="document">
			<div class="modal-content">
				<div class="modal-body modal1">
					<div class="container-fluid p-0">
						<div class="row">
							<div class="col-12">
								<div class="modal-bg">
									<button type="button" class="btn-close" data-bs-dismiss="modal"
										aria-label="Close">
										<span aria-hidden="true">&times;</span>
									</button>
									<div class="media">
										<img src="../assets/images/stop.png"
											class="stop img-fluid blur-up lazyload me-3" alt="">
										<div class="media-body text-start align-self-center">
											<div>
												<h2>wait!</h2>
												<h4>
													We want to give you <b>10% discount</b> <span>for
														your first order</span>
												</h4>
												<h5>Use discount code at checkout</h5>
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


	<!-- facebook chat section start -->
	<div id="fb-root"></div>
	<script>
		(function(d, s, id) {
			var js, fjs = d.getElementsByTagName(s)[0];
			if (d.getElementById(id))
				return;
			js = d.createElement(s);
			js.id = id;
			js.src = 'https://connect.facebook.net/en_US/sdk/xfbml.customerchat.js#xfbml=1&version=v2.12&autoLogAppEvents=1';
			fjs.parentNode.insertBefore(js, fjs);
		}(document, 'script', 'facebook-jssdk'));
	</script>
	<!-- Your customer chat code -->
	<div class="fb-customerchat" attribution=setup_tool
		page_id="2123438804574660" theme_color="#0084ff"
		logged_in_greeting="Hi! Welcome to PixelStrap Themes  How can we help you?"
		logged_out_greeting="Hi! Welcome to PixelStrap Themes  How can we help you?">
	</div>
	<!-- facebook chat section end -->


	<!-- tap to top -->
	<div class="tap-top top-cls">
		<div>
			<i class="fa fa-angle-double-up"></i>
		</div>
	</div>
	<!-- tap to top end -->


	<!-- latest jquery-->
	<script
		src="${pageContext.request.contextPath}/View/assets/js/jquery-3.3.1.min.js"></script>

	<!-- fly cart ui jquery-->
	<script
		src="${pageContext.request.contextPath}/View/assets/js/jquery-ui.min.js"></script>

	<!-- exitintent jquery-->
	<script
		src="${pageContext.request.contextPath}/View/assets/js/jquery.exitintent.js"></script>
	<script src="${pageContext.request.contextPath}/View/assets/js/exit.js"></script>

	<!-- slick js-->
	<script
		src="${pageContext.request.contextPath}/View/assets/js/slick.js"></script>

	<!-- menu js-->
	<script src="${pageContext.request.contextPath}/View/assets/js/menu.js"></script>

	<!-- lazyload js-->
	<script
		src="${pageContext.request.contextPath}/View/assets/js/lazysizes.min.js"></script>

	<!-- Bootstrap js-->
	<script
		src="${pageContext.request.contextPath}/View/assets/js/bootstrap.bundle.min.js"></script>

	<!-- Bootstrap Notification js-->
	<script
		src="${pageContext.request.contextPath}/View/assets/js/bootstrap-notify.min.js"></script>

	<!-- Fly cart js-->
	<script
		src="${pageContext.request.contextPath}/View/assets/js/fly-cart.js"></script>

	<!-- Theme js-->
	<script
		src="${pageContext.request.contextPath}/View/assets/js/theme-setting.js"></script>
	<script
		src="${pageContext.request.contextPath}/View/assets/js/script.js"></script>

	<script>
		$(window).on('load', function() {
			setTimeout(function() {
				$('#exampleModal').modal('show');
			}, 2500);
		});

		function openSearch() {
			document.getElementById("search-overlay").style.display = "block";
		}

		function closeSearch() {
			document.getElementById("search-overlay").style.display = "none";
		}
	</script>

</body>

</html>