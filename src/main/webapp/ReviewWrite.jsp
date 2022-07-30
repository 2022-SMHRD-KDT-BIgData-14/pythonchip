<%@page import="java.util.ArrayList"%>
<%@page import="com.pythonchip.model.ReviewDAO"%>
<%@page import="com.pythonchip.model.ReviewDTO"%>

<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
 	<% ArrayList<ReviewDTO>review_list = new ReviewDAO().showReview(); %>
	<div id="review">
		<table id="list">
			<tr>
				<td></td>
				<td>한줄 리뷰</td>
				<td></td>
				<td>id</td>
				<td>별점</td>
			</tr>

			<tr>
				<% for(int i=0;i<review_list.size();i++){ %>
				<td><%= i+1%></td>
				<td><a> <%= review_list.get(i).getRev_content()%>
				</a></td>
				<td></td>
				<td><%= review_list.get(i).getId()%></td>
				<td><%= review_list.get(i).getGrade()%></td>
			</tr>
			<%} %>
		</table> 

	</div>
	<div id="board">
		<form action="ReviewService.do" method="post">
			<table id="list">
				<tr>
					<td><input type="text" name="rev_content"> 					
					<td><input type="text" name="grade">
					<input type="submit" value="작성하기"></td></td>
				</tr>

			</table>
		</form>
	</div>



</body>
</html>