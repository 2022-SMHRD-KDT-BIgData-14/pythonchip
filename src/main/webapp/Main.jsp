<%@page import="com.pythonchip.model.MemberDTO"%>
<%@page import="java.util.ArrayList"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<title>Forty by HTML5 UP</title>
<meta charset="utf-8" />
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<!--[if lte IE 8]><script src="assets/js/ie/html5shiv.js"></script><![endif]-->
<link rel="stylesheet" href="assets/css/main.css" />
<!--[if lte IE 9]><link rel="stylesheet" href="assets/css/ie9.css" /><![endif]-->
<!--[if lte IE 8]><link rel="stylesheet" href="assets/css/ie8.css" /><![endif]-->
</head>
<body>
	<% MemberDTO info = (MemberDTO)session.getAttribute("info"); %>
	<!-- Wrapper -->
	<div id="wrapper">

		<!-- Header -->
		<header id="header" class="alt"> <a href="index.html"
			class="logo"><strong>Forty</strong> <span>by HTML5 UP</span></a> <nav>
		<!-- Q6. 로그인을 한 상태에서는 로그인탭 대신 로그아웃탭과 개인정보수정탭을 출력 --> 
		<% if(info != null) { %>
		<%if(info.getId().equals("admin")){%>
		<a href="./ShowMember.jsp">회원정보관리</a>
		<%} %> 
		<a href="./UpdateMember.jsp">개인정보수정</a> 
		<a href="LogoutService.do">로그아웃</a> 
		<%} else {%> 
		<a href="#menu">로그인</a> 
		<%} %>
		</nav> </header>

		<!-- Menu -->
		<nav id="menu">
		<ul class="actions vertical">

			<h5>로그인</h5>
			<form action="LoginService.do" method="post">
				<div>
					<input type="text" name="id" placeholder="아이디">
				</div>
				<div>
					<input type="password" name="pw" placeholder="비밀번호">
				</div>
				<div>
					<input type="submit" value="Login" class="button fit">
				</div>
			</form>
		</ul>

		<h5>회원가입</h5>
		<form action="JoinService.do" method="post">
			<div>
				<input type="text" placeholder="아이디" name="id" maxlength="20">
			</div>
			<div>
				<input type="password" placeholder="비밀번호" name="pw" maxlength="20">
			</div>
			<div>
				<label> <input type="radio" name="gender" autocomplete="off"
					value="남자" checked>남자
				</label> <label> <input type="radio" name="gender"
					autocomplete="off" value="여자" checked>여자
				</label>
			</div>
			<div>
				<input type="text" placeholder="전화번호" name="user_tel">
			</div>

			<div>
				<input type="text" placeholder="나이" name="age">
			</div>

			<div>
				<input type="submit" value="완료" class="button fit">
			</div>
		</form>
		</ul>
		</nav>
		<!-- Banner -->
		<section id="banner" class="major">
		<div class="inner">
			<header class="major"> <!-- Q4. 로그인 후 로그인한 사용자의 아이디로 바꾸기 -->
			<!-- ex) smhrd님 환영합니다.  --> <% if(info != null){%>
			<h1><%= info.getId() %>님 환영합니다.
			</h1>
			<%}else{ %>
			<h1>로그인 한 세션아이디를 출력해주세요</h1>
			<%} %> </header>
			<div class="content">
				<p>
					게시판을 이용해보세요 ^^<br>
				</p>
				<ul class="actions">
					<li><a href="BoardMain.jsp" class="button next scrolly">게시판
							바로가기</a></li>
				</ul>
			</div>
		</div>
		</section>

		<!-- Main -->
		<div id="main">

			<!-- One -->
			<section id="one" class="tiles"> <article> <span
				class="image"> <img src="images/pic01.jpg" alt="" />
			</span> <header class="major">
			<h3>
				<a href="#" class="link">HTML</a>
			</h3>
			<p>홈페이지를 만드는 기초 언어</p>
			</header> </article> <article> <span class="image"> <img
				src="images/pic02.jpg" alt="" />
			</span> <header class="major">
			<h3>
				<a href="#" class="link">CSS</a>
			</h3>
			<p>HTML을 디자인해주는 언어</p>
			</header> </article> <article> <span class="image"> <img
				src="images/pic03.jpg" alt="" />
			</span> <header class="major">
			<h3>
				<a href="#" class="link">Servlet/JSP</a>
			</h3>
			<p>Java를 기본으로 한 웹 프로그래밍 언어/스크립트 언어</p>
			</header> </article> <article> <span class="image"> <img
				src="images/pic04.jpg" alt="" />
			</span> <header class="major">
			<h3>
				<a href="#" class="link">JavaScript</a>
			</h3>
			<p>HTML에 기본적인 로직을 정의할 수 있는 언어</p>
			</header> </article> <article> <span class="image"> <img
				src="images/pic05.jpg" alt="" />
			</span> <header class="major">
			<h3>
				<a href="#" class="link">MVC</a>
			</h3>
			<p>웹 프로젝트 중 가장 많이 사용하는 디자인패턴</p>
			</header> </article> <article> <span class="image"> <img
				src="images/pic06.jpg" alt="" />
			</span> <header class="major">
			<h3>
				<a href="#" class="link">Web Project</a>
			</h3>
			<p>여러분의 최종프로젝트에 웹 기술을 활용하세요!</p>
			</header> </article> </section>
			<!-- Two -->
	

			<section class="split"> <section>
			<div class="contact-method">
				<span class="icon alt fa-envelope"></span>
				<h3>Email</h3>
				<%  if(info != null){  %>
				<a href="#"><%=info.getId() %></a>
				<%} else { %>
				<a href="#">로그인 한 사람의 이메일을 출력</a>
				<%} %>
				<!-- Q5. 로그인 한 사용자의 이메일을 출력 -->
			</div>
			</section> <section>
			<div class="contact-method">
				<span class="icon alt fa-phone"></span>
				<h3>Phone</h3>
				<!-- Q5. 로그인 한 사용자의 전화번호를 출력 -->
				<% if(info != null) {%>
				<span><%=info.getUser_tel() %></span>
				<%} else { %>
				<span>로그인 한 사람의 전화번호를 출력</span>
				<% } %>
			</div>
			</section> <section>
			<div class="contact-method">
				<span class="icon alt fa-home"></span>
				<h3>Address</h3>
				<!-- Q5. 로그인 한 사용자의 집주소를 출력 -->
				<% if(info != null){ %>
				<a></a>
				<% }else{%>
				<span>로그인 한 사람의 집주소를 출력</span>
				<%} %>
			</div>
			</section> </section>
		</div>
		</section>

		<!-- Footer -->
		<footer id="footer">
		<div class="inner">
			<ul class="icons">
				<li><a href="#" class="icon alt fa-twitter"><span
						class="label">Twitter</span></a></li>
				<li><a href="#" class="icon alt fa-facebook"><span
						class="label">Facebook</span></a></li>
				<li><a href="#" class="icon alt fa-instagram"><span
						class="label">Instagram</span></a></li>
				<li><a href="#" class="icon alt fa-github"><span
						class="label">GitHub</span></a></li>
				<li><a href="#" class="icon alt fa-linkedin"><span
						class="label">LinkedIn</span></a></li>
			</ul>
			<ul class="copyright">
				<li>&copy; Untitled</li>
				<li>Design: <a href="https://html5up.net">HTML5 UP</a></li>
			</ul>
		</div>
		</footer>

	</div>

	<!-- Scripts -->
	<script src="assets/js/jquery.min.js"></script>
	<script src="assets/js/jquery.scrolly.min.js"></script>
	<script src="assets/js/jquery.scrollex.min.js"></script>
	<script src="assets/js/skel.min.js"></script>
	<script src="assets/js/util.js"></script>
	<!--[if lte IE 8]><script src="assets/js/ie/respond.min.js"></script><![endif]-->
	<script src="assets/js/main.js"></script>

</body>
</html>

