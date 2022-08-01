<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
	<div>
		<form action="MenuService.do" method="post">
			
			<h1> 메뉴를 입력하세요</h1>
			<table>
				<tr>
					<td></td>
					<td>업체명</td>
					<td>메뉴명</td>
					<td>가격</td>
					<td>메뉴사진</td>
				</tr>

				<tr>
					<td>메뉴</td>
					<td><input type="text" name="store_name"></td>
					<td><input type="text" name="menu_name"></td>
					<td><input type="text" name="price"></td>
					<td><input type="file"></td>
				</tr>
			</table>
			<a href="Main.jsp"><button id="writer">등록하기</button></a> <input
				type="reset">
			</form>
	</div>
</body>
</html>