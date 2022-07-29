<%@page import="java.util.ArrayList"%>
<%@page import="com.pythonchip.model.StoreDTO"%>
<%@page import="com.pythonchip.model.StoreDAO"%>
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
	String id = request.getParameter("id");
	if (id == null)
		id = "9";
	StoreDTO dto = new StoreDAO().getStoreOne(id);
	%>

	<br>
	<h3>
		가게 이름 :
		<%=dto.getStore_name()%></h3>
	<h3>
		가게 동 :
		<%=dto.getLocation_dong()%></h3>
	<h3>
		가게 구 :
		<%=dto.getLocation_gu()%></h3>
	<h3>
		가게 전화 번호 :
		<%=dto.getStore_tel()%></h3>

</body>
</html>