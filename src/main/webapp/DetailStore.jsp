
<%@page import="com.pythonchip.model.MemberDTO"%>
<%@page import="com.pythonchip.model.ReviewDAO"%>
<%@page import="com.pythonchip.model.ReviewDTO"%>
<%@page import="java.util.ArrayList"%>
<%@page import="com.pythonchip.model.StoreDTO"%>
<%@page import="com.pythonchip.model.StoreDAO"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en">
<head>
<title>Blog Detail</title>
<style>
#list {
	width: 100%;
	text-align: center;
	font-family: Montserrat;
}

#tr1 {
	font-weight: bold;
	text-align: center;
	font-family: Montserrat;
}

#tr2 {
	text-align: center;
	font-family: Montserrat;
}

#submit{
	text-align: right;
	font-family: Montserrat;
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
<body class="animsition">
	<%
	MemberDTO info = (MemberDTO) session.getAttribute("info");
	%>
	
	<%
	// 게시글을 식별할 수 있는 고유한 번호
	String seq =request.getParameter("store_seq");
	System.out.println(seq);
	
	StoreDTO dto = new StoreDAO().getStoreOne(seq);
	%>
	
	<!-- Header -->
	<header>
		<!-- Header desktop -->
		<div class="wrap-menu-header gradient1 trans-0-4">
			<div class="container h-full">
				<div class="wrap_header trans-0-3">
					<!-- Logo -->
					<div class="logo">
						<a href="index.html"> <img src="images/logo2.png"
							alt="IMG-LOGO" data-logofixed="images/logo2.png">
						</a>
					</div>

					<!-- Menu -->
					<div class="wrap_menu p-l-45 p-l-0-xl">
						<nav class="menu">
							<ul class="main_menu">
								<li><a href="index.html">Home</a></li>

								<li><a href="menu.html">Menu</a></li>

								<li><a href="reservation.html">Reservation</a></li>

								<li><a href="gallery.html">Gallery</a></li>

								<li><a href="about.html">About</a></li>

								<li><a href="blog.html">Blog</a></li>

								<li><a href="contact.html">Contact</a></li>
							</ul>
						</nav>
					</div>

					<!-- Social -->
					<div class="social flex-w flex-l-m p-r-20">
						<a href="#"><i class="fa fa-tripadvisor" aria-hidden="true"></i></a>
						<a href="#"><i class="fa fa-facebook m-l-21"
							aria-hidden="true"></i></a> <a href="#"><i
							class="fa fa-twitter m-l-21" aria-hidden="true"></i></a>

						<button class="btn-show-sidebar m-l-33 trans-0-4"></button>
					</div>
				</div>
			</div>
		</div>
	</header>

	<!-- Sidebar -->
	<aside class="sidebar trans-0-4">
		<!-- Button Hide sidebar -->
		<button class="btn-hide-sidebar ti-close color0-hov trans-0-4"></button>

		<!-- - -->
		<ul class="menu-sidebar p-t-95 p-b-70">
			<li class="t-center m-b-13"><a href="index.html" class="txt19">Home</a>
			</li>

			<li class="t-center m-b-13"><a href="menu.html" class="txt19">Menu</a>
			</li>

			<li class="t-center m-b-13"><a href="gallery.html" class="txt19">Gallery</a>
			</li>

			<li class="t-center m-b-13"><a href="about.html" class="txt19">About</a>
			</li>

			<li class="t-center m-b-13"><a href="blog.html" class="txt19">Blog</a>
			</li>

			<li class="t-center m-b-33"><a href="contact.html" class="txt19">Contact</a>
			</li>

			<li class="t-center">
				<!-- Button3 --> <a href="reservation.html"
				class="btn3 flex-c-m size13 txt11 trans-0-4 m-l-r-auto">
					Reservation </a>
			</li>
		</ul>

		<!-- - -->
		<div class="gallery-sidebar t-center p-l-60 p-r-60 p-b-40">
			<!-- - -->
			<h4 class="txt20 m-b-33">Gallery</h4>

			<!-- Gallery -->
			<div class="wrap-gallery-sidebar flex-w">
				<a class="item-gallery-sidebar wrap-pic-w"
					href="images/photo-gallery-01.jpg" data-lightbox="gallery-footer">
					<img src="images/photo-gallery-thumb-01.jpg" alt="GALLERY">
				</a> <a class="item-gallery-sidebar wrap-pic-w"
					href="images/photo-gallery-02.jpg" data-lightbox="gallery-footer">
					<img src="images/photo-gallery-thumb-02.jpg" alt="GALLERY">
				</a> <a class="item-gallery-sidebar wrap-pic-w"
					href="images/photo-gallery-03.jpg" data-lightbox="gallery-footer">
					<img src="images/photo-gallery-thumb-03.jpg" alt="GALLERY">
				</a> <a class="item-gallery-sidebar wrap-pic-w"
					href="images/photo-gallery-05.jpg" data-lightbox="gallery-footer">
					<img src="images/photo-gallery-thumb-05.jpg" alt="GALLERY">
				</a> <a class="item-gallery-sidebar wrap-pic-w"
					href="images/photo-gallery-06.jpg" data-lightbox="gallery-footer">
					<img src="images/photo-gallery-thumb-06.jpg" alt="GALLERY">
				</a> <a class="item-gallery-sidebar wrap-pic-w"
					href="images/photo-gallery-07.jpg" data-lightbox="gallery-footer">
					<img src="images/photo-gallery-thumb-07.jpg" alt="GALLERY">
				</a> <a class="item-gallery-sidebar wrap-pic-w"
					href="images/photo-gallery-09.jpg" data-lightbox="gallery-footer">
					<img src="images/photo-gallery-thumb-09.jpg" alt="GALLERY">
				</a> <a class="item-gallery-sidebar wrap-pic-w"
					href="images/photo-gallery-10.jpg" data-lightbox="gallery-footer">
					<img src="images/photo-gallery-thumb-10.jpg" alt="GALLERY">
				</a> <a class="item-gallery-sidebar wrap-pic-w"
					href="images/photo-gallery-11.jpg" data-lightbox="gallery-footer">
					<img src="images/photo-gallery-thumb-11.jpg" alt="GALLERY">
				</a>
			</div>
		</div>
	</aside>


	<!-- Title Page -->
	<section class="bg-title-page flex-c-m p-t-160 p-b-80 p-l-15 p-r-15"
		style="background-image: url(images/bg-title-page-03.jpg);">
		<h2 class="tit6 t-center">STORE DETAIL</h2>
	</section>


	<!-- Content page -->
	<section>
		<div class="bread-crumb bo5-b p-t-17 p-b-17">
			<div class="container">
				<a href="index.html" class="txt27"> Home </a> <span
					class="txt29 m-l-10 m-r-10">/</span> <a href="blog.html"
					class="txt27"> Blog </a> <span class="txt29 m-l-10 m-r-10">/</span>

				<span class="txt29"> Cooking recipe delicious </span>
			</div>
		</div>

		<div class="container">
			<br>
			<div class="col-md-8 col-lg-9">
				<div class="p-t-80 p-b-124 bo5-r p-r-50 h-full p-r-0-md bo-none-md">
					<!-- Block4 -->
					<div class="blo4 p-b-63">
						<div class="text-blo4 p-t-33">
							<h2 class="p-b-16">
								<a class="tit9"><%=dto.getStore_name()%></a>
							</h2>
							<div class="txt32 flex-w p-b-24">
								<span> <%=dto.getLocation_gu()%> <span
									class="m-r-6 m-l-4">|</span>
								</span> <span> <%=dto.getLocation_dong()%> <span
									class="m-r-6 m-l-4">|</span>
								</span> <span> ★ <%=dto.getStore_grade()%> <span
									class="m-r-6 m-l-4">|</span>
								</span> <span> <%=dto.getStore_tel()%>
								</span>
							</div>
						</div>
						<div class="pic-blo4 hov-img-zoom bo-rad-10 pos-relative">
							<a href="blog-detail.html"> <img src="images/blog-05.jpg"
								alt="IMG-BLOG">
							</a>
							<!-- - -->
							<br> <br> <br> <br> <br> <br>



							<div>
								<h4><%=dto.getStore_name()%>
									후기
								</h4>
							</div>
							<br>
							<%
							ArrayList<ReviewDTO> review_list = new ReviewDAO().showReview(dto.getStore_seq());
							%>
							<div id="review">
								<table id="list" border=3>
									<tr id=tr1>
										<td>번호</td>
										<td>id</td>
										<td>별점</td>
										<td >review</td>
									</tr>

									<tr>
										<%
										int i = 0;
										for (i = 0; i < review_list.size(); i++) {
										%>
										<td><%=i + 1%></td>
										<td><%=review_list.get(i).getId()%></td>
										<td><%=review_list.get(i).getGrade()%></td>
										<td ><%=review_list.get(i).getRev_content()%></td>
									</tr>
									<%
									}
									%>
									<li>
										<!--  로그인했을때만 후기 작성 가능 --> <%
										 if (info != null) {
										 %>
										<form action="ReviewService.do" method="post">
											<tr id=tr2>
												<td><%=i + 1%></td>
												<td>
												<input type="hidden" name="id" value=<%=info.getId() %>><%=info.getId() %>
												<input type="hidden" name="store_seq" value=<%=dto.getStore_seq().toString()%>>
												</td>
												<td><input type="text" onkeypress="checkNumber();" placeholder="별점을 입력해주세요" name="grade"></td>
												<td><input type="text" placeholder="내용을 입력해주세요" name="rev_content"><input id=submit type="submit" value="작성하기"></td>
											</tr>
										</form> <%
 }
 %>
									
								</table>

							</div>



							<br> <br> <br> <br> <br> <br>




							<div>
								<h4><%=dto.getStore_name()%>
									위치
								</h4>
							</div>
							<br>
							<div id="map" style="width: 100%; height: 350px;"></div>
							<script type="text/javascript"
								src="//dapi.kakao.com/v2/maps/sdk.js?appkey=2f8c752aae632b4c611274927d3bbb6a"></script>
							<script>
								    <!-- 지도 만들어주기 -->
									var mapContainer = document
											.getElementById('map'), // 지도를 표시할 div 
									mapOption = {
										center : new kakao.maps.LatLng(
												<%=dto.getStore_x()%>,<%=dto.getStore_y()%>), // 지도의 중심좌표
										level : 3
									// 지도의 확대 레벨
									};

									var map = new kakao.maps.Map(mapContainer,
											mapOption); // 지도를 생성합니다

									<!-- 사용자 컨트롤 만들기 -->
									// 일반 지도와 스카이뷰로 지도 타입을 전환할 수 있는 지도타입 컨트롤을 생성합니다
									var mapTypeControl = new kakao.maps.MapTypeControl();

									// 지도에 컨트롤을 추가해야 지도위에 표시됩니다
									// kakao.maps.ControlPosition은 컨트롤이 표시될 위치를 정의하는데 TOPRIGHT는 오른쪽 위를 의미합니다
									map
											.addControl(
													mapTypeControl,
													kakao.maps.ControlPosition.TOPRIGHT);

									// 지도 확대 축소를 제어할 수 있는  줌 컨트롤을 생성합니다
									var zoomControl = new kakao.maps.ZoomControl();
									map.addControl(zoomControl,
											kakao.maps.ControlPosition.RIGHT);
									
									<!-- 마커 만들기 -->
									// 마커가 표시될 위치입니다 
									var markerPosition  = new kakao.maps.LatLng(<%=dto.getStore_x()%>,<%=dto.getStore_y()%>); 

									// 마커를 생성합니다
									var marker = new kakao.maps.Marker({
									    position: markerPosition
									});

									// 마커가 지도 위에 표시되도록 설정합니다
									marker.setMap(map);
								</script>

						</div>
					</div>

					<!-- Leave a comment -->
					<form class="leave-comment p-t-10">
						<h4 class="txt33 p-b-14">Reservation</h4>

						<p>가게 예약을 원하신다면 정보를 입력해주세요 *</p>

						<textarea
							class="bo-rad-10 size29 bo2 txt10 p-l-20 p-t-15 m-b-10 m-t-40"
							name="commentent" placeholder="Comment..."></textarea>

						<div class="size30 bo2 bo-rad-10 m-t-3 m-b-20">
							<input class="bo-rad-10 sizefull txt10 p-l-20" type="text"
								name="name" placeholder="예약자 성함 *">
						</div>

						<div class="size30 bo2 bo-rad-10 m-t-3 m-b-20">
							<input class="bo-rad-10 sizefull txt10 p-l-20" type="text"
								name="email" placeholder="예약 일시 * ex) 2022-00-00">
						</div>

						<div class="size30 bo2 bo-rad-10 m-t-3 m-b-30">
							<input class="bo-rad-10 sizefull txt10 p-l-20" type="text"
								name="website" placeholder="예약자 전화번호">
						</div>

						<!-- Button3 -->
						<button type="submit" class="btn3 flex-c-m size31 txt11 trans-0-4">예약</button>
					</form>
				</div>
			</div>


		</div>
	</section>


	<!-- Footer -->
	<footer class="bg1">
		<div class="container p-t-40 p-b-70">
			<div class="row">
				<div class="col-sm-6 col-md-4 p-t-50">
					<!-- - -->
					<h4 class="txt13 m-b-33">Contact Us</h4>

					<ul class="m-b-70">
						<li class="txt14 m-b-14"><i
							class="fa fa-map-marker fs-16 dis-inline-block size19"
							aria-hidden="true"></i> 8th floor, 379 Hudson St, New York, NY
							10018</li>

						<li class="txt14 m-b-14"><i
							class="fa fa-phone fs-16 dis-inline-block size19"
							aria-hidden="true"></i> (+1) 96 716 6879</li>

						<li class="txt14 m-b-14"><i
							class="fa fa-envelope fs-13 dis-inline-block size19"
							aria-hidden="true"></i> contact@site.com</li>
					</ul>

					<!-- - -->
					<h4 class="txt13 m-b-32">Opening Times</h4>

					<ul>
						<li class="txt14">09:30 AM – 11:00 PM</li>

						<li class="txt14">Every Day</li>
					</ul>
				</div>

				<div class="col-sm-6 col-md-4 p-t-50">
					<!-- - -->
					<h4 class="txt13 m-b-33">Latest twitter</h4>

					<div class="m-b-25">
						<span class="fs-13 color2 m-r-5"> <i class="fa fa-twitter"
							aria-hidden="true"></i>
						</span> <a href="#" class="txt15"> @colorlib </a>

						<p class="txt14 m-b-18">
							Activello is a good option. It has a slider built into that
							displays the featured image in the slider. <a href="#"
								class="txt15"> https://buff.ly/2zaSfAQ </a>
						</p>

						<span class="txt16"> 21 Dec 2017 </span>
					</div>

					<div>
						<span class="fs-13 color2 m-r-5"> <i class="fa fa-twitter"
							aria-hidden="true"></i>
						</span> <a href="#" class="txt15"> @colorlib </a>

						<p class="txt14 m-b-18">
							Activello is a good option. It has a slider built into that
							displays <a href="#" class="txt15"> https://buff.ly/2zaSfAQ </a>
						</p>

						<span class="txt16"> 21 Dec 2017 </span>
					</div>
				</div>

				<div class="col-sm-6 col-md-4 p-t-50">
					<!-- - -->
					<h4 class="txt13 m-b-38">Gallery</h4>

					<!-- Gallery footer -->
					<div class="wrap-gallery-footer flex-w">
						<a class="item-gallery-footer wrap-pic-w"
							href="images/photo-gallery-01.jpg" data-lightbox="gallery-footer">
							<img src="images/photo-gallery-thumb-01.jpg" alt="GALLERY">
						</a> <a class="item-gallery-footer wrap-pic-w"
							href="images/photo-gallery-02.jpg" data-lightbox="gallery-footer">
							<img src="images/photo-gallery-thumb-02.jpg" alt="GALLERY">
						</a> <a class="item-gallery-footer wrap-pic-w"
							href="images/photo-gallery-03.jpg" data-lightbox="gallery-footer">
							<img src="images/photo-gallery-thumb-03.jpg" alt="GALLERY">
						</a> <a class="item-gallery-footer wrap-pic-w"
							href="images/photo-gallery-04.jpg" data-lightbox="gallery-footer">
							<img src="images/photo-gallery-thumb-04.jpg" alt="GALLERY">
						</a> <a class="item-gallery-footer wrap-pic-w"
							href="images/photo-gallery-05.jpg" data-lightbox="gallery-footer">
							<img src="images/photo-gallery-thumb-05.jpg" alt="GALLERY">
						</a> <a class="item-gallery-footer wrap-pic-w"
							href="images/photo-gallery-06.jpg" data-lightbox="gallery-footer">
							<img src="images/photo-gallery-thumb-06.jpg" alt="GALLERY">
						</a> <a class="item-gallery-footer wrap-pic-w"
							href="images/photo-gallery-07.jpg" data-lightbox="gallery-footer">
							<img src="images/photo-gallery-thumb-07.jpg" alt="GALLERY">
						</a> <a class="item-gallery-footer wrap-pic-w"
							href="images/photo-gallery-08.jpg" data-lightbox="gallery-footer">
							<img src="images/photo-gallery-thumb-08.jpg" alt="GALLERY">
						</a> <a class="item-gallery-footer wrap-pic-w"
							href="images/photo-gallery-09.jpg" data-lightbox="gallery-footer">
							<img src="images/photo-gallery-thumb-09.jpg" alt="GALLERY">
						</a> <a class="item-gallery-footer wrap-pic-w"
							href="images/photo-gallery-10.jpg" data-lightbox="gallery-footer">
							<img src="images/photo-gallery-thumb-10.jpg" alt="GALLERY">
						</a> <a class="item-gallery-footer wrap-pic-w"
							href="images/photo-gallery-11.jpg" data-lightbox="gallery-footer">
							<img src="images/photo-gallery-thumb-11.jpg" alt="GALLERY">
						</a> <a class="item-gallery-footer wrap-pic-w"
							href="images/photo-gallery-12.jpg" data-lightbox="gallery-footer">
							<img src="images/photo-gallery-thumb-12.jpg" alt="GALLERY">
						</a>
					</div>

				</div>
			</div>
		</div>

		<div class="end-footer bg2">
			<div class="container">
				<div class="flex-sb-m flex-w p-t-22 p-b-22">
					<div class="p-t-5 p-b-5">
						<a href="#" class="fs-15 c-white"><i class="fa fa-tripadvisor"
							aria-hidden="true"></i></a> <a href="#" class="fs-15 c-white"><i
							class="fa fa-facebook m-l-18" aria-hidden="true"></i></a> <a href="#"
							class="fs-15 c-white"><i class="fa fa-twitter m-l-18"
							aria-hidden="true"></i></a>
					</div>

					<div class="txt17 p-r-20 p-t-5 p-b-5">
						Copyright &copy; 2018 All rights reserved | This template is made
						with <i class="fa fa-heart"></i> by <a href="https://colorlib.com"
							target="_blank">Colorlib</a>
					</div>
				</div>
			</div>
		</div>
	</footer>


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
