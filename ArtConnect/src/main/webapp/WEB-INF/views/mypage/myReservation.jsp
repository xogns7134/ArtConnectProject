<%@page import="com.multi.artConnect.mypage.MypageDAO"%>
<%@page import="com.multi.artConnect.member.MemberVO"%>
<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>    

  <%
	session.setAttribute("memberID", "test4");

    %>
<!DOCTYPE HTML>
 <html>
 <head>
	  	<meta charset="UTF-8"> 

        <title>::Art Connect ::</title>
	    <title>${memberID} 회원정보수정</title>
	
		<link rel="shortcut icon" href="images/favicon.ico" type="image/x-icon">

        <!-- style -->
        <link href="${pageContext.request.contextPath}/resources/css/style.css" rel="stylesheet" type="text/css">

        <!-- bootstrap -->
        <link href="${pageContext.request.contextPath}/resources/css/bootstrap.min.css" rel="stylesheet" type="text/css">
        
        <!-- responsive -->
        <link href="${pageContext.request.contextPath}/resources/css/responsive.css" rel="stylesheet" type="text/css">
        
        <!-- font-awesome -->
        <link href="${pageContext.request.contextPath}/resources/css/fonts.css" rel="stylesheet" type="text/css">
        <link href="${pageContext.request.contextPath}/resources/css/font-awesome.min.css" rel="stylesheet" type="text/css">
		
		<!-- sidebar CSS -->
    	<link rel="stylesheet" type="text/css" href="${pageContext.request.contextPath}/resources/css/sidebar.css">
	  	
    <style>  
    input {
	width: 500px;
	height: 40px;
	font-size: 20px;
	  }
	  
	.navy {
		position: absolute;
		top: 10px;
		right: 10px;
	}
	
	 .pagination {
        display: inline-block;
    }

    .pagination li {
        display: inline;
        margin-right: 5px;
    }

    .pagination li.active {
        font-weight: bold;
        background-color: #007bff;
        color: white;
    }

    .pagination li a {
        text-decoration: none;
        color: #007bff;
    }
	</style>
	
</head>

<body>
    <header role="header">
        <div class="container">
           
            <!-- Art Connect logo -->
            <h1>
                <a href="${pageContext.request.contextPath}/gallery/main.jsp" title="Art Connect"><img src="${pageContext.request.contextPath}/resources/img/art.png" title="Art Connect" alt="Art Connect" style="max-width: 300px; max-height: 100px; " /></a>
            </h1>
            
            <!-- nav -->
            <nav role="header-nav" class="navy">
                <ul>
                    <li class="nav-active"><a
						href="${pageContext.request.contextPath}/gallery/list"
						title="Work">전시관 조회 및 검색</a></li>

					<li><a href="${pageContext.request.contextPath}/reservation/gallerySelection.jsp" title="About">예약</a></li>

					<li><a href="${pageContext.request.contextPath}/review/boardList.jsp" title="Blog">커뮤니티</a></li>

					<li><a href="${pageContext.request.contextPath}/mypage/mypage.jsp" title="Contact">마이 페이지</a></li>
					
					<li><a href="${pageContext.request.contextPath}/notice/noticeList2.jsp" title="Contact">공지사항</a></li>
					
					<li><a href="${pageContext.request.contextPath}/notice/QnaList.jsp" title="Contact">QnA</a></li>
                </ul>
            </nav>
        </div>
    </header>

    <!-- sidebar -->
    <div class="container">
        <div class="row">
            <div class="col-md-3">
                <div class="sidebar">
                    <h3>마이페이지</h3>
                    <ul class="nav flex-column">
                        <li class="nav-item">
                            <a class="nav-link active" aria-current="page" href="updateOne?memberID=${memberID}">회원정보수정</a>
                        </li>
                        <li class="nav-item">
                        <a class="nav-link" href="deleteOne?memberID=${memberID}">회원탈퇴</a>     
                        </li>
                        <li class="nav-item">
                            <a class="nav-link" href="myReservation?memberID=${memberID}">내 예약</a>
                        </li>
                        <li class="nav-item">
                            <a class="nav-link" href="myReview?memberID=${memberID}">내 리뷰</a>
                        </li>
                        <li class="nav-item">
                            <a class="nav-link disabled" aria-disabled="true">좋아요</a>
                        </li>
                    </ul>
                </div>
            </div>
   
        <!-- Main Content -->
	<main role="main-home-wrapper" class="container mt-5">
	<h2>Reservation</h2>
	<hr>
	<div class="col-md-9">
	<div class="update-content">
	<form action = "myReview" method = "post">
	<div id="result">
	<table class="table">
		<thead>
			<tr>
				<th>No.</th>
				<th>예약자ID</th>
				<th>전시명</th>
				<th>관람일자</th>
				<th>관람시간</th>
				<th>결제상태</th>

			</tr>
		</thead>
 		<c:forEach var ="reservation" items="${list}">
	
		<tr>
		<td>${reservation.reservationID}</td>
		<td>${reservation.memberID}</td>
		<td>${reservation.programID}</td>
		<td>${reservation.reservationCount}</td>
		<td>${reservation.reservationTime}</td>
		<td>${reservation.payment}</td>
		</tr> 
		 </c:forEach> 
		</table>
		   </form>
	</div>
</div>

	<hr>

<%-- 	<!-- 페이징 부분 추가 -->
<div class="container mt-3">
    <ul class="pagination">
        <c:forEach begin="1" end="${pageVO.totalPages}" varStatus="i">
            <li class="page-item ${pageVO.page eq i.index ? 'active' : ''}">
                <a class="page-link" href="myReview?page=${i.index}&size=${pageVO.size}">${i.index}</a>
            </li>
        </c:forEach>
    </ul>
</div> --%>
        <!-- footer -->

        <footer role="footer">

            <!-- logo -->

             <!--    <h1>

                    <a href="index.html" title="Art Connect"><img src="${pageContext.request.contextPath}resources/img/art.png" title="Art Connect" alt="Art Connect" style="max-width: 300px; max-height: 100px;"/></a>

                </h1>
 -->
            <!-- logo -->

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
            <p class="copy-right">Shared by <i class="fa fa-love"></i><a href="https://bootstrapthemes.co">BootstrapThemes</a></p>
        </footer>
      
        <!-- footer -->
        <!-- jQuery (necessary for Bootstrap's JavaScript plugins) -->
        <script src="${pageContext.request.contextPath}/resources/js/jquery.min.js" type="text/javascript"></script>
        <!-- custom -->
		<script src="${pageContext.request.contextPath}/resources/js/nav.js" type="text/javascript"></script>
        <script src="${pageContext.request.contextPath}/resources/js/custom.js" type="text/javascript"></script>
        <!-- Include all compiled plugins (below), or include individual files as needed -->
        <script src="${pageContext.request.contextPath}/resources/js/bootstrap.min.js" type="text/javascript"></script>
        <!-- jquery.countdown -->
        <script src="${pageContext.request.contextPath}/resources/js/html5shiv.js" type="text/javascript"></script>

    </body>

</html>