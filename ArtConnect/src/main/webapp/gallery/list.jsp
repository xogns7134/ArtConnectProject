<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>

<head>

<meta name="viewport"
	content="width=device-width, initial-scale=1, maximum-scale=1" />

<meta charset="utf-8">

<!-- Description, Keywords and Author -->

<meta name="description" content="">

<meta name="author" content="">



<title>:: 미술관 조회 페이지 ::</title>

<link rel="shortcut icon" href="resources/images/favicon.ico"
	type="image/x-icon">

<link href="resources/css/style.css" rel="stylesheet" type="text/css">

<!-- bootstrap -->

<link href="resources/css/bootstrap.min.css" rel="stylesheet"
	type="text/css">

<!-- responsive -->

<link href="resources/css/responsive.css" rel="stylesheet"
	type="text/css">

<!-- font-awesome -->

<link href="resources/css/fonts.css" rel="stylesheet" type="text/css">

<link href="resources/css/font-awesome.min.css" rel="stylesheet"
	type="text/css">

<!-- font-awesome -->

<style>
/* 이미지 크기와 위치 조정 */
#logo-image {
	max-width: 500px; /* 원하는 크기로 조절 */
	position: absolute;
	top: 10px; /* 이미지를 아래로 내리고 싶다면 값을 늘리세요 */
	left: 650px; /* 이미지를 오른쪽으로 이동하려면 값을 늘리세요 */
}

/* 네비게이션 위치 조정 */
.navy {
	position: absolute;
	top: 10px; /* 원하는 값으로 조정해주세요 */
	right: 10px; /* 원하는 값으로 조정해주세요 */
}
</style>

</head>

<body>
	<!-- header -->

	<header role="header">

		<div class="container">

			<!-- logo -->

			<h1>
				<a href="index.html" title="avana LLC"><img id="logo-image"
					src="resources/img/art.png" title="avana LLC" alt="avana LLC" /></a>
			</h1>

			<!-- nav -->
			<nav role="header-nav" class="navy">

				<ul>

					<li><a href="index.html" title="Work">전시관 조회</a></li>

					<li class="nav-active"><a href="about.html" title="About">예약</a></li>

					<li><a href="blog.html" title="Blog">커뮤니티</a></li>

					<li><a href="contact.html" title="Contact">마이 페이지</a></li>

				</ul>

			</nav>
			<!-- nav -->

		</div>

	</header>

	<!-- header -->

	<!-- main -->

	<main role="main-inner-wrapper" class="container">
		<div class="row">
			<section class="col-xs-12 col-sm-6 col-md-6 col-lg-6 ">

				<article role="pge-title-content">

					<header>

						<h2>
							<span>Art Museum </span>Inquiry & Search
						</h2>

					</header>

					<p>You can search for a list of art museums nationwide</p>

				</article>

			</section>

			<div class="clearfix"></div>

<div class="search-form" style="margin-top: 20px;">
    <form action="${pageContext.request.contextPath}/search2" method="GET">
        <div style="display: flex; align-items: center; justify-content: space-between; max-width: 400px; margin: 0 auto;">
            <input type="text" name="name" placeholder="Search by Museum Name" required style="flex: 1; padding: 10px;">
            <button type="submit" style="background-color: #333; color: #fff; padding: 15px 20px; border: none; cursor: pointer;">Search</button>
        </div>
    </form>
</div>

			<!-- thumbnails -->

			<div class="thumbnails-pan">

				<section class="col-xs-12 col-sm-4 col-md-4 col-lg-4 ">

					<figure>

						<img src="resources/images/about-images/about-image-1.jpg"
							class="img-responsive" />

						<figcaption>

							<h3>John Doe</h3>

							<h5>The designer</h5>

						</figcaption>

					</figure>

				</section>

				<section class="col-xs-12 col-sm-4 col-md-4 col-lg-4 ">

					<figure>

						<img src="resources/images/about-images/about-image-2.jpg"
							class="img-responsive" />

						<figcaption>

							<h3>kristy Roan</h3>

							<h5>The Manager</h5>

						</figcaption>

					</figure>

				</section>

				<section class="col-xs-12 col-sm-4 col-md-4 col-lg-4 ">

					<figure>

						<img src="resources/images/about-images/about-image-3.jpg"
							class="img-responsive" />

						<figcaption>

							<h3>Jason takas</h3>

							<h5>The Founder</h5>

						</figcaption>

					</figure>

				</section>

			</div>

			<!-- thumbnails -->

		</div>

	</main>

	<!-- main -->

	<!-- footer -->

	<footer role="footer">

		<!-- nav -->

		<nav role="footer-nav">

			<ul>

				<li><a href="index.html" title="Work">Work</a></li>

				<li><a href="about.html" title="About">About</a></li>

				<li><a href="blog.html" title="Blog">Blog</a></li>

				<li><a href="contact.html" title="Contact">Contact</a></li>

			</ul>

		</nav>

		<!-- nav -->

		<ul role="social-icons">

			<li><a href="#"><i class="fa fa-twitter" aria-hidden="true"></i></a></li>

			<li><a href="#"><i class="fa fa-facebook" aria-hidden="true"></i></a></li>

			<li><a href="#"><i class="fa fa-linkedin" aria-hidden="true"></i></a></li>

			<li><a href="#"><i class="fa fa-flickr" aria-hidden="true"></i></a></li>

		</ul>

		<p class="copy-right">
			Shared by <i class="fa fa-love"></i><a
				href="https://bootstrapthemes.co">BootstrapThemes</a>
		</p>

	</footer>

	<!-- footer -->



	<!-- jQuery (necessary for Bootstrap's JavaScript plugins) -->

	<script src="resources/js/jquery.min.js" type="text/javascript"></script>

	<!-- custom -->

	<script src="resources/js/nav.js" type="text/javascript"></script>

	<script src="resources/js/custom.js" type="text/javascript"></script>

	<!-- Include all compiled plugins (below), or include individual files as needed -->

	<script src="resources/js/bootstrap.min.js" type="text/javascript"></script>

	<!-- jquery.countdown -->

	<script src="resources/js/html5shiv.js" type="text/javascript"></script>

</body>

</html>