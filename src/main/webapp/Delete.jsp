<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
<form action="DeleteService.do">
	<input type = "hidden" name="id" value="<%=request.getParameter("id")%>">
	비밀번호 : <input type = "password" name = "pw"><br>
	<input type="submit" value="삭제하기">
</form>
</body>
</html>