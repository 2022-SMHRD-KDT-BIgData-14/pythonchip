<!DOCTYPE html>
<%@page import="com.pythonchip.model.MemberDTO"%>
<%@page import="org.apache.ibatis.reflection.SystemMetaObject"%>
<%@page import="com.pythonchip.model.BoardDAO"%>
<%@page import="com.pythonchip.model.BoardDTO"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@page import="java.util.ArrayList"%>
<html lang="en">
<head>
<meta charset="UTF-8">
<title>Blog</title>
<meta charset="UTF-8">
<meta name="viewport" content="width=device-width, initial-scale=1">
<!--===============================================================================================-->
<link href="https://fonts.googleapis.com/css?family=Montserrat:400,700"
	rel="stylesheet">
<!--====================================================================================\===========-->
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
<style>
.blo4.p-b-63{
    margin-left: 650px;
} 

img{
    max-width: 1500px;
    max-height: 400px;}

</style>
<body class="animsition">
<%MemberDTO info = (MemberDTO) session.getAttribute("info");%>
	<!-- Header -->
	<header>
		<!-- Header desktop -->
		<div class="wrap-menu-header gradient1 trans-0-4">
			<div class="container h-full">
				<div class="wrap_header trans-0-3">
					<!-- 로고 -->
					<div class="logo">
						<a href="Home.jsp"> <img src="images/logo.png" alt="IMG-LOGO"
							data-logofixed="images/logo.png"></a> 
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
				<li class="t-center m-b-13"><a href="Home.jsp" class="txt19">로고</a>
				</li>
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




	<!-- Title Page -->
	<section class="bg-title-page flex-c-m p-t-160 p-b-80 p-l-15 p-r-15"
		style="background-image: url(images/bg-title-page-03.jpg);">
		<h2 class="tit6 t-center">comunity</h2>
	</section>


	<!-- Content page -->
	<section>
		<div class="bread-crumb bo5-b p-t-17 p-b-17">
			<div class="container">
				<a href="index.html" class="txt27"> Home </a> <span
					class="txt29 m-l-10 m-r-10">/</span> <span class="txt29">
					Blog 
				</span>
			</div>
		</div>

		
			<div class="row"></div>
			<% ArrayList<BoardDTO> board_list = new BoardDAO().showBoard(); %>
			<div id="board">
				<table id="list">
					<!-- 			<tr>
				<td>번호</td>
				<td>제목</td>
				<td>작성자</td>
				<td>시간</td>
			</tr> -->






					<tr>
						<% for(int i=0;i<board_list.size();i++){ %>
						<%-- <%=i+1%> --%>
<%-- 						<%System.out.println(board_list.get(i).getNum()); %>
						<%System.out.println(board_list.get(i).getTitle()); %>
						<%System.out.println(board_list.get(i).getWriter()); %>
						<%System.out.println(board_list.get(i).getB_date().toString()); %> --%>



<%-- 						<td><img src="file/<%= board_list.get(i).getFilename()%>">
						</td>
						<td><%= board_list.get(i).getTitle()%> </a></td>
						<td><%= board_list.get(i).getWriter()%></td>
						<td><%= board_list.get(i).getContent()%></td>
						<td><%= board_list.get(i).getB_date().toString()%></td> --%>
					</tr>
					
				</table>

<!-- 				<a href="Main.jsp"><button id="writer">홈으로가기</button></a> <a
					href="BoardWrite.jsp"><button id="writer">작성하러가기</button></a> -->
			</div>



<!-- 경계 --><!-- 경계 --><!-- 경계 --><!-- 경계 --><!-- 경계 --><!-- 경계 --><!-- 경계 --><!-- 경계 --><!-- 경계 --><!-- 경계 --><!-- 경계 --><!-- 경계 -->
			<div class="blo4 p-b-63" style="margin-left:260px; width:1200px;">
				<div class="pic-blo4 hov-img-zoom bo-rad-10 pos-relative">
					<a href="blog-detail.html"> 
						<img src="file/<%=board_list.get(i).getFilename()%>"
						alt="IMG-BLOG" style="width:1250px;" >
					</a>


				</div>

				<div class="text-blo4 p-t-33">
					<h4 class="p-b-16">
						<a href="blog-detail.html" class="tit9"><%=board_list.get(i).getTitle()%></a>
					</h4>

					<div class="txt32 flex-w p-b-24">
						<span> by <%=board_list.get(i).getWriter()%> <span
							class="m-r-6 m-l-4">|</span>
						</span> <span> <%=board_list.get(i).getB_date().toString()%> <span
							class="m-r-6 m-l-4">|</span>
						</span> <span> Cooking, Food <span class="m-r-6 m-l-4">|</span>
						</span> <span> 8 Comments </span>
					</div>

					<p>
						<%=board_list.get(i).getContent()%>
					</p>

					<!--                                 <a href="blog-detail.html" class="dis-block txt4 m-t-30">
									Continue Reading
									<i class="fa fa-long-arrow-right m-l-10" aria-hidden="true"></i>
								</a> -->
				</div>
			</div>
			<%
			}
			%>
			<!-- <a href="Main.jsp"><button id="writer">홈으로가기</button></a>  -->
			<%if (info != null) {%>
			<a href="BoardWrite.jsp"><button id="writer" style="width:1900px;">작성하러가기</button></a>
			<%}else {%>
			<a href="Login.jsp"><button id="writer">작성하러가기</button></a>
			<%
			}
			%>

			<!-- 경계 --><!-- 경계 --><!-- 경계 --><!-- 경계 --><!-- 경계 --><!-- 경계 --><!-- 경계 --><!-- 경계 --><!-- 경계 --><!-- 경계 --><!-- 경계 --><!-- 경계 -->


			<!-- 끝 -->
			<!-- Pagination -->
 			<div class="pagination flex-l-m flex-w m-l-530 p-t-25">
				<a href="#"
					class="item-pagination flex-c-m trans-0-4 active-pagination">1</a>
				<a href="#" class="item-pagination flex-c-m trans-0-4">2</a>
			</div>
		</div>
		</div>

<!-- 		<div class="col-md-4 col-lg-3">
			<div class="sidebar2 p-t-80 p-b-80 p-l-20 p-l-0-md p-t-0-md">
				Search
				<div class="search-sidebar2 size12 bo2 pos-relative">
					<input class="input-search-sidebar2 txt10 p-l-20 p-r-55"
						type="text" name="search" placeholder="Search">
					<button class="btn-search-sidebar2 flex-c-m ti-search trans-0-4"></button>
				</div> -->

				<!-- Categories -->
				

				
	</section>






	<!-- Back to top -->
	<div class="btn-back-to-top bg0-hov" id="myBtn">
		<span class="symbol-btn-back-to-top"> <i
			class="fa fa-angle-double-up" aria-hidden="true"></i>
		</span>
	</div>



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
	<script type="text/javascript" src="vendor/isotope/isotope.pkgd.min.js"></script>
	<!--===============================================================================================-->
	<script src="js/main.js"></script>






</body>
</html>