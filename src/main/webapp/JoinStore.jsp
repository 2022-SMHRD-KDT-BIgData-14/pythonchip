<%@page import="com.pythonchip.model.MemberDTO"%>
<%@page import="com.pythonchip.model.StoreDTO"%>
<%@page import="java.util.ArrayList"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!--가게등록-->
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

								<li><a href="BoardMain.jsp">comunity</a></li>

								<li><a href="JoinStore.jsp">store join</a></li>


							</ul>
						</nav>
					</div>

					<!-- 상단 로그인, 회원가입 -->
					<div class="social flex-w flex-l-m p-r-20">
						<li>
							<!--  로그인 이메일 출력! --> <%
						 if (info != null) {
						 %> <a href="./Mypage.jsp" style="padding-right: 20px;">
														MyPage </a>
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
				<li class="t-center m-b-13"><a href="Home.jsp" class="txt19">로고</a>
				</li>
				<ul class="menu-sidebar p-t-95 p-b-70">


					<li class="t-center m-b-13"><a href="MapSearch.jsp"
						class="txt19">map search</a></li>



					<li class="t-center m-b-13"><a href="Store.jsp" class="txt19">store</a>
					</li>

					<li class="t-center m-b-13"><a href="BoardMain.jsp"
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




	<!-- 상단 이미지 -->
	<section class="bg-title-page flex-c-m p-t-160 p-b-80 p-l-15 p-r-15"
		style="background-image: url(images/bg-title-page-02.jpg);">
		<h2 class="tit6 t-center">Store Join</h2>
	</section>





	<div id="con">
		<div id="storejoin">
			<div id="storejoin_form" style="width:650px; height:960px;" >
				<!--가게등록 폼-->
				<form action="StoreService.do" style="width: 550px;" method="post">
					<h3 class="login" style="letter-spacing: -1px;">가게등록</h3>

					<hr>

					<!-- 업체명 -->
					<p style="text-align: center; font-size: 12px; color: #666">업체명</p>
					<input type="text" placeholder="업체명" class="size" name="store_name">
					<p></p>
					</label> <label> <!-- 전화번호 -->
						<p style="text-align: center; font-size: 12px; color: #666">전화번호
						</p> <input type="text" placeholder="전화번호" class="size"
						name="store_tel">
					</label> <label> <!-- 주소입력 창 -->
						<p style="text-align: center; font-size: 12px; color: #666">주소
						</p> <input type="text" placeholder="주소" class="size" name="address">
					</label> <label> <!-- 상세주소(시,군,구) -->
						<p style="text-align: center; font-size: 12px; color: #666"></p> <input
						type="text" placeholder="상세주소(시군구)" class="size"
						name="location_gu">
					</label> <label> <!-- 시군구(읍,면,동) -->
						<p style="text-align: center; font-size: 12px; color: #666"></p> <input
						type="text" placeholder="상세주소(읍면동)" class="size"
						name="location_dong">
					</label> <label> <!-- 키워드-->
						<p style="text-align: center font-size:12px; color: #666">키워드</p>
						<input type="text" placeholder="keyword" class="size"
						name="keyword">
					</label> <label> <!-- <대표메뉴> -->
						<p style="text-align: center; font-size: 12px; color: #666">
							대표매뉴</p> <input type="text" placeholder="대표메뉴" class="size"
						name="main_menu">
					</label> 
					<label> 
					<!-- <사업자등록증> -->
				 
					<p style="text-align: center; font-size: 12px; color: #666">
					사업자등록증 <input type="file"  value="파일선택" class="join"	style="height"; 30px; width: 70px; > </p>			
					</label>
                    
                    <label>
				 <!-- 업체이미지 -->
				<p style="text-align: center; font-size:12px; color:#666; width: 180px;"> 
				업체이미지 <input type="file" value="파일선택" class="join" style="height": 30px; width: 70px; > </p>
					</label>
                    <!--버튼-->
                    <br>
                    <p>
                        <input type="submit" value="신청하기" class="btn10">

                    </p>
                    <p>
                        <input type="submit" value="내용초기화" class="btn10">

                    </p>
                </form>

                <hr>

            </div>
            <div>
            </div>
            </section>
        </div>
    </div>
    </div>
    </footer>
    <!-- Container Selection1 -->
    <div id="dropDownSelect1"></div>



    <!--===============================================================================================-->
    <script type="text/javascript" src="vendor/jquery/jquery-3.2.1.min.js"></script>
    <!--===============================================================================================-->
    <script type="text/javascript" src="vendor/animsition/js/animsition.min.js"></script>
    <!--===============================================================================================-->
    <script type="text/javascript" src="vendor/bootstrap/js/popper.js"></script>
    <script type="text/javascript" src="vendor/bootstrap/js/bootstrap.min.js"></script>
    <!--===============================================================================================-->
    <script type="text/javascript" src="vendor/select2/select2.min.js"></script>
    <!--===============================================================================================-->
    <script type="text/javascript" src="vendor/daterangepicker/moment.min.js"></script>
    <script type="text/javascript" src="vendor/daterangepicker/daterangepicker.js"></script>
    <!--===============================================================================================-->
    <script type="text/javascript" src="vendor/slick/slick.min.js"></script>
    <script type="text/javascript" src="js/slick-custom.js"></script>
    <!--===============================================================================================-->
    <script type="text/javascript" src="vendor/parallax100/parallax100.js"></script>
    <script type="text/javascript">
        $('.parallax100').parallax100();
    </script>
    <!--===============================================================================================-->
    <script type="text/javascript" src="vendor/countdowntime/countdowntime.js"></script>
    <!--===============================================================================================-->
    <script type="text/javascript" src="vendor/lightbox2/js/lightbox.min.js"></script>
    <!--===============================================================================================-->
    <script src="https://maps.googleapis.com/maps/api/js?key=AIzaSyAKFWBqlKAGCeS1rMVoaNlwyayu0e0YRes"></script>
    <script src="js/map-custom.js"></script>
    <!--===============================================================================================-->
    <script src="js/main.js"></script>

</body>

</html>