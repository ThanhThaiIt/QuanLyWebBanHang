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
	href="https://fonts.googleapis.com/css2?family=Montserrat:wght@400;500;600;700;800;900&display=swap"
	rel="stylesheet">

<!-- Icons -->
<link rel="stylesheet" type="text/css"
	href="${pageContext.request.contextPath}/View/assets/css/vendors/fontawesome.css">

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


<script> goToIndex()
function goToCheckoutPage() {
    // Chuyển hướng người dùng đến trang "execute_payment"
    document.getElementById("paymentForm").submit();
}

function goToIndex() {
    // Chuyển hướng người dùng đến trang "execute_payment"
    document.getElementById("paymentForm").submit();
}

</script>

</head>

<body class="theme-color-1 bg-light">


	<!-- invoice start -->
	<section class="theme-invoice-2 section-b-space">
		<div class="container">
			<div class="row">
				<div class="col-xl-9 m-auto">
					<div class="invoice-wrapper">
						<div class="invoice-header">
							<div class="top-bar">
								<div class="left">
									<h2>Review Payment - Paypal</h2>
									<h4 class="text-theme">202-555-0258</h4>
								</div>
								<!--  div class="right">
                  <h4 class="mb-2">
                    Multikart Demo Store india - 363512
                  </h4>
                  <h4 class="mb-0">support@multikart.com</h4>
                </div-->
							</div>
							<img
								src="${pageContext.request.contextPath}/View/assets/images/invoice/bg.jpg"
								class="img-fluid background-img w-100" alt="background">
						</div>
						<div class="invoice-body">
							<ul class="date-detail">
								<!--  li class="mb-md-0 mb-2">
									<h2>invoice</h2>
									<div class="mt-md-3 mt-2">
										<h4 class="mb-2">2664 Tail Ends Road, ORADELL</h4>
										<h4 class="mb-0">New Jersey, 07649</h4>
									</div>
								</li-->
								<li><span class="text-theme">issue date:</span>
									<h4>20 March, 2020</h4></li>
								<li><span class="text-theme">invoice no:</span>
									<h4>908452</h4></li>
								<li class="total-amount"><span class="text-theme">$1090.00</span>
									<h4>amount due(USD)</h4></li>
							</ul>
							<div class="table-responsive-md">
								<h1>Please Review Before Paying
								</h1>
								<form id="paymentForm" action="ExecutePayment" method="post">
									<table>
										<tr>
											<td colspan="2"><b>Transaction Details:</b></td>
											<td><input type="hidden" name="paymentId"
												value="${param.paymentId}" /> <input type="hidden"
												name="PayerID" value="${param.PayerID}" /></td>
										</tr>
										<tr>
											<td>Description:</td>
											<td>${transaction.description}</td>
										</tr>
										<tr>
											<td>Subtotal:</td>
											<td>${transaction.amount.details.subtotal}USD</td>
										</tr>
										<tr>
											<td>Shipping:</td>
											<td>${transaction.amount.details.shipping}USD</td>
										</tr>
										<tr>
											<td>Tax:</td>
											<td>${transaction.amount.details.tax}USD</td>
										</tr>
										<tr>
											<td>Total:</td>
											<td>${transaction.amount.total}USD</td>
										</tr>
										<tr>
											<td><br /></td>
										</tr>
										<tr>
											<td colspan="2"><b>Payer Information:</b></td>
										</tr>
										<tr>
											<td>First Name:</td>
											<td>${payer.firstName}</td>
										</tr>
										<tr>
											<td>Last Name:</td>
											<td>${payer.lastName}</td>
										</tr>
										<tr>
											<td>Email:</td>
											<td>${payer.email}</td>
										</tr>
										<tr>
											<td><br /></td>
										</tr>
										<tr>
											<td colspan="2"><b>Shipping Address:</b></td>
										</tr>
										<tr>
											<td>Recipient Name:</td>
											<td>${shippingAddress.recipientName}</td>
										</tr>
										<tr>
											<td>Line 1:</td>
											<td>${shippingAddress.line1}</td>
										</tr>
										<tr>
											<td>City:</td>
											<td>${shippingAddress.city}</td>
										</tr>
										<tr>
											<td>State:</td>
											<td>${shippingAddress.state}</td>
										</tr>
										<tr>
											<td>Country Code:</td>
											<td>${shippingAddress.countryCode}</td>
										</tr>
										<tr>
											<td>Postal Code:</td>
											<td>${shippingAddress.postalCode}</td>
										</tr>
										
										
										<!--  tr>
											<td colspan="2" align="center"><input type="submit"
												value="Pay Now" /></td>
										</tr-->
									</table>
									<br/>
									<br/>
									<div class="invoice-footer pt-0">
							<div class="row">
								<div class="col-6">
									<!--  a href="IndexController" class="btn black-btn btn-solid rounded-2"
										onclick="goToCheckoutPage()">Back To Checkout Page</a-->
										
										<a class="btn black-btn btn-solid rounded-2" href="IndexController" style="display: inline-block;  background-color: #ff4c3b; color: white; text-decoration: none; border-radius: 5px;">Back To Dashboard</a>
								<div class="col-6 text-end">
									<a href="#" class="btn btn-solid rounded-2"
										onclick="goToCheckoutPage()">Pay now</a>
										
								</div>
							</div>
						</div>
								</form>
							</div>
						</div>
						
					</div>
				</div>
			</div>
		</div>
	</section>
	<!-- invoice end -->


	<!-- latest jquery-->
	<script
		src="${pageContext.request.contextPath}/View/assets/js/jquery-3.3.1.min.js"></script>

	<!-- Bootstrap js-->
	<script
		src="${pageContext.request.contextPath}/View/assets/js/bootstrap.bundle.min.js"></script>

</body>

</html>