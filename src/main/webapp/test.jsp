<%@page import="com.pythonchip.model.UpdateStoreViewDO"%>
<%@page import="com.pythonchip.model.MemberDTO"%>
<%@page import="java.util.ArrayList"%>
<%@page import="java.math.BigDecimal"%>
<%@page import="com.pythonchip.model.StoreViewDTO"%>
<%@page import="com.pythonchip.model.StoreViewDAO"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>

<script src="https://cdnjs.cloudflare.com/ajax/libs/Chart.js/2.5.0/Chart.min.js"></script>
<%
//parameter에서 store_seq 가져옴
String store_seq = request.getParameter("store_seq");
//store_seq가 null인경우 404
BigDecimal id = new BigDecimal(store_seq);
StoreViewDTO dto = null;

//해당 가게 조회수 테이블 조회 
dto = new StoreViewDAO().getViewStore(id);
if(dto == null){
	//해당 가게의 조회수 테이블이 생성된적 없으면 생성후 다시 조회함.
	//잘못된 가게 번호라면 생성조차 되지 못하고 404 페이지(에러 페이지)넘어감
	new StoreViewDAO().insertStoreView(id);
	dto =  new StoreViewDAO().getViewStore(id);
}

//					=조회수 늘리기 로직=
MemberDTO info = (MemberDTO)session.getAttribute("info");
ArrayList<String> view = (ArrayList)session.getAttribute("view");
Cookie[] cookies = request.getCookies();
//세션이 생성된 적이 없다면 세션 생성

//세션 조회 내역 체크
	System.out.println("=======쿠키 조회=========");
boolean viewFlag = false;
for(Cookie cookie :cookies){
	System.out.println(cookie.getName());
	if(cookie.getName().equals(store_seq)){
		viewFlag = true;
	}
}	System.out.println("=======================");

//1. 로그인 상태일 경우와 세션 체크 후 해당 가게를 조회 한 적 없으면 실행 
if(info != null && viewFlag == false)
//2. 회원의 나이, 성별을 가져와 해당 [가게 조회수 테이블]의 해당 컬럼 데이터의 숫자를 +1 시켜줌 
{
	System.out.println("조회수 증가 로직 : "+store_seq);
	new StoreViewDAO().updateStoreView(new UpdateStoreViewDO("age10","woman",store_seq));
	response.addCookie(new Cookie(store_seq,""));
	dto =  new StoreViewDAO().getViewStore(id);
}
//3. 끗
%>
<div width="300" height="230">
<canvas id="bar-chart" width="300" height="230"></canvas>
</div>
<h1><%=dto.getAge10()%></h1>
<h1><%=dto.getAge20()%></h1>
<h1><%=dto.getAge30()%></h1>
<h1><%=dto.getAge40()%></h1>
<h1><%=dto.getAge50()%></h1>
<h1><%=dto.getAge60()%></h1>
<h1><%=dto.getMan()%></h1>
<h1><%=dto.getWoman()%></h1>

<script>
new Chart(document.getElementById("bar-chart"), {
    type: 'bar',
    data: {
      labels: ["10대", "20대", "30대", "40대", "50대","60대+"],
      datasets: [
        {
          label: "라벨",
          backgroundColor: ["#3e95cd", "#8e5ea2","#3cba9f","#e8c3b9","#c45850","#c12350"],
          data: [2478,5267,734,784,433,154]
        }
      ]
    },
    options: {
      legend: { display: false },
      title: {
        display: true,
        text: '타이틀 여따가 넣게요'
      }
    }
});
</script>

</body>
</html>