<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
     <%@ taglib prefix="c" uri="http://java.sun.com/jstl/core_rt" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>

<c:if test="${ketqua != null }">
		${ketqua}
	
	</c:if>
	
	<c:if test="${ketqua == null }">
	<section class="section-b-space pt-0 ratio_asos">
		<div class="container">
			<div class="row">
				<div class="col">
					<div class="product-4 product-m no-arrow">
						<c:forEach items="${listemp}" var="list">
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
										<button data-bs-toggle="modal" data-bs-target="#addtocart"
											title="Add to cart">
											<i class="ti-shopping-cart"></i>
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
</c:if>
</body>
</html>