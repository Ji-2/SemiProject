<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ include file="../inc/top.jsp"%>

<!-- CSS here -->
<link rel="stylesheet" href="../assets/css/bootstrap.min.css">
<link rel="stylesheet" href="../assets/css/owl.carousel.min.css">
<link rel="stylesheet" href="../assets/css/flaticon.css">
<link rel="stylesheet" href="../assets/css/slicknav.css">
<link rel="stylesheet" href="../assets/css/animate.min.css">
<link rel="stylesheet" href="../assets/css/magnific-popup.css">
<link rel="stylesheet" href="../assets/css/fontawesome-all.min.css">
<link rel="stylesheet" href="../assets/css/themify-icons.css">
<link rel="stylesheet" href="../assets/css/slick.css">
<link rel="stylesheet" href="../assets/css/nice-select.css">
<link rel="stylesheet" href="../assets/css/newStyle.css">
<!-- newStyle css -->
<link rel="stylesheet" href="<%=request.getContextPath() %>/css/newStyle.css">
<!-- subStyle css -->
<link rel="stylesheet" href="<%=request.getContextPath() %>/css/substyle.css">

<style>

.bbosong{
	background: #c96c62 !important;
	padding: 13px 30px !important;
	border-radius: 0 !important;
}


</style>
<%
	String email=(String)session.getAttribute("email");
	if(email==null){%>
		<script type="text/javascript">
			alert('로그인이 필요합니다.');
			location.href="<%=request.getContextPath() %>/sign/signin.jsp";
		</script>
<%	}%>

<section>
	<div class="container">

		<!--? Preloader Start -->
		<div id="preloader-active">
			<div
				class="preloader d-flex align-items-center justify-content-center">
				<div class="preloader-inner position-relative">
					<div class="preloader-circle"></div>
					<div class="preloader-img pere-text">
						<img src="assets/img/logo/logo.png" alt="">
					</div>
				</div>
			</div>
		</div>
		<!-- Preloader Start -->
		<main>
			<!-- Latest Products Start -->
			<section class="popular-items latest-padding">
				<div class="container">
					<div class="row product-btn justify-content-between mb-40">
						<div class="properties__button">
							<!--Nav Button  -->
							<nav>
								<div class="nav nav-tabs" id="nav-tab" role="tablist">
									<a class="nav-item nav-link active" id="nav-home-tab"
										data-toggle="tab" href="#nav-home" role="tab"
										aria-controls="nav-home" aria-selected="true">의류</a> <a
										class="nav-item nav-link" id="nav-profile-tab"
										data-toggle="tab" href="#nav-profile" role="tab"
										aria-controls="nav-profile" aria-selected="false">이불/신발</a>
								</div>
							</nav>
							<!--End Nav Button  -->
						</div>
						<!-- Grid and List view -->
						<div class="grid-list-view"></div>
					</div>
					<!-- Nav Card -->
					<div class="tab-content" id="nav-tabContent">
						<!-- card one -->
						<div class="tab-pane fade show active" id="nav-home"
							role="tabpanel" aria-labelledby="nav-home-tab">
							<div class="row">
								<div class="col-xl-4 col-lg-4 col-md-6 col-sm-6">
									<div class="single-popular-items mb-50 text-center">
										<div class="popular-img">
											<img src="../img/suit.jpg" alt="정장세트">
											<form method="post" action="addCart.jsp">
												<input type="hidden" name="laundryNo" value="3">
												<div class="img-cap">
														<input type="submit" class="btn_all mint_btn hover" value="장바구니에 담기">
												</div>
											</form>
										</div>
										<div class="popular-caption">
											<h3>정장세트</h3>
											<span>8,000원</span>
										</div>
									</div>
								</div>
								<div class="col-xl-4 col-lg-4 col-md-6 col-sm-6">
									<div class="single-popular-items mb-50 text-center">
										<div class="popular-img">
											<img src="../img/shirts.jpg" alt="와이셔츠"> 
												<form method="post" action="addCart.jsp">
												<input type="hidden" name="laundryNo" value="2">
												<div class="img-cap">
													<input type="submit" class="btn_all mint_btn hover" value="장바구니에 담기">
												</div>
											</form>
										</div>
										<div class="popular-caption">
											<h3>와이셔츠</h3>
											<span>3,000원</span>
										</div>
									</div>
								</div>
								<div class="col-xl-4 col-lg-4 col-md-6 col-sm-6">
									<div class="single-popular-items mb-50 text-center">
										<div class="popular-img">
											<img src="../img/sweater.jpg" alt="스웨터">
											<form method="post" action="addCart.jsp">
												<input type="hidden" name="laundryNo" value="5">
												<div class="img-cap">
													<input type="submit" class="btn_all mint_btn hover" value="장바구니에 담기">
												</div>
											</form>
										</div>
										<div class="popular-caption">
											<h3>스웨터</h3>
											<span>3,000원</span>
										</div>
									</div>
								</div>
								<div class="col-xl-4 col-lg-4 col-md-6 col-sm-6">
									<div class="single-popular-items mb-50 text-center">
										<div class="popular-img">
											<img src="../img/pants.jpg" alt="바지">
											<form method="post" action="addCart.jsp">
												<input type="hidden" name="laundryNo" value="4">
												<div class="img-cap">
													<input type="submit" class="btn_all mint_btn hover" value="장바구니에 담기">
												</div>
											</form>											
										</div>
										<div class="popular-caption">
											<h3>바지</h3>
											<span>3,000원</span>
										</div>
									</div>
								</div>
								<div class="col-xl-4 col-lg-4 col-md-6 col-sm-6">
									<div class="single-popular-items mb-50 text-center">
										<div class="popular-img">
											<img src="../img/winter_jaket.jpg" alt="겨울코트">
											<form method="post" action="addCart.jsp">
												<input type="hidden" name="laundryNo" value="6">
												<div class="img-cap">
													<input type="submit" class="btn_all mint_btn hover" value="장바구니에 담기">
												</div>
											</form>
										</div>
										<div class="popular-caption">
											<h3>겨울코트</h3>
											<span>8,000원</span>
										</div>
									</div>
								</div>
							</div>
						</div>
						<!-- Card two -->
						<div class="tab-pane fade" id="nav-profile" role="tabpanel"
							aria-labelledby="nav-profile-tab">
							<div class="row">
								<div class="col-xl-4 col-lg-4 col-md-6 col-sm-6">
									<div class="single-popular-items mb-50 text-center">
										<div class="popular-img">
											<img src="../img/beding2222.jpg" alt="이불류"> 
												<form method="post" action="addCart.jsp">
												<input type="hidden" name="laundryNo" value="11">
												<div class="img-cap">
													<input type="submit" class="btn_all mint_btn hover" value="장바구니에 담기">
												</div>
											</form>
										</div>
										<div class="popular-caption">
											<h3>이불류</h3>
											<span>10,000원</span>
										</div>
									</div>
								</div>
								<div class="col-xl-4 col-lg-4 col-md-6 col-sm-6">
									<div class="single-popular-items mb-50 text-center">
										<div class="popular-img">
											<img src="../img/shoes22.jpg" alt="신발"> 
												<form method="post" action="addCart.jsp">
												<input type="hidden" name="laundryNo" value="12">
												<div class="img-cap">
													<input type="submit" class="btn_all mint_btn hover" value="장바구니에 담기">
												</div>
											</form>
										</div>
										<div class="popular-caption">
											<h3>신발</h3>
											<span>6,000원</span>
										</div>
									</div>
								</div>
							</div>
						</div>
						<form method="post" action="cart.jsp">
							<input type="hidden" name="email" value="<%=email%>">
							<div class="checkout_btn_inner float-right">
								<input type="submit" class="btn_all mint_btn hover" value="장바구니 확인">
							</div>
						</form>
					</div>
				</div>
			</section>
		</main>
		

		<!-- JS here -->
		<!-- All JS Custom Plugins Link Here here -->
		<script src="../assets/js/vendor/modernizr-3.5.0.min.js"></script>
		<!-- Jquery, Popper, Bootstrap -->
		<script src="../assets/js/vendor/jquery-1.12.4.min.js"></script>
		<script src="../assets/js/popper.min.js"></script>
		<script src="../assets/js/bootstrap.min.js"></script>
		<!-- Jquery Mobile Menu -->
		<script src="../assets/js/jquery.slicknav.min.js"></script>

		<!-- Jquery Slick , Owl-Carousel Plugins -->
		<script src="../assets/js/owl.carousel.min.js"></script>
		<script src="../assets/js/slick.min.js"></script>

		<!-- One Page, Animated-HeadLin -->
		<script src="../assets/js/wow.min.js"></script>
		<script src="../assets/js/animated.headline.js"></script>
		<script src="../assets/js/jquery.magnific-popup.js"></script>

		<!-- Scroll up, nice-select, sticky -->
		<script src="../assets/js/jquery.scrollUp.min.js"></script>
		<script src="../assets/js/jquery.nice-select.min.js"></script>
		<script src="../assets/js/jquery.sticky.js"></script>

		<!-- contact js -->
		<script src="../assets/js/contact.js"></script>
		<script src="../assets/js/jquery.form.js"></script>
		<script src="../assets/js/jquery.validate.min.js"></script>
		<script src="../assets/js/mail-script.js"></script>
		<script src="../assets/js/jquery.ajaxchimp.min.js"></script>

		<!-- Jquery Plugins, main Jquery -->
		<script src="../assets/js/plugins.js"></script>
		<script src="../assets/js/main.js"></script>

	</div>
</section>


<%@ include file="../inc/bottom.jsp"%>