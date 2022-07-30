<!-- 회원가입 수정 -->

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
    <link href="https://fonts.googleapis.com/css?family=Montserrat:400,700" rel="stylesheet">
    <!--===============================================================================================-->
    <link rel="icon" type="image/png" href="images/icons/favicon.png" />
    <!--===============================================================================================-->
    <link rel="stylesheet" type="text/css" href="vendor/bootstrap/css/bootstrap.min.css">
    <!--===============================================================================================-->
    <link rel="stylesheet" type="text/css" href="fonts/font-awesome-4.7.0/css/font-awesome.min.css">
    <!--===============================================================================================-->
    <link rel="stylesheet" type="text/css" href="fonts/themify/themify-icons.css">
    <!--===============================================================================================-->
    <link rel="stylesheet" type="text/css" href="vendor/animate/animate.css">
    <!--===============================================================================================-->
    <link rel="stylesheet" type="text/css" href="vendor/css-hamburgers/hamburgers.min.css">
    <!--===============================================================================================-->
    <link rel="stylesheet" type="text/css" href="vendor/animsition/css/animsition.min.css">
    <!--===============================================================================================-->
    <link rel="stylesheet" type="text/css" href="vendor/select2/select2.min.css">
    <!--===============================================================================================-->
    <link rel="stylesheet" type="text/css" href="vendor/daterangepicker/daterangepicker.css">
    <!--===============================================================================================-->
    <link rel="stylesheet" type="text/css" href="vendor/slick/slick.css">
    <!--===============================================================================================-->
    <link rel="stylesheet" type="text/css" href="vendor/lightbox2/css/lightbox.min.css">
    <!--===============================================================================================-->
    <link rel="stylesheet" type="text/css" href="css/util.css">
    <link rel="stylesheet" type="text/css" href="css/main.css">
    <!--===============================================================================================-->
</head>

<body class="animsition">

      <!-- Header -->
      <header>
        <!-- Header desktop -->
        <div class="wrap-menu-header gradient1 trans-0-4">
            <div class="container h-full">
                <div class="wrap_header trans-0-3">
                    <!-- 로고 -->
                    <div class="logo">
                        <a href="home.html">
                            <img src="images/logo.png" alt="IMG-LOGO" data-logofixed="images/logo.png"></a>
                        </a>
                    </div>

                    <!-- 상단 메뉴창-->
                    <div class="wrap_menu p-l-45 p-l-0-xl">
                        <nav class="menu">
                            <ul class="main_menu">
                                <li>
                                    <a href="home.html">Home</a>
                                </li>

                                <li>
                                    <a href="mapsearch.html">map search</a>
                                </li>

                                <li>
                                    <a href="store.html">store</a>
                                </li>

                                <li>
                                    <a href="blog.html">comunity</a>
                                </li>

                                <li>
                                    <a href="storejoin.html">store join</a>
                                </li>


                            </ul>
                        </nav>
                    </div>

                    <!-- 상단 로그인, 회원가입 -->
                    <div class="social flex-w flex-l-m p-r-20">
                        <li>
                            <a href="login.html" style="padding-right: 20px;">
                                login
                            </a>
                        </li>
                        <li>
                            <a href="join.html" style="padding-left: 20px;">
                                join
                            </a>
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
                <li class="t-center m-b-13">
                    <a href="home.html" class="txt19">로고</a>
                </li>
                <ul class="menu-sidebar p-t-95 p-b-70">


                    <li class="t-center m-b-13">
                        <a href="mapsearch.html" class="txt19">map search</a>
                    </li>



                    <li class="t-center m-b-13">
                        <a href="store.html" class="txt19">store</a>
                    </li>

                    <li class="t-center m-b-13">
                        <a href="blog.html" class="txt19">comunity</a>
                    </li>

                    <li class="t-center m-b-13">
                        <a href="mypage.html" class="txt19">my page2</a>
                    </li>


                    <li class="t-center m-b-13">
                        <a href="storejoin.html" class="txt19">storejoin</a>
                    </li>

                    <li class="t-center">
                        <!-- 슬라이드바 로그인 -->
                        <a href="login.html" class="btn3 flex-c-m size13 txt11 trans-0-4 m-l-r-auto">
					login
				</a>
                    </li>
                </ul>

    </aside>

    <!-- 상단 -->
    <section class="bg-title-page flex-c-m p-t-160 p-b-80 p-l-15 p-r-15" style="background-image: url(images/기장떡.png);">
        <h2 class="tit6 t-center">
            회원가입수정
        </h2>
    </section>
    <!-- 회원정보 수정 창 -->

    <div id="con">
        <div id="login">
            <div id="join_form">
                <!--회원가입 수정 폼-->
                <form>
                    <h3 class="login" style="letter-spacing:-1px;">뭘 바꾸고 싶으신가~?</h3>

                    <hr>

                    <label>
						<!--현재 비밀번호-->
					  <p style="text-align: center; font-size:12px; color:#666">현재 비밀번호 </p>
					  <input type="password" placeholder="현재 비밀번호" class="size" style="width:400px">
					  </label>


                    <label>
		  <!--비밀번호-->
		<p style="text-align: center; font-size:12px; color:#666">새 비밀번호 </p>
		<input type="password" placeholder="새 비밀번호" class="size" style="width:400px">
		</label>


                    <label>
			<!-- 비밀번호 확인 -->
			<p style="text-align: left; font-size:12px; color:#666"> </p>
			<input type="password" placeholder="새 비밀번호 확인" class="size" style="width:400px">
		</label>


                    <label>
			<!-- 전화번호 -->
		<p style="text-align: center; font-size:12px; color:#666">Mobile Phone</p>
		  
			<input placeholder="-빼고 숫자만 입력"  class="size num2"  style="width:400px">
		 </label>



                    <label>
				<!-- 나이입력-->
			<p style="text-align: center; font-size:12px; color:#666">age</p>
				<input type="text" placeholder="(숫자만 입력)" class="size" style="width:400px">
		</label>



                    <!--회원정보 수정 버튼-->
                    <p>
                        <a href="mypage.html" type="submit" class="btn">회원정보수정</a>
                    </p>
                </form>
                <p class="find">
                    <span><a href="mypage.html" >취소</a></span>
                    <!-- 취소 -->


                    <!-- 회원탈퇴 -->
                    <label>
						<p>
							<a href="회원탈퇴.html" type="submit" class="btn1">회원탈퇴</a>
						</p>
			</label>

                    </label>
            </div>
            <div>
            </div>


            <!--===============================================================================================-->
            <script type="text/javascript " src="vendor/jquery/jquery-3.2.1.min.js "></script>
            <!--===============================================================================================-->
            <script type="text/javascript " src="vendor/animsition/js/animsition.min.js "></script>
            <!--===============================================================================================-->
            <script type="text/javascript " src="vendor/bootstrap/js/popper.js "></script>
            <script type="text/javascript " src="vendor/bootstrap/js/bootstrap.min.js "></script>
            <!--===============================================================================================-->
            <script type="text/javascript " src="vendor/select2/select2.min.js "></script>
            <!--===============================================================================================-->
            <script type="text/javascript " src="vendor/daterangepicker/moment.min.js "></script>
            <script type="text/javascript " src="vendor/daterangepicker/daterangepicker.js "></script>
            <!--===============================================================================================-->
            <script type="text/javascript " src="vendor/slick/slick.min.js "></script>
            <script type="text/javascript " src="js/slick-custom.js "></script>
            <!--===============================================================================================-->
            <script type="text/javascript " src="vendor/parallax100/parallax100.js "></script>
            <script type="text/javascript ">
                $('.parallax100').parallax100();
            </script>
            <!--===============================================================================================-->
            <script type="text/javascript " src="vendor/countdowntime/countdowntime.js "></script>
            <!--===============================================================================================-->
            <script type="text/javascript " src="vendor/lightbox2/js/lightbox.min.js "></script>
            <!--===============================================================================================-->
            <script src="js/main.js "></script>

</body>

</html>