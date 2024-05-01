<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jstl/core_rt"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>

</head>
<body>
 
	<c:forEach items="${sessionScope.listProduct}" var="list">
		<li>
			<div class="media">
				<a href="#"><img alt="" class="me-3"
					src="../images/fashion/product/1.jpg"></a>
				<div class="media-body">
					<a href="#">
						<h4>${list.getName()}</h4>
					</a>
					<h4>
						<span>${list.getQuantity()} x $ ${list.getPrice()}</span>
					</h4>
				</div>
			</div>
			<div class="close-circle" onclick="deleteProduct(${list.getId()})">
				<a > <i
					class="fa fa-times" aria-hidden="true"></i>
				</a>
			</div>
		</li>
	</c:forEach>
	<li>
		<div class="total">
			<h5>
				subtotal : <span>${totalPrice}</span>
			</h5>
		</div>
	</li>
</body>
</html>