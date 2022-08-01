<!-- 회원가입 수정 -->

<%@page import="com.pythonchip.model.MemberDTO"%>
<%@page import="java.util.ArrayList"%>
<%@page import="com.pythonchip.model.StoreDTO"%>
<%@page import="com.pythonchip.model.StoreDAO"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en">

<head>
<title>Contact</title>
<style>
#body {
	font-family: Montserrat;
}
}
</style>
<meta charset="UTF-8">
<meta name="viewport" content="width=device-width, initial-scale=1">
<!--===============================================================================================-->
<link href="https://fonts.googleapis.com/css?family=Montserrat:400,700"
	rel="stylesheet">
<!--===============================================================================================-->
<link rel="icon" type="image/png" href="images/icons/favicon.png" />
<!--===============================================================================================-->
<link rel="stylesheet" type="text/css"
	href="vendor/bootstrap/css/bootstrap.min.css">
<!--===============================================================================================-->
<link rel="stylesheet" type="text/css"
	href="fonts/font-awesome-4.7.0/css/font-awesome.min.css">
<!--===============================================================================================-->
<link rel="stylesheet" type="text/css"
	href="fonts/themify/themify-icons.css">
<!--===============================================================================================-->
<link rel="stylesheet" type="text/css" href="vendor/animate/animate.css">
<!--===============================================================================================-->
<link rel="stylesheet" type="text/css"
	href="vendor/css-hamburgers/hamburgers.min.css">
<!--===============================================================================================-->
<link rel="stylesheet" type="text/css"
	href="vendor/animsition/css/animsition.min.css">
<!--===============================================================================================-->
<link rel="stylesheet" type="text/css"
	href="vendor/select2/select2.min.css">
<!--===============================================================================================-->
<link rel="stylesheet" type="text/css"
	href="vendor/daterangepicker/daterangepicker.css">
<!--===============================================================================================-->
<link rel="stylesheet" type="text/css" href="vendor/slick/slick.css">
<!--===============================================================================================-->
<link rel="stylesheet" type="text/css"
	href="vendor/lightbox2/css/lightbox.min.css">
<!--===============================================================================================-->
<link rel="stylesheet" type="text/css" href="css/util.css">
<link rel="stylesheet" type="text/css" href="css/main.css">
<!--===============================================================================================-->
</head>

<body class="animsition" id="body">
	<%
	MemberDTO info = (MemberDTO) session.getAttribute("info");
	%>
	<!-- Header -->
	<header>
		<!-- Header desktop -->
		<div class="wrap-menu-header gradient1 trans-0-4">
			<div class="container h-full">
				<div class="wrap_header trans-0-3">
					<!-- 로고 -->
					<div class="logo">
						<a href="Home.jsp"> <img src="images/logo.png" alt="IMG-LOGO"
							data-logofixed="images/logo.png"></a> </a>
					</div>

					<!-- 상단 메뉴창-->
					<div class="wrap_menu p-l-45 p-l-0-xl">
						<nav class="menu">
							<ul class="main_menu">
								<li><a href="Home.jsp">Home</a></li>

								<li><a href="MapSearch.jsp">map search</a></li>

								<li><a href="Store.jsp">store</a></li>

								<li><a href=" Community.jsp">Community</a></li>

								<li><a href="JoinStore.jsp">store join</a></li>


							</ul>
						</nav>
					</div>
				</div>
			</div>
		</div>
	</header>

	<!-- 슬라이드 바 -->
	<aside class="sidebar trans-0-4">
		<!-- Button Hide sidebar -->
		<button class="btn-hide-sidebar ti-close color0-hov trans-0-4"></button>


		<div class="gallery-sidebar t-center p-l-60 p-r-60 p-b-40">
			<!-- 슬라이드바 구성  -->

			<ul class="menu-sidebar p-t-95 p-b-70">
				<li class="t-center m-b-13"><a href="Home.jsp" class="txt19">로고</a>
				</li>
				<ul class="menu-sidebar p-t-95 p-b-70">


					<li class="t-center m-b-13"><a href="MapSearch.jsp"
						class="txt19">map search</a></li>



					<li class="t-center m-b-13"><a href="Store.jsp" class="txt19">store</a>
					</li>

					<li class="t-center m-b-13"><a href=" Community.jsp"
						class="txt19">Community</a></li>

					<li class="t-center m-b-13"><a href="Mypage.jsp" class="txt19">my
							page</a></li>


					<li class="t-center m-b-13"><a href="JoinStore.jsp"
						class="txt19">StoreJoin</a></li>

					<li class="t-center">
						<!-- 슬라이드바 로그인 --> <a href="Login.jsp"
						class="btn3 flex-c-m size13 txt11 trans-0-4 m-l-r-auto"> login
					</a>
					</li>
				</ul>
	</aside>


	<!-- 상단 -->
	<section class="bg-title-page flex-c-m p-t-160 p-b-80 p-l-15 p-r-15"
		style="background-image: url(images/기장떡.png);">
		<h2 class="tit6 t-center">Fail</h2>
	</section>
	
	<%
	//어디서 요청이 들어왔는지 확인
			String requstURI = request.getRequestURI();
			System.out.println("요청 들어온 주소: " + requstURI);
			String contextPath = request.getContextPath();
			System.out.println("프록젝트 이름: " + contextPath);
			String result = requstURI.substring(contextPath.length() + 1);
			System.out.println("요청 서블릿: " + result);
	
	if(result.equals("JoinService.java")){%>
	<table border=3><tr><td>존재하는 아이디입니다.</td></tr></table>
	<li><a href="Join.jsp">회원가입 다시 하러 가기</a></li>
	
	<%}else if(result.equals("LoginService.java")){%>
	
	<table border=3><tr><td>존재하지않는 회원정보입니다.</td></tr></table>
	<li><a href="Login.jsp">로그인 다시 하러 가기</a></li>
		
	<%}else if(result.equals("updateService.java")){%>
	
	<table border=3><tr><td>잘못된 정보입니다.</td></tr></table>
	<li><a href="Update.jsp">회원정보수정 다시 하러 가기</a></li>
		
	<%}else if(result.equals("StoreService.java")){%>
	
	<table border=3><tr><td>잘못된 정보입니다.</td></tr></table>
	<li><a href="JoinSuccess.jsp">가게등록 다시 하러 가기</a></li>
		
	<% 	} 	%>
	
	


			<!--===============================================================================================-->
			<script type="text/javascript "
				src="vendor/jquery/jquery-3.2.1.min.js "></script>
			<!--===============================================================================================-->
			<script type="text/javascript "
				src="vendor/animsition/js/animsition.min.js "></script>
			<!--===============================================================================================-->
			<script type="text/javascript " src="vendor/bootstrap/js/popper.js "></script>
			<script type="text/javascript "
				src="vendor/bootstrap/js/bootstrap.min.js "></script>
			<!--===============================================================================================-->
			<script type="text/javascript " src="vendor/select2/select2.min.js "></script>
			<!--===============================================================================================-->
			<script type="text/javascript "
				src="vendor/daterangepicker/moment.min.js "></script>
			<script type="text/javascript "
				src="vendor/daterangepicker/daterangepicker.js "></script>
			<!--===============================================================================================-->
			<script type="text/javascript " src="vendor/slick/slick.min.js "></script>
			<script type="text/javascript " src="js/slick-custom.js "></script>
			<!--===============================================================================================-->
			<script type="text/javascript "
				src="vendor/parallax100/parallax100.js "></script>
			<script type="text/javascript ">
                $('.parallax100').parallax100();
            </script>
			<!--===============================================================================================-->
			<script type="text/javascript "
				src="vendor/countdowntime/countdowntime.js "></script>
			<!--===============================================================================================-->
			<script type="text/javascript "
				src="vendor/lightbox2/js/lightbox.min.js "></script>
			<!--===============================================================================================-->
			<script src="js/main.js "></script>
</body>

</html>