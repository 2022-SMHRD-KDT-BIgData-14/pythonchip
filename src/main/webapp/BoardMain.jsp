<%@page import="org.apache.ibatis.reflection.SystemMetaObject"%>
<%@page import="com.pythonchip.model.BoardDAO"%>
<%@page import="com.pythonchip.model.BoardDTO"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>

<%@page import="java.util.ArrayList"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
	<% ArrayList<BoardDTO> board_list = new BoardDAO().showBoard(); %>
	<div id="board">
		<table id="list">
<!-- 			<tr>
				<td>번호</td>
				<td>제목</td>
				<td>작성자</td>
				<td>시간</td>
			</tr> -->

			<tr>
				<% for(int i=0;i<board_list.size();i++){ %>
				<%-- <%=i+1%> --%>
				<%System.out.println(board_list.get(i).getNum()); %>
				<%System.out.println(board_list.get(i).getTitle()); %>
				<%System.out.println(board_list.get(i).getWriter()); %>
				<%System.out.println(board_list.get(i).getB_date().toString()); %>
				
				

				<td><img src="file/<%= board_list.get(i).getFilename()%>"> </td>
					<td><%= board_list.get(i).getTitle()%>
				</a></td>
				<td><%= board_list.get(i).getWriter()%></td>
				<td><%= board_list.get(i).getContent()%></td>
				<td><%= board_list.get(i).getB_date().toString()%></td>
			</tr>
			<%} %>
		</table>

		<a href="Main.jsp"><button id="writer">홈으로가기</button></a> <a
			href="BoardWrite.jsp"><button id="writer">작성하러가기</button></a>
	</div>
	
	

</body>
</html>