<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>
<!DOCTYPE html>
<html>

<head>

<!--important meta tag-->
<meta charset="utf-8">
<meta http-equiv="X-UA-Compatible" content="IE=edge">
<meta name="viewport" content="width=device-width, initial-scale=1">

<!-- title -->
<title>우연 - 우리동네 연습실</title>

<!-- shortcut icon -->
<link rel="shortcut icon"
	href="${ pageContext.request.contextPath }/resources/img/favicon/favicon.ico">

<!-- google fonts-->
<link
	href="https://fonts.googleapis.com/css?family=Raleway:100,200,300,400,500,600,700&display=swap"
	rel="stylesheet">
<link
	href="https://fonts.googleapis.com/css?family=Open+Sans:300,400,600,700&display=swap"
	rel="stylesheet">
<link
	href="https://fonts.googleapis.com/css?family=Jua&display=swap&subset=korean"
	rel="stylesheet">
<link
	href="https://fonts.googleapis.com/css?family=Noto+Sans+KR:400,500&display=swap&subset=korean"
	rel="stylesheet">

<!-- Font Awesome -->
<link rel="stylesheet"
	href="https://use.fontawesome.com/releases/v5.12.0/css/all.css">
<link rel="stylesheet"
	href="https://use.fontawesome.com/releases/v5.12.0/css/v4-shims.css">

<!-- BootStrap -->
<link rel="stylesheet"
	href="${ pageContext.request.contextPath }/resources/css/bootstrap/bootstrap.css">

<!-- Owl Carousel -->
<link rel="stylesheet"
	href="${ pageContext.request.contextPath }/resources/css/owl-carousel/owl.carousel.min.css">
<link rel="stylesheet"
	href="${ pageContext.request.contextPath }/resources/css/owl-carousel/owl.theme.default.min.css">


<!-- Css link-->
<link rel="stylesheet"
	href="${ pageContext.request.contextPath }/resources/css/style-contact.css">

<!-- Responsive CSS -->
<link rel="stylesheet"
	href="${ pageContext.request.contextPath }/resources/css/reponsive-myreservation.css">


<!--  JQuery file -->
<script src="https://code.jquery.com/jquery-3.4.1.min.js"></script>

<!--  BootStrap file -->
<script
	src="${ pageContext.request.contextPath }/resources/js/bootstrap/bootstrap.js"></script>

<!-- Owl Carousel Js -->
<script
	src="${ pageContext.request.contextPath }/resources/js/owl_carousel/owl.carousel.min.js"></script>

<!-- JavaScript file-->
<script
	src="${ pageContext.request.contextPath }/resources/js/common.js"></script>

<script type="text/javascript">
	$(function() {

		// Show / hide nav on page load
		showHideNav();

		$(window).scroll(function() {
			showHideNav();
		});

		function showHideNav() {
			if ($(window).scrollTop() > 50) {

				// Show white nav
				$("nav").addClass("white-nav-top");

				// Show dark Logo
				$(".navbar-brand img").attr("src",
						"../resources/img/logo/logo-dark.png")

			} else {

				// Hide white nav
				$("nav").removeClass("white-nav-top");

				// Show logo
				$(".navbar-brand img").attr("src",
						"../resources/img/logo/logo.png")
			}

		}
	});
</script>
</head>

<body data-spy="scroll" data-target=".navbar" data-offset="65">

	<!-- Header-->
	<header>
		<nav class="navbar navbar-fixed-top">
			<div class="container-fluid">
				<div class="site-nav-wrapper">
					<div class="navbar-header">

						<!-- Mobile Menu Poen Button -->
						<span id="mobile-nav-open-btn">&#9776;</span>

						<!-- Logo -->
						<a href="main.do" class="navbar-brand"> <img
							src="${ pageContext.request.contextPath }/resources/img/logo/logo.png"
							alt="logo">
						</a>

					</div>

					<!-- Main Menu -->
					<div class="container">
						<div class="collapse navbar-collapse">
							<ul class="nav navbar-nav pull-right">
								<li><a href="main.do">Home</a></li>
								<li><a href="search.do">연습실 찾기</a></li>
								<li><a href="reservation.do">예약하기</a></li>
								<li><a href="contact.do">문의하기</a></li>
								<c:if test="${empty member }">
									<li><a href="login_form.do">로그인</a></li>
								</c:if>
								<c:if test="${not empty member }">
									<li><a href="myPage.do?member_idx=${member.member_idx }">마이페이지</a></li>
								</c:if>

							</ul>
						</div>
					</div>

					<!-- Mobile Menu -->
					<div id="mobile-nav">
						<!-- Mobile Menu Close Button -->
						<span id="mobile-nav-close-btn">&times;</span>
						<div id="mobile-nav-content">
							<ul class="nav">
								<li><a href="main.do">Home</a></li>
								<li><a href="search.do">연습실 찾기</a></li>
								<li><a href="#">예약하기</a></li>
								<li><a href="reservation.do">문의하기</a></li>
								<c:if test="${empty member }">
									<li><a
										href="${ pageContext.request.contextPath }/member/login_form.do">로그인</a></li>
								</c:if>
								<c:if test="${not empty member }">
									<li><a href="myPage.do?member_idx=${member.member_idx }">마이페이지</a></li>
								</c:if>

							</ul>
						</div>
					</div>

				</div>
			</div>

		</nav>

	</header>
	<!-- Header Ends-->


	<!-- Home -->

	<section id="home">

		<div id="home-bg-video" class="img-reponsive"></div>

		<!-- Overlay -->
		<div id="home-overlay"></div>
		<div class="container">
			<div class="row">
				<div class="home-content-total">
					<div class="col-md-6">
						<!-- Home Content-01 -->
						<div id="home-content-01">


							<div id="home-content-inner" class="text-left">

								<div id="home-heading">

									<h1 id="home-heading-1">
										Space service<br> <span>forward</span>
									</h1>
									<br>
								</div>

							</div>

						</div>

					</div>

				</div>

			</div>

		</div>

	</section>
	<!-- Home -->

	<!-- Contact -->
	<section id="contact">
		<div class="content-box-md">
			<div class="container">
				<div class="row">
					<div class="col-md-6">

						<!-- Contact Left -->
						<div id="contact-left">
							<div class="vertical-heading">
								<h5>Who We Are</h5>
								<h2>
									Get<br>In <strong>Touch </strong>
								</h2>
							</div>
							<p>Lorem ipsum dolor sit amet, consectetur adipisicing elit.
								Corporis saepe quis.
							<div id="offices">
								<div class="row">

									<div class="col-md-6">
										<div class="office">
											<h4>United States</h4>
											<ul class="office-details">
												<li><i class="fa fa-mobile"></i>02-0000-0000</li>
												<li><i class="fa fa-envelope-o"></i>support@daum.net</li>
												<li><i class="fa fa-map-marker"></i><span>423
														New York City</span></li>
											</ul>
										</div>
									</div>

									<div class="col-md-6">
										<div class="office">
											<h4>Austrailia</h4>
											<ul class="office-details">
												<li><i class="fa fa-mobile"></i>02-0000-0000</li>
												<li><i class="fa fa-envelope-o"></i>support@daum.net</li>
												<li><i class="fa fa-map-marker"></i><span>423
														New York City</span></li>
											</ul>
										</div>
									</div>

								</div>
							</div>
						</div>
					</div>

					<div class="col-md-6">

						<!-- Contact Right -->
						<div id="contact-right">
							<form>
								<h4>Send Message</h4>
								<p>Lorem ipsum dolor sit amet, consectetur adipisicing elit.
									Officiis nisi fugiat sit quod.</p>

								<div class="row">
									<div class="col-md-6">
										<div class="form-group">
											<input type="text" class="form-control" id="name"
												placeholder="Your Name">
										</div>
									</div>

									<div class="col-md-6">
										<div class="form-group">
											<input type="email" class="form-control" id="email"
												placeholder="Email Address">
										</div>
									</div>

									<div class="col-md-6">
										<div class="form-group">
											<input type="email" class="form-control" id="phone"
												placeholder="Phone Mo.">
										</div>
									</div>

									<div class="col-md-6">
										<div class="form-group">
											<input type="email" class="form-control" id="subject"
												placeholder="Subject">
										</div>
									</div>
								</div>

								<div class="form-group">
									<textarea class="form-control" id="message"
										placeholder="Message">
                                    </textarea>
								</div>

								<div id="submit-btn">
									<a class="btn btn-general btn-yellow" href="#" title="Text"
										role="button">Submit</a>
								</div>

							</form>
						</div>
					</div>
				</div>
			</div>
		</div>

	</section>
	<!-- Contact Ends -->

	<!-- Plus-->
	<section id="plus">
		<div id="plus-slider" class="owl-carousel owl-theme">
			<!-- Plus Friend 01 -->
			<div class="plus-friend-01">
				<div class="plus-content text-center">
					<h1>지금 바로 카카오 플러스 친구를 등록하세요</h1>
					<p>더 쉽고 빠르게 우연의 최신 소식을 받아 볼 수 있습니다.</p>
					<div id="plus-btn">
						<a class="btn btn-general btn-plus-kakao" href="#about"
							id="member" role="button">친구 추가</a>
					</div>
				</div>
			</div>

			<!-- Plus Friend 02 -->
			<div class="plus-friend-02">
				<div class="plus-content text-center">
					<h1>지금 바로 페이스북 친구를 등록하세요</h1>
					<p>더 쉽고 빠르게 우연의 최신 소식을 받아 볼 수 있습니다.</p>
					<div id="plus-btn">
						<a class="btn btn-general btn-plus-facebook" href="#about"
							id="member" role="button">친구 추가</a>
					</div>
				</div>
			</div>
		</div>
	</section>
</body>


</html>