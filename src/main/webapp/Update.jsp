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
<h2> 회원정보수정 </h2>
<fieldset>
	<form action="updateService.do" method="post">
	<ul class="actions vertical">
	<% MemberDTO info = (MemberDTO)session.getAttribute("info"); %>	
		<li>아이디 : <input type="text" name="id" value="<%info.getId(); %>"><br>
		비밀번호 : <input type="password" name="pw" placeholder="비밀번호를 입력하시오."><br>
		성별 : <input type="radio" name="gender" value="남" 
			  <%if(info.getGender().equals("남")){ %>
			  checked
			  <%} %>
			  >남
			  <input type="radio" name="gender" value="여" 
			  <%if(info.getGender().equals("여")){ %>
			  checked
			  <%} %>
			  >여  
		나이 : <input type="text" name="age" value="<%info.getAge(); %>"><br>
		전화번호 : <input type="text" name="user_tel" value="<%info.getUser_tel(); %>">
		<input type="submit" value="회원수정">
		<input type="reset" value="초기화">
		
		
	</form>
	</ul>
	
</fieldset>
		
		


</body>
</html>