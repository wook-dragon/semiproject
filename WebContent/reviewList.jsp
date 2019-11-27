<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html>

<head>

<meta charset="UTF-8">
<meta http-equiv="X-UA-Compatible" content="IE=edge">
<!-- Mobile Specific Meta -->
<meta name="viewport"
	content="width=device-width, initial-scale=1, shrink-to-fit=no">
<!-- Favicon-->
<link rel="shortcut icon" href="img/fav.png">
<!-- Author Meta -->
<meta name="author" content="codepixer">
<!-- Meta Description -->
<meta name="description" content="">
<!-- Meta Keyword -->
<meta name="keywords" content="">

<!-- Favicon -->
<link rel="icon" href="img/core-img/favicon.ico">

<!-- Core Stylesheet -->
<link href="style.css" rel="stylesheet">

<!-- Responsive CSS -->
<link href="css/responsive/responsive.css" rel="stylesheet">

<link
	href="https://fonts.googleapis.com/css?family=Poppins:100,200,400,300,500,600,700"
	rel="stylesheet">

<!-- fontAwesome -->
<link rel="stylesheet"
	href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/5.8.2/css/all.min.css" />

<!--
         CSS
         ============================================= -->
<link rel="stylesheet" href="css/linearicons.css">
<link rel="stylesheet" href="css/font-awesome.min.css">
<link rel="stylesheet" href="css/bootstrap.css">
<link rel="stylesheet" href="css/magnific-popup.css">
<link rel="stylesheet" href="css/nice-select.css">
<link rel="stylesheet" href="css/animate.min.css">
<link rel="stylesheet" href="css/owl.carousel.css">
<link rel="stylesheet" href="css/main.css">
</head>

<jsp:include page="/common/top.jsp"></jsp:include>
<body>
	<% 
      
      	String ps = request.getParameter("ps"); //pagesize
		String cp = request.getParameter("cp");    //current page
      
      
      	if(ps == null || ps.trim().equals("")){
			//default 값 설정
			ps = "5";
		}
		if(cp == null || cp.trim().equals("")){
			//default 값 설정
			cp = "1";
		}
		
		int pagesize = Integer.parseInt(ps);
		int cpage = Integer.parseInt(cp);
		int pagecount = 0;
		
/* 		if(totalboardcount % pagesize == 0){  // 전체게시물 % 한목록에 보이는 게시물을 나눴을때 딱떨어지면 그게 페이지 수 . 
			pagecount = totalboardcount / pagesize;
		}else{  // 전체게시물 % 한목록에 보이는 게시물을 나눴을때 딱떨어지면 그게 페이지 수 +1  = 나머지도 페이지로 처리해줘야하니까 
			pagecount = (totalboardcount / pagesize) +1;
		} */




		%>

	<c:set var="pagesize" value="<%= pagesize %>" />
	<c:set var="cpage" value="<%= cpage%>" />
	<c:set var="pagecount" value="<%= pagecount%>" />


	<div class="breadcumb-area bg-img bg-overlay" style="background-image: url(img/bg-img/hero.jpg)">
		<!-- Start post Area -->



		<section class="post-area section-gap" style="padding-top: 200px;">

			<div class="section-heading text-center animated fadeInDown">
				<h2 class="h-bold">
					<i class="far fa-list-alt"></i>&nbsp;&nbsp;Review List
				</h2>
			</div>

				<div style="text-align: center; ">
					<a href="ShowReviewWrite.do?bcode=202&tcode=0" class="btn mini blue"><button type="submit" id="reviewbtn" class="btn dorne-btn" style="width: 200px;" onclick="check()">
					<i class="fas fa-pencil-alt"></i>&nbsp;&nbsp;WRITE
					</button></a>
					
					<%-- <c:forEach var="list" items="${requestScope.reviewlist}"> --%>
			<div class="container">

				<div class="row justify-content-center d-flex">

						</div>
					<div class="col-lg-12 post-list">

						<br>
						
						<div class="single-post d-flex flex-row">
							<div class="thumb">
								<img src="https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcS5GFFn1AmfCSMjFI3JTaaZNIWZb_A8lpmofkzWwTq_uw3U16u9&s" alt="">
							</div>
							<div class="details">
								<div class="title d-flex flex-row justify-content-between">
									<div class="titles">
										<a href="single.html"><h4>&nbsp;&nbsp; 여기는 제목 ${list.title}</h4></a>
									</div>

								</div>
								<p style="text-align:left">
								&nbsp;&nbsp;&nbsp;여기는 글내용 ${list.content}

								</p>
								<h5>&nbsp;&nbsp; Job Nature: Full time</h5>
								<p class="address">
									&nbsp;&nbsp;<i class="fas fa-map-marker-alt"></i>&nbsp;&nbsp; 56/8, Panthapath Dhanmondi Dhaka
								</p>
								<p class="address">
									&nbsp;&nbsp;<i class="fas fa-user"></i>&nbsp;&nbsp; 56/8,Panthapath Dhanmondi Dhaka
								</p>

							</div>
						</div>

					</div>

				</div>
				<%-- </c:forEach> --%>
			</div>
		</section>


		<!-- End footer Area -->

		<script src="js/vendor/jquery-2.2.4.min.js"></script>
		<script
			src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.12.9/umd/popper.min.js"
			integrity="sha384-ApNbgh9B+Y1QKtv3Rn7W3mgPxhU9K/ScQsAP7hUibX39j7fakFPskvXusvfa0b4Q"
			crossorigin="anonymous"></script>
		<script src="js/vendor/bootstrap.min.js"></script>
		<!--    <script type="text/javascript" src="https://maps.googleapis.com/maps/api/js?key=AIzaSyBhOdIF3Y9382fqJYt5I_sswSrEw5eihAA"></script> -->
		<script src="js/easing.min.js"></script>
		<script src="js/hoverIntent.js"></script>
		<script src="js/superfish.min.js"></script>
		<script src="js/jquery.ajaxchimp.min.js"></script>
		<script src="js/jquery.magnific-popup.min.js"></script>
		<script src="js/owl.carousel.min.js"></script>
		<script src="js/jquery.sticky.js"></script>
		<script src="js/jquery.nice-select.min.js"></script>
		<script src="js/parallax.min.js"></script>
		<script src="js/mail-script.js"></script>
		<script src="js/main.js"></script>
		<jsp:include page="/common/bottom.jsp"></jsp:include>
</body>

</html>


