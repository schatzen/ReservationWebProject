<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html>

<head>

<!--important meta tag-->
<meta charset="utf-8">
<meta http-equiv="X-UA-Compatible" content="IE=edge">
<meta name="viewport" content="width=device-width, initial-scale=1">

<!-- title -->
<title>우연 - 우리 동네 연습실</title>

<!-- shortcut icon -->
<link rel="shortcut icon" href="img/favicon/favicon.ico">

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
	href="${ pageContext.request.contextPath }/resources/css/style-search.css">

<!-- Responsive Css-->
<link rel="stylesheet"
	href="${ pageContext.request.contextPath }/resources/css/reponsive-search.css">

<!--  JQuery file -->
<script src="https://code.jquery.com/jquery-3.4.1.min.js"></script>

<!--  BootStrap file -->
<script
	src="${ pageContext.request.contextPath }/resources/js/bootstrap/bootstrap.js"></script>

<!-- Owl Carousel Js -->
<script
	src="${ pageContext.request.contextPath }/resources/js/owl_carousel/owl.carousel.min.js"></script>

<!-- Google Maps JS -->
<script async defer
	src="https://maps.googleapis.com/maps/api/js?key=AIzaSyB6QwBUDy6aQdb9980psIyti3euOxh02Wc&callback=initMap"></script>



<!-- JavaScript file-->
<script
	src="${ pageContext.request.contextPath }/resources/js/common.js"></script>

<!-- Javascript in HTML -->

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

	/* =========================
	        Google Map
	==========================*/

	$(window).on(
			'load',
			function() {

				var locations = [ [ '신촌 1호점', 37.555399, 126.938574, 1 ],
						[ '신촌 2호점', 37.555016, 126.937895, 2 ],
						[ '이대 1호점', 37.556668, 126.946596, 3 ],
						[ '이대 2호점', 37.559669, 126.944499, 4 ],
						[ '방배 1호점', 37.480131, 126.999577, 5 ],
						[ '방배 2호점', 37.481682, 126.999288, 6 ],
						[ '내방역점', 37.487753, 126.992443, 7 ] ];

				var map = new google.maps.Map(document.getElementById('map'), {
					zoom : 12,
					center : new google.maps.LatLng(37.52, 126.97)
				});

				var infowindow = new google.maps.InfoWindow();

				var marker, i;

				for (i = 0; i < locations.length; i++) {
					marker = new google.maps.Marker({
						position : new google.maps.LatLng(locations[i][1],
								locations[i][2]),
						map : map
					});

					google.maps.event.addListener(marker, 'click', (function(
							marker, i) {
						return function() {
							infowindow.setContent(locations[i][0]);
							infowindow.open(map, marker);
						}
					})(marker, i));
				}
			});
</script>

</head>

<body data-spy="scroll" data-target=".navbar" data-offset="65">

	<!-- Preloader -->
	<!--<div id="preloader">
        <div id="status">&nbsp;</div>
    </div>-->

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
								<li><a class="active" href="#">연습실 찾기</a></li>
								<li><a href="reservation.do">예약하기</a></li>
								<li><a href="#">문의하기</a></li>
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
								<li><a class="active" href="#">연습실 찾기</a></li>
								<li><a href="reservation.do">예약하기</a></li>
								<li><a href="#">문의하기</a></li>
								<c:if test="${empty member }">
									<li><a href="login_form.do">로그인</a></li>
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


	<!-- Home Start -->

	<section id="home">

		<!-- Background Video -->
		<video id="home-bg-video"
			poster="${ pageContext.request.contextPath }/resources/video/Strum-Away.jpg"
			autoplay loop muted>
			<source
				src="${ pageContext.request.contextPath }/resources/video/Strum-Away.mp4"
				type="video/mp4">
			<source
				src="${ pageContext.request.contextPath }/resources/video/Strum-Away.ogv"
				type="video/ogv">
			<source
				src="${ pageContext.request.contextPath }/resources/video/Strum-Away.webm"
				type="video/webm">
		</video>

		<!-- Overlay -->
		<div id="home-overlay"></div>

		<!-- Home Content -->
		<div id="home-content">

			<div id="home-content-inner" class="text-center">

				<div id="home-heading">

					<h1 id="home-heading-1">
						<span>우</span>리 동네 <span>연</span>습실을 찾아보세요.
					</h1>
					<br>
				</div>

				<form class="form-inline">
					<input type="text" class="form-control" id="exampleInputName2"
						placeholder="지역을 입력하세요.">
					<button type="submit" class="btn btn-general" id="btn-home">검색</button>
				</form>


			</div>

		</div>


	</section>
	<!-- Home Ends -->


	<!-- Location starts -->
	<section id="location">
		<div class="content-box-lg">
			<div class="container">
				<div class="heading-top text-center">
					<div class="horizontal-heading">
						<h5># 너와 나의 우연찾기</h5>
						<h2>
							집에서 가장 가까운 <strong>우연</strong>을 확인하세요.
						</h2>
					</div>
				</div>

				<div class="row">
					<!-- Location Left -->
					<div class="col-md-6">
						<div class="row">

							<!-- Sample -->
							<c:forEach var="vo" items="${list }">
								<div class="col-md-4 col-xs-6">
									<form action="information.do" method="get">
										<input name="info_branch" type="hidden" value="${vo.info_branch}">
										<div class="about-item text-center">
											<h3>${vo.info_branch }</h3>
											<div class="vr"></div>
											<p>
												Tel ) ${vo.info_tel }<br> ${vo.info_addr }
											</p>
											<input type="button"
												class="btn btn-search-general btn-search" value="예약하기"
												onClick="javascript:submit(); return false;">
										</div>
									</form>
								</div>
							</c:forEach>
						
						</div>
					</div>

					<!-- Location Right -->
					<div class="col-md-6">
						<div id="map"></div>
					</div>

				</div>

			</div>

		</div>

	</section>
	<!-- Location Ends -->

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