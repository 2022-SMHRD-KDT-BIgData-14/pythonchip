
<%@page import="java.util.ArrayList"%>
<%@page import="com.pythonchip.model.StoreDTO"%>
<%@page import="com.pythonchip.model.StoreDAO"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!-- 회원가입 수정 -->

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
                            <a href="mypage.html" class="txt19">my page</a>
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
    <section class="bg-title-page flex-c-m p-t-160 p-b-80 p-l-15 p-r-15" style="background-image: url(images/111.png);">
        <h2 class="tit6 t-center">
            my page
        </h2>
    </section>



    <!-- 회원정보 수정 창 -->
    <section class="section-contact bg1-pattern p-t-17 p-b-113">
        <div class="container">
            <div class="row my-3 my-md-5 overflow-hidden">
                <div class="col-12 col-sm-6 col-lg-3 text-center mb-4 mb-lg-0 wow fadeInDown" data-wow-delay=".4s" data-wow-duration="1.5s" style="visibility: visible; animation-duration: 1.5s; animation-delay: 0.4s; animation-name: fadeInDown;">
                    <span class="fables-iconbussiness fables-second-text-color fa-3x"></span>
                    <h2 class="fables-main-text-color font-18 my-2">회원정보</h2>
                    <p class="fables-forth-text-color font-15">
                        <a href="회원가입수정.html">회원정보수정</a>
                    </p>
                    <p class="fables-forth-text-color font-15">
                        <a href="회원탈퇴.html">회원탈퇴</a>
                    </p>
                </div>
                <div class="col-12 col-sm-6 col-lg-3 text-center mb-4 mb-lg-0 wow fadeInDown" data-wow-delay=".8s" data-wow-duration="1.5s" style="visibility: visible; animation-duration: 1.5s; animation-delay: 0.8s; animation-name: fadeInDown;">
                    <span class="fables-iconbussiness2 fables-second-text-color fa-3x"></span>
                    <h2 class="fables-main-text-color font-18 my-2">내가 쓴 리뷰</h2>
                    <p class="fables-forth-text-color font-15">
                        회원님이 쓴 리뷰를 보실 수 있는 공간입니다.
                    </p>
                </div>
                <div class="col-12 col-sm-6 col-lg-3 text-center mb-4 mb-lg-0 wow fadeInDown" data-wow-delay="1.2s" data-wow-duration="1.5s" style="visibility: visible; animation-duration: 1.5s; animation-delay: 1.2s; animation-name: fadeInDown;">
                    <span class="fables-iconbussiness3 fables-second-text-color fa-3x"></span>
                    <h2 class="fables-main-text-color font-18 my-2">내가 쓴 게시판 글</h2>
                    <p class="fables-forth-text-color font-15">
                        회원님이 쓴 게시판 글을 보실 수 있는 공간입니다.
                    </p>
                </div>
                <div class="col-12 col-sm-6 col-lg-3 text-center mb-4 mb-lg-0 wow fadeInDown" data-wow-delay="1.6s" data-wow-duration="1.5s" style="visibility: visible; animation-duration: 1.5s; animation-delay: 1.6s; animation-name: fadeInDown;">
                    <span class="fables-iconbussiness4 fables-second-text-color fa-3x"></span>
                    <h2 class="fables-main-text-color font-18 my-2">공지사항</h2>
                    <p class="fables-forth-text-color font-15">
                        공지사항을 보실 수 있는 공간입니다.
                </div>
            </div>

        </div>

    </section>



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
    <script src="js/main.js"></script>

</body>

</html>