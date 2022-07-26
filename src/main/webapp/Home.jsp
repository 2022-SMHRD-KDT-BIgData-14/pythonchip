
<%@page import="com.pythonchip.model.MemberDAO"%>
<%@page import="com.pythonchip.model.MemberDTO"%>
<%@page import="java.util.ArrayList"%>
<%@page import="com.pythonchip.model.StoreDTO"%>
<%@page import="com.pythonchip.model.StoreDAO"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!-- 메인 페이지 -->
<!DOCTYPE html>
<html lang="en">
<head>
<title>Home</title>
<style>
#loginid {
	color: white;
	font-family: Jua;
	letter-spacing: 2px;
	font-size: 14px;

	/* 글꼴 변경 = font-family */
}
</style>
<meta charset="UTF-8">
<meta name="viewport" content="width=device-width, initial-scale=1">
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
<meta http-equiv="X-UA-Compatible" content="IE=edge">
<meta name="viewport" content="width=device-width, initial-scale=1.0">
<link rel="stylesheet"
	href="https://fonts.googleapis.com/icon?family=Material+Icons">

<!-- <link rel="stylesheet" href="./css/main.css"> -->
<script defer src="./js/main.js"></script>
<title>Document</title>



</head>

<body class="animsition">
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
						<a href="Home.jsp"> <img src="images/logo2.png" alt="IMG-LOGO"
							data-logofixed="images/logo2.png"></a> </a>
					</div>

					<!-- 상단 메뉴창-->
					<div class="wrap_menu p-l-45 p-l-0-xl">
						<nav class="menu">
							<ul class="main_menu">
								<li><a href="Home.jsp">Home</a></li>

								<li><a href="MapSearch.jsp">map search</a></li>

								<li><a href="Store.jsp">store</a></li>

								<li><a href="BoardMain.jsp">Community</a></li>

								<li><a href="JoinStore.jsp">store join</a></li>

							</ul>
						</nav>
					</div>

					<!-- 상단 로그인, 회원가입 -->
					<div class="social flex-w flex-l-m p-r-20">
						<li>
							<!--  로그인 이메일 출력! --> <%
						 if (info != null) {
						 %> <a href="./Mypage.jsp" style="padding-right: 20px;"> MyPage
						</a>
						<li><a href="LogoutService.do" style="padding-left: 20px;">
								Logout </a></li>

						<%
						} else {
						%>
						<a href="Login.jsp" style="padding-right: 20px;"> login </a>
						<li><a href="Join.jsp" style="padding-left: 20px;"> join
						</a></li>
						<%
						}
						%>
						</li>


						<button class="btn-show-sidebar m-l-33 trans-0-4"></button>
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
					<div class="logo">
						<a href="Home.jsp"> <img src="images/logo.png" alt="IMG-LOGO"
							data-logofixed="images/logo.png"></a>
					</div>
                <ul class="menu-sidebar p-t-95 p-b-70">

					

					<li class="t-center m-b-13"><a href="MapSearch.jsp"
						class="txt19">map search</a></li>

					<li class="t-center m-b-13"><a href="Store.jsp" class="txt19">store</a>
					</li>

					<li class="t-center m-b-13"><a href=" BoardMain.jsp"
						class="txt19">Community</a></li>

					<li class="t-center m-b-13"><a href="JoinStore.jsp"
						class="txt19">StoreJoin</a></li>
					<!--  로그인했을때면 mypage 뜨게하기 -->
					<%
					if (info != null) {
					%>
					<li class="t-center m-b-13"><a href="Mypage.jsp" class="txt19">my
							page</a></li>
					<%
					} else {
					%>
					<!-- 슬라이드바 로그인 -->
					<a href="Login.jsp"
						class="btn3 flex-c-m size13 txt11 trans-0-4 m-l-r-auto"> login
					</a>
					<%
					}
					%>

					<li class="t-center"></li>
				</ul>
	</aside>

	<!-- 첫번째 슬라이드 -->
	<section class="section-slide">

		<div class="wrap-slick1">
			<div class="slick1">
				<div class="item-slick1 item1-slick1"
					style="background-image: url(images/master-slides-01.png);">
					<div
						class="wrap-content-slide1 sizefull flex-col-c-m p-l-15 p-r-15 p-t-150 p-b-170">
						<span
							class="caption1-slide1 txt1 t-center animated visible-false m-b-15"
							data-appear="rollIn"> 저희  BBOGEUL은  </span> <span
							class="caption1-slide1 txt1 t-center animated visible-false m-b-15"
							data-appear="rollIn"> 할매니얼에 관한 음식을 지도를 통해 </span>
						<h2
							class="caption2-slide1 tit1 t-center animated visible-false m-b-37"
							data-appear="lightSpeedIn">손쉽게 찾을 수 있습니다!!</h2>



						<!-- 검색창 -->
						<div class="menu">
							<div class="search">
							<form action="/pythonchip/Store.jsp" method="get">
								<input name="searchWord" id="searchinput" type="text" style="text-align: center;">
								<p class="material-icons">search</p>

</form>
							</div>
						</div>
					</div>
				</div>


		

				<!-- 두번째 슬라이드 -->
				<div class="item-slick1 item2-slick1"
					style="background-image: url(images/master-slides-02.jpg);">
					<div
						class="wrap-content-slide1 sizefull flex-col-c-m p-l-15 p-r-15 p-t-150 p-b-170">
						<span
							class="caption1-slide1 txt1 t-center animated visible-false m-b-15"
							data-appear="rollIn"> 할매니얼이란? </span> <span
							class="caption1-slide1 txt1 t-center animated visible-false m-b-15"
							data-appear="rollIn"> 할머니들이 먹는 음식과</span>
							<span
							class="caption1-slide1 txt1 t-center animated visible-false m-b-15"
							data-appear="rollIn"> 할머니들의 패션 취향을 선호하는  </span>
						<h2
							class="caption2-slide1 tit1 t-center animated visible-false m-b-37"
							data-appear="lightSpeedIn"> 밀레니얼 세대를 의미한다!</h2>

						<div class="wrap-btn-slide1 animated visible-false"
							data-appear="slideInUp">
							<!-- Button1 -->
							<a href="MapSearch.jsp"
								class="btn1 flex-c-m size1 txt3 trans-0-4"> search! </a>
						</div>
					</div>
				</div>



			

			</div>



			<div class="wrap-slick1-dots"></div>
		</div>
	</section>






	<!--===============================================================================================-->
	<script type="text/javascript" src="vendor/jquery/jquery-3.2.1.min.js"></script>
	<!--===============================================================================================-->
	<script type="text/javascript"
		src="vendor/animsition/js/animsition.min.js"></script>
	<!--===============================================================================================-->
	<script type="text/javascript" src="vendor/bootstrap/js/popper.js"></script>
	<script type="text/javascript"
		src="vendor/bootstrap/js/bootstrap.min.js"></script>
	<!--===============================================================================================-->
	<script type="text/javascript" src="vendor/select2/select2.min.js"></script>
	<!--===============================================================================================-->
	<script type="text/javascript"
		src="vendor/daterangepicker/moment.min.js"></script>
	<script type="text/javascript"
		src="vendor/daterangepicker/daterangepicker.js"></script>
	<!--===============================================================================================-->
	<script type="text/javascript" src="vendor/slick/slick.min.js"></script>
	<script type="text/javascript" src="js/slick-custom.js"></script>
	<!--===============================================================================================-->
	<script type="text/javascript" src="vendor/parallax100/parallax100.js"></script>
	<script type="text/javascript">
		$('.parallax100').parallax100();
	</script>
	<!--===============================================================================================-->
	<script type="text/javascript"
		src="vendor/countdowntime/countdowntime.js"></script>
	<!--===============================================================================================-->
	<script type="text/javascript"
		src="vendor/lightbox2/js/lightbox.min.js"></script>
	<!--===============================================================================================-->
	<script src="js/main.js"></script>

<script>


</script>




<div style="
margin-top:10em;
margin-left: 14em; margin-right: 14em;
text-align: center;
">
<span style="font-size: 2.2em;">이런이런 태그태그 클릭 ㄱㄱ</span>
<br>
<br>
			<%
			String[] keywordArr = {"식혜", "흑염소", "양갱", "막걸리", "인절미", "말차",
					"흑임자", "쑥", "한방", "미숫가루", "떡", "달고나", "전통차", "팥"};
			%>
			<%
			int cnt = 0;
			for (int i = 0; i < keywordArr.length; i++) {
				if (keywordArr.length - 1 <= cnt) {
					cnt = 0;
			%><!-- <br> -->
			<%
			}
			%>
			<button type="button"
				style="background-color: #FFA46C; font-size: 20px; text-align: center;
			    width: auto;
			    height: 2em;
			    margin-top: 0.25em;
			    padding-left: 1.2em;
			    padding-right: 1.2em;
			    margin-left: 0.2em;
				"
				class="keywordBtn btn btn-outline-danger"
				><%=keywordArr[i]%></button>
			<%
			}
			%>

		</div>
<div style="padding-bottom: 10em;"></div>

<script>
$('.btn').on('click', function(){
	window.location.href = '/pythonchip/Store.jsp?searchWord='+$(this).text();})
</script>

</body>

</html>