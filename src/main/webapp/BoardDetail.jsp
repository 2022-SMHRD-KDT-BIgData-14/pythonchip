<%@page import="com.pythonchip.model.BoardDAO"%>
<%@page import="com.pythonchip.model.BoardDTO"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>

<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Forty by HTML5 UP</title>
<title>Forty by HTML5 UP</title>
		<meta charset="utf-8" />
		<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
		<!--[if lte IE 8]><script src="assets/js/ie/html5shiv.js"></script><![endif]-->
		<link rel="stylesheet" href="assetsBoard/css/main.css" />
		<link rel="stylesheet" href="assetsBoard/css/board.css" />
		<!--[if lte IE 9]><link rel="stylesheet" href="assets/css/ie9.css" /><![endif]-->
		<!--[if lte IE 8]><link rel="stylesheet" href="assets/css/ie8.css" /><![endif]-->
</head>
<body>	
<%int num = Integer.parseInt(request.getParameter("num"));
			BoardDTO board = new BoardDAO().detailBoard(num);%>

	<div id="board">
		<table id="list">
			<tr>
				<td>제목</td>
				<td><%= board.getTitle() %></td>
			</tr>
			<tr>
				<td>작성자</td>
				<td><%= board.getWriter() %></td>
			</tr>
			<tr>
			</tr>

			<tr>
				<td colspan="2">내용</td>
			</tr>

			<tr>
				<td colspan="2"></td>
				<td><h3><%= board.getContent() %></h3></td>

			</tr>
			<tr>
				<td colspan="2"><a href="BoardMain.jsp"><button>뒤로가기</button></a></td>
			</tr>
		</table>
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