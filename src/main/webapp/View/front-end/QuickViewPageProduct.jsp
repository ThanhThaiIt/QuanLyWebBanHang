<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<%@ taglib prefix="c" uri="http://java.sun.com/jstl/core_rt"%>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
						<div class="col-lg-6 rtl-text">
							<div class="product-right">
								<h2>${productDetail.getName()}</h2>
								<h3>$${productDetail.getPrice()} </h3>
								<ul class="color-variant">
									<c:forEach items="${listColor}" var="list">
									<li onclick="choiceColor(${list.getId()})" class="${list.getTitle()} "></li>
								</c:forEach>
								</ul>
								<div class="border-product">
									<h6 class="product-title">product details</h6>
									<p>Sed ut perspiciatis, unde omnis iste natus error sit
										voluptatem accusantium doloremque laudantium</p>
								</div>
								<div class="product-description border-product">
									<div class="size-box">
										<ul>
											<c:forEach items="${listSize}" var="list">
											<li><a onclick="choiceSize(${list.getId()})">${list.getTitle()}</a></li>

										</c:forEach>
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
								<a onclick="addToCart(${productDetail.getId()})"
									class="btn btn-solid" id="cartEffect"
									class="btn btn-solid hover-solid btn-animation"><i
									class="fa fa-shopping-cart me-1" aria-hidden="true"></i> add to
									cart</a> 
										<!--  -->
									
									
									<a href="#"
										class="btn btn-solid">view detail</a>
								</div>
							</div>
						</div>
</body>
</html>