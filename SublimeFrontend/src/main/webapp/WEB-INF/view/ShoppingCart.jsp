<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Shopping Cart</title>
<link rel="stylesheet"
	href="https://use.fontawesome.com/releases/v5.1.0/css/all.css"
	integrity="sha384-lKuwvrZot6UHsBSfcMvOkWwlCMgc0TaWr+30HWe3a4ltaBwTZhyTEggF5tJv8tbt"
	crossorigin="anonymous">

<meta charset="utf-8">
<meta http-equiv="X-UA-Compatible" content="IE=edge">
<meta name="description" content="Sublime project">
<meta name="viewport" content="width=device-width, initial-scale=1">
<link rel="stylesheet" type="text/css"
	href="resources/styles/bootstrap4/bootstrap.min.css">
<link
	href="resources/plugins/font-awesome-4.7.0/css/font-awesome.min.css"
	rel="stylesheet" type="text/css">
<link rel="stylesheet" type="text/css" href="resources/styles/cart.css">
<link rel="stylesheet" type="text/css"
	href="resources/styles/cart_responsive.css">



<style type="text/css">
.background12 {
	background-color: #c0c0c0;
	padding: 0;
	color: #335500;
}
</style>
<style type="text/css">
.cart_item_product d-flex flex-row align-items-center justify-content-start {
  width: 50%;
}
</style>
</head>
<body>
	<%@include file="./Shared/Header.jsp"%>
	<div class="background12"
		style="position: relative; width: 1350px; height: 80px;"></div>

	<!-- Cart Info -->

	<div class="cart_info">
		<div class="container">
			<div class="row">
				<div class="col">
					<!-- Column Titles -->
					<div class="cart_info_columns clearfix">
						<div class="cart_info_col cart_info_col_product">Product</div>
						<div class="cart_info_col cart_info_col_price">Price</div>
						<div class="cart_info_col cart_info_col_quantity">Quantity</div>
						<div class="cart_info_col cart_info_col_total">Total</div>
						<div class="cart_info_col cart_info_col_total">Remove</div>
					</div>
				</div>
			</div>
			<div class="row cart_items_row">
				<div class="col">

					<!-- Cart Item -->
					<c:forEach items="${cartList}" var="cart">
						<div
							class="cart_item d-flex flex-lg-row flex-column align-items-lg-center align-items-start justify-content-start">
							<!-- Name -->
							<div class="cart_item_product d-flex flex-row align-items-center justify-content-start">
								<div class="cart_item_image">
									<div>
										<img src="resources/images/cart_1.jpg" alt="">
									</div>
								</div>
								<div class="cart_item_name_container">
									<div class="cart_item_name">
										<a href="#">${cart.product.prodName}</a>
									</div>
									<div class="cart_item_edit">
										<a href="#">Edit Product</a>
									</div>
								</div>
							</div>
							<!-- Price -->
							<div class="cart_item_price">${cart.product.unitPrice}</div>
							<!-- Quantity -->
							
							<div class="cart_item_quantity">
								<form action="${pageContext.request.contextPath}/updatecart/${cart.product.prodid}">
								<div class="product_quantity_container">
									<div class="product_quantity clearfix">
										<span>Qty</span>
										<input id="qty" type="text" alt="${cart.product.prodid}" value="${cart.productCount}"
											onchange="update(this)" pattern="[0-5]*" value="1">
											
						
										<div class="quantity_buttons">
											<div id="quantity_inc_button"
												class="quantity_inc quantity_control">
												<i class="fa fa-chevron-up" aria-hidden="true"></i>
											</div>
											<div id="quantity_dec_button"
												class="quantity_dec quantity_control">
												<i class="fa fa-chevron-down" aria-hidden="true"></i>
											</div>
										</div>
									</div>
								</div>
								</form>
							</div>
							<!-- Total -->
							<div class="cart_item_total">${cart.product.unitPrice}</div>
							<div class="cart_item_remove">
								<a href="remove/${cart.id}" data-toggle="tooltip" title="Remove"
									class="fas fa-times"> </a>
							</div>
						</div>
					</c:forEach>
				</div>
			</div>
			<div class="row row_cart_buttons">
				<div class="col">
					<div
						class="cart_buttons d-flex flex-lg-row flex-column align-items-start justify-content-start">
						<div class="button continue_shopping_button">
							<a href="#">Continue shopping</a>
						</div>
						<div class="cart_buttons_right ml-lg-auto">
							<div class="button clear_cart_button">
								<a href="#">Clear cart</a>
							</div>
							<div class="button update_cart_button">
								<a href="#">Update cart</a>
							</div>
						</div>
					</div>
				</div>
			</div>
			<div class="row row_extra">
				<div class="col-lg-4">

					<!-- Delivery -->
					<div class="delivery">
						<div class="section_title">Shipping method</div>
						<div class="section_subtitle">Select the one you want</div>
						<div class="delivery_options">
							<label class="delivery_option clearfix">Next day delivery
								<input type="radio" name="radio"> <span
								class="checkmark"></span> <span class="delivery_price">$4.99</span>
							</label> <label class="delivery_option clearfix">Standard
								delivery <input type="radio" name="radio"> <span
								class="checkmark"></span> <span class="delivery_price">$1.99</span>
							</label> <label class="delivery_option clearfix">Personal pickup
								<input type="radio" checked="checked" name="radio"> <span
								class="checkmark"></span> <span class="delivery_price">Free</span>
							</label>
						</div>
					</div>

					<!-- Coupon Code -->
					<div class="coupon">
						<div class="section_title">Coupon code</div>
						<div class="section_subtitle">Enter your coupon code</div>
						<div class="coupon_form_container">
							<form action="#" id="coupon_form" class="coupon_form">
								<input type="text" class="coupon_input" required="required">
								<button class="button coupon_button">
									<span>Apply</span>
								</button>
							</form>
						</div>
					</div>
				</div>

				<div class="col-lg-6 offset-lg-2">
					<div class="cart_total">
						<div class="section_title">Cart total</div>
						<div class="section_subtitle">Final info</div>
						
						<div class="cart_total_container">
							<ul>
								<li
									class="d-flex flex-row align-items-center justify-content-start">
									<div class="cart_total_title">Subtotal</div>
									<div class="cart_total_value ml-auto">${grandTotal}</div>
								</li>
								<li
									class="d-flex flex-row align-items-center justify-content-start">
									<div class="cart_total_title">Shipping</div>
									<div class="cart_total_value ml-auto">Free</div>
								</li>
								<li
									class="d-flex flex-row align-items-center justify-content-start">
									<div class="cart_total_title">Total</div>
									<div class="cart_total_value ml-auto">${grandTotal}</div>
								</li>
							</ul>
						</div>
						<div class="button checkout_button">
							<a href="${pageContext.request.contextPath}/Checkout">Proceed to checkout</a>
						</div>
					</div>
				</div>
			</div>
		</div>
	</div>


	<!-- Footer -->

	<div class="footer_overlay"></div>
	<footer class="footer">
	<div class="footer_background"
		style="background-image: url(images/footer.jpg)"></div>
	<div class="container">
		<div class="row">
			<div class="col">
				<div
					class="footer_content d-flex flex-lg-row flex-column align-items-center justify-content-lg-start justify-content-center">
					<div class="footer_logo">
						<a href="#">Sublime.</a>
					</div>
					<div class="copyright ml-auto mr-auto">
						<!-- Link back to Colorlib can't be removed. Template is licensed under CC BY 3.0. -->
						Copyright &copy;
						<script>
							document.write(new Date().getFullYear());
						</script>
						All rights reserved | This template is made with <i
							class="fa fa-heart-o" aria-hidden="true"></i> by <a
							href="https://colorlib.com" target="_blank">Colorlib</a>
						<!-- Link back to Colorlib can't be removed. Template is licensed under CC BY 3.0. -->
					</div>
					<div class="footer_social ml-lg-auto">
						<ul>
							<li><a href="#"><i class="fa fa-pinterest"
									aria-hidden="true"></i></a></li>
							<li><a href="#"><i class="fa fa-instagram"
									aria-hidden="true"></i></a></li>
							<li><a href="#"><i class="fa fa-facebook"
									aria-hidden="true"></i></a></li>
							<li><a href="#"><i class="fa fa-twitter"
									aria-hidden="true"></i></a></li>
						</ul>
					</div>
				</div>
			</div>
		</div>
	</div>
	</footer>
	</div>

	<script src="resources/js/jquery-3.2.1.min.js"></script>
	<script src="resources/styles/bootstrap4/popper.js"></script>
	<script src="resources/styles/bootstrap4/bootstrap.min.js"></script>
	<script src="resources/plugins/greensock/TweenMax.min.js"></script>
	<script src="resources/plugins/greensock/TimelineMax.min.js"></script>
	<script src="resources/plugins/scrollmagic/ScrollMagic.min.js"></script>
	<script src="resources/plugins/greensock/animation.gsap.min.js"></script>
	<script src="resources/plugins/greensock/ScrollToPlugin.min.js"></script>
	<script src="resources/plugins/easing/easing.js"></script>
	<script src="resources/plugins/parallax-js-master/parallax.min.js"></script>
	<script src="resources/js/cart.js"></script>
</body>
</html>