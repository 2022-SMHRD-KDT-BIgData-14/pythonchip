<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    <%@page import="java.util.ArrayList"%>
<%@page import="com.pythonchip.model.StoreDTO"%>
<%@page import="com.pythonchip.model.StoreDAO"%>
    
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<!-- CSS only -->
<script type="text/javascript" src = "js/jquery-3.6.0.min.js"></script>
<link href="https://cdn.jsdelivr.net/npm/bootstrap@5.2.0/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-gH2yIJqKdNHPEq0n4Mqa/HGKIhSkIHeL5AyhkYV8i59U5AR6csBvApHHNl/vI1Bx" crossorigin="anonymous">
<style>
#table{
margin: 55px;
padding-left: 55px;
padding-right: 55px;

}
body{
margin-top: 40px;
text-align: center;
}
</style>
</head>
<body>
<form onsubmit="return false;">
<select name="job" id ="searchSelector">
    <option value="name" selected>가게 이름</option>
    <option value="location">위치</option>
    <option value="menu">메뉴</option>
</select>

<input type="text" size="66em" id="searchinput">
<button id = "searchButton">검색</button>
</form>
<br><br>
<% String[] keywordArr = {"식혜","흑염소","양갱","막걸리","인절미","말차","흑임자","쑥",
		"흑염소","한방","미숫가루","떡","달고나","전통차","팥"};%>
<% String[] btnClassArr = {"btn btn-outline-primary","btn btn-outline-secondary","btn btn-outline-success"
		,"btn btn-outline-danger","btn btn-outline-warning","btn btn-outline-info","btn btn-outline-light"};%>
<%
int cnt=0;
for(int i = 0; i<keywordArr.length; i++) {
if(btnClassArr.length-1 <= cnt) {cnt = 0;
%><br><%}%>
<button type="button" class="<%="keywordBtn "+ btnClassArr[cnt++]%>"><%=keywordArr[i]%></button>
<%}%>
<div class="row row-cols-1 row-cols-md-3 g-4" id="table">

<%
ArrayList<StoreDTO> arr =  new StoreDAO().getStoreList();

for(int i=0;i<arr.size();i++){%>

  <div class="col">
    <div class="card">
      <img src="https://www.coffeebeankorea.com/data/menu/%EC%BD%9C%EB%93%9C%EB%B8%8C%EB%A3%A815_1.jpg" class="card-img-top" alt="...">
      <div class="card-body">
        <h5 class="card-title"><%=arr.get(i).getStore_name() %></h5>
        <p class="card-text"> 주소 : <%=arr.get(i).getLocation_dong() %><%=arr.get(i).getLocation_gu() %></p>
        <p class="card-text"> tel : <%=arr.get(i).getStore_tel()%></p>
      </div>
    </div>
  </div>

<%} %>
</div>


<script type="text/javascript" src = "ajax/SearchStoreAjax.js"></script>
</body>
</html>