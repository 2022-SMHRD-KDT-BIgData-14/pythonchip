<!-- 회원탈퇴 -->

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

<body class="animsition">
<%
	//어디서 요청이 들어왔는지 확인
			String requstURI = request.getRequestURI();
			String contextPath = request.getContextPath();
			String result = requstURI.substring(contextPath.length() + 1);
			System.out.println("요청 서블릿: " + result); 
			
			if(result.equals("./MemberDelete.jsp")){%>
			<script>
			alert('회원 탈퇴 실패하셨습니다. 다시 한번 시도해주세요')
			</script>
			<%	
			}
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

								<li><a href=" Community.jsp">Community</a></li>

								<li><a href="JoinStore.jsp">store join</a></li>


							</ul>
						</nav>
					</div>

					<!-- 상단 로그인, 회원가입 -->
					<div class="social flex-w flex-l-m p-r-20">
						<li><a href="Login.jsp" style="padding-right: 20px;">
								login </a></li>
						<li><a href="Join.jsp" style="padding-left: 20px;"> join
						</a></li>


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
		style="background-image: url(images/전통차.png);">
		<h2 class="tit6 t-center">회원탈퇴</h2>
	</section>
	<!-- 회원탈퇴 폼 -->

	<div id="con">
		<div id="login">
			<div id="bye_form" style="width: 550px; height: 500px; ">
				<%
				MemberDTO info = (MemberDTO) session.getAttribute("info"); 
				System.out.println(info.getId());
				%>
				<form action="DeleteService.do" method="post">
					<h3 class="login" style="letter-spacing: -1px;">회원탈퇴</h3>
					<hr>
					<input type="hidden" name="id" value="<%=info.getId()%>">
					<label> <!--현재 비밀번호-->
						<p style="text-align: center; font-size: 12px; color: #666">탈퇴사유
						</p> <input type="text" placeholder="탈퇴사유를 적어주세요" class="size"
						style="width: 400px">
					</label><br> <label> <!--비밀번호-->
						<p style="text-align: center; font-size: 12px; color: #666">
							비밀번호</p> <input type="password" placeholder="비밀번호 입력" name="pw"
						class="size" style="width: 400px">
					</label> <br>
					<!--회원탈퇴 버튼-->
					<p>
						<input type="submit" value="회원탈퇴" class="btn">
					</p>
				</form>
				<p class="find">
					<span><a href="Mypage.jsp">취소</a></span>
					<!-- 취소 -->

					</label>
			</div>
			<div></div>


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