<%@page import="org.apache.ibatis.reflection.SystemMetaObject"%>
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
	<h2>회원정보수정</h2>
	<fieldset>
		<form action="updateService.do" method="post">
			<ul class="actions vertical">
				<%
				MemberDTO info = (MemberDTO)session.getAttribute("info");
				%>
				아이디 : <input type="text" name="id" value="<%=info.getId()%>"> <br> 
				비밀번호 : <input type="password" placeholder="비밀번호" name="pw" maxlength="20"><br>
				성별 : <label> <input type="radio" name="gender" autocomplete="off"
						value="남자" checked>남자
					</label> <label> <input type="radio" name="gender"
						autocomplete="off" value="여자" checked>여자
					</label><br>
				나이 : <input type="text" placeholder="나이" name="age"><br>
				전화번호 : <input type="text" placeholder="전화번호" name="user_tel"><br>
				<input type="submit" value="회원수정">
				<input type="reset" value="초기화">
		</form>
		</ul>

	</fieldset>




</body>
</html>