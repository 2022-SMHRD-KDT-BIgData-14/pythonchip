<%@page import="com.pythonchip.model.MemberDTO"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
	<%
	MemberDTO info = (MemberDTO) session.getAttribute("info");
	%>
	<form action="DeleteService.do">
		<input type="hidden" name="id" value="<%=info.getId()%>">
		비밀번호 : <input type="password" name="pw"><br> 
		<input
			type="submit" value="삭제하기">
	</form>
</body>
</html>