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
</body>
</html>