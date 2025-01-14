<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>

<!-- header -->

	<header role="header">

		<div class="container">

			<!-- logo -->

			<h1>
				<a href="${pageContext.request.contextPath}/gallery/main.jsp"
					title="Logo"><img id="logo-image"
					src="${pageContext.request.contextPath}/resources/img/gallery/메인 홈페이지/art.png"
					title="art connect" alt="avana LLC" /></a>
			</h1>

			<!-- logo -->

			<!-- nav -->

			<nav role="header-nav" class="navy">

				<ul>


					<li class="nav-active">
					<a href="${pageContext.request.contextPath}/gallery/list" title="Work">전시관 조회 및 검색</a></li>


					<li><a href="${pageContext.request.contextPath}/reservation/gallerySelection.jsp" title="About">예약</a></li>

					<li><a href="${pageContext.request.contextPath}/review/boardList.jsp" title="Blog">커뮤니티</a></li>

					<li><a href="${pageContext.request.contextPath}/mypage/mypage.jsp" title="Contact">마이 페이지</a></li>
					

					<li><a href="${pageContext.request.contextPath}/notice/noticeList.jsp" title="Contact">공지사항</a></li>
					
					<li><a href="${pageContext.request.contextPath}/notice/qnaList.jsp" title="Contact">QnA</a></li>


				</ul>
				
				<!-- 로그인 버튼 -->
				<% if (session.getAttribute("memberID") == null) { %>
				<div class="login">
					<a href="${pageContext.request.contextPath}/member/login">
						<button class="btn btn-danger" onclick="login()">로그인</button>
					</a>
				</div>
				<% } else { %>
				
				<!-- 로그아웃 버튼 -->
				<%= session.getAttribute("memberID") %>님 로그인되었습니다.<br>
				<a href="Logout.jsp">
				<button class="btn btn-info">로그아웃</button>
				</a>
				<% } %>
			</nav>

			<!-- nav -->

		</div>

	</header>


	<!-- header -->

