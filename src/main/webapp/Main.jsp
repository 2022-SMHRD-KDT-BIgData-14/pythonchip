<%@page import="com.pythonchip.model.MemberDTO"%>
<%@page import="java.util.ArrayList"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta charset="utf-8" />
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<link rel="stylesheet" href="assets/css/main.css" />
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
	
		</section>

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

