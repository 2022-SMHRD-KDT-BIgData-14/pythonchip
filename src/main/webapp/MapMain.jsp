<%@page import="java.lang.reflect.Array"%>
<%@page import="org.apache.ibatis.reflection.SystemMetaObject"%>
<%@page import="com.google.gson.Gson"%>
<%@page import="org.json.JSONArray"%>
<%@page import="com.pythonchip.model.StoreDAO"%>
<%@page import="com.pythonchip.model.StoreDTO"%>
<%@page import="java.util.ArrayList"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<script src="https://code.jquery.com/jquery-3.6.0.min.js"></script>
<style>
</style>
</head>
<body>
	<%
	ArrayList<StoreDTO> arr = new StoreDAO().getStoreList();
	Gson gson = new Gson();
	String json = gson.toJson(arr);
	System.out.println(json);
	%>

	<form>
		<!-- 1. 검색창 -->
		<input id=input type="text" maxlength="50"><br><br>

		<!-- 2. check box -->
		<span>흑임자</span> <input id=k1 type="checkbox" name="k1" value="흑임자">
		<span>쑥</span> <input id=k2 type="checkbox" name="keyword" value="쑥">
		<span>인절미</span> <input id=k3 type="checkbox" name="keyword"
			value="인절미"> <span>식혜</span> <input id=k4 type="checkbox"
			name="keyword" value="식혜"> <span>말차</span> <input id=k5
			type="checkbox" name="keyword" value="말차"><br> <span>미숫가루</span>
		<input id=k6 type="checkbox" name="keyword" value="미숫가루"> <span>누룽지</span>
		<input id=k7 type="checkbox" name="keyword" value="누룽지"> <span>달고나</span>
		<input id=k8 type="checkbox" name="keyword" value="달고나"> <span>팥</span>
		<input id=k9 type="checkbox" name="keyword" value="팥"> <span>떡</span><input
			id=k10 type="checkbox" name="keyword" value="떡"><br> <span>흑염소</span>
		<input id=k11 type="checkbox" name="keyword" value="흑염소"> <span>전통차</span>
		<input id=k12 type="checkbox" name="keyword" value="전통차"> <span>양갱</span>
		<input id=k13 type="checkbox" name="keyword" value="양갱"> <span>약과</span>
		<input id=k14 type="checkbox" name="keyword" value="약과"> <span>한과</span>
		<input id=k15 type="checkbox" name="keyword" value="한과"><br>
		<span>한방</span> <input id=k16 type="checkbox" name="keyword"
			value="힌방"><br> <br> <br>
	</form>
	
	<script>
	
	var arr2 = <%=json%>;
	console.log(arr2);
	let keyword = [];
	let arr3 = [];
	<!-- 마커를 표시할 위치와 내용을 가지고 있는 객체 배열입니다 --> 
	let content = [];
	let latlng = [];
	
	
	</script>

	<!-- 3. 지도를 표시할 div 입니다 -->
	<div id="map" style="width: 50%; height: 350px;"></div>

	<!--  4. kakao open api 연결 -->
	<script type="text/javascript"
		src="//dapi.kakao.com/v2/maps/sdk.js?appkey=2f8c752aae632b4c611274927d3bbb6a"></script>

	<!-- 5. 지도창 여는 script -->
	<script>
		let mapContainer = document.getElementById('map'), // 지도를 표시할 div 
		mapOption = {
			center : new kakao.maps.LatLng(35.16017229999956, 126.84807380000012),
			// 지도의 중심좌표(광주광역시)
			level : 3
		// 지도의 확대 레벨
		};

		let map = new kakao.maps.Map(mapContainer, mapOption);
	</script>

	<!-- 8. 지도 컨트롤 올리기 -->
	<script>
		// 일반 지도와 스카이뷰로 지도 타입을 전환할 수 있는 지도타입 컨트롤을 생성합니다
		let mapTypeControl = new kakao.maps.MapTypeControl();

		// 지도에 컨트롤을 추가해야 지도위에 표시됩니다
		// kakao.maps.ControlPosition은 컨트롤이 표시될 위치를 정의하는데 TOPRIGHT는 오른쪽 위를 의미합니다
		map.addControl(mapTypeControl, kakao.maps.ControlPosition.TOPRIGHT);

		// 지도 확대 축소를 제어할 수 있는  줌 컨트롤을 생성합니다
		let zoomControl = new kakao.maps.ZoomControl();
		map.addControl(zoomControl, kakao.maps.ControlPosition.RIGHT);
		
	</script>

	<!-- 10. 여러개 마커에 이벤트 등록하기 -->
	<script>
	$("input[type='checkbox']").change(function(){ // 체크박스에 변화가 생긴다면
		if(this.checked){ 
			alert("체크되었습니다.") 
			alert($(this).val())
			keyword.push($(this).val()) // 변한 체크박스의 value를 keyword에 넣어 준다
			console.log(keyword)
			
		}else {
			alert("체크가 해제되었습니다.")
			alert($(this).val())
			var index = keyword.indexOf($(this).val()) // 변한 value값이 들어 있는 keyword 인덱스를 찾는다.
			keyword.splice(index,1) // 해당 인덱스의 값을 빼준다.
		}
		
		arr3=[];
		
		for(var i = 0; i< arr2.length; i++){
			for(var j =0; j<keyword.length; j++){
				if(arr2[i].keyword.includes(keyword[j])){
					<!-- console.log("arr2", arr2[i].keyword) -->
					arr3.push(arr2[i]);
				}
			}
			
		}
		
			console.log(arr3.length)
			console.log(arr3)
			

			
				for (var i =0 ; i < arr3.length; i++){
			 	content.push('<div>'+arr3[i].store_name+'</div>')
			 	latlng.push(new kakao.maps.LatLng(arr3[i].store_x,arr3[i].store_y))}
					
					for (var i2 = 0; i2 < latlng.length; i2++) {
						// 마커를 생성합니다
						var marker = new kakao.maps.Marker({
							map : map, // 마커를 표시할 지도
							position : latlng[i2]
						// 마커의 위치
						});

						// 마커에 표시할 인포윈도우를 생성합니다 
						var infowindow = new kakao.maps.InfoWindow({
							content : content[i2]
						// 인포윈도우에 표시할 내용
						});

						// 마커에 mouseover 이벤트와 mouseout 이벤트를 등록합니다
						// 이벤트 리스너로는 클로저를 만들어 등록합니다 
						// for문에서 클로저를 만들어 주지 않으면 마지막 마커에만 이벤트가 등록됩니다
						kakao.maps.event.addListener(marker, 'mouseover',
								makeOverListener(map, marker, infowindow));
						kakao.maps.event.addListener(marker, 'mouseout',
								makeOutListener(infowindow));
					}

					// 인포윈도우를 표시하는 클로저를 만드는 함수입니다 
					function makeOverListener(map, marker, infowindow) {
						return function() {
							infowindow.open(map, marker);
						};
					}

					// 인포윈도우를 닫는 클로저를 만드는 함수입니다 
					function makeOutListener(infowindow) {
						return function() {
							infowindow.close();
						};
					}
					
				
	});
	

	</script>
	<!-- 7. 마커 위치 다 나오게 지도 범위 재설정하기 -->
	<!-- 통합검색, 조건검색, 체크박스 등을 사용했을 때 구현되어야 하는 기능-->
	<p>
		<button onclick="setBounds()">지도 범위 재설정 하기</button>
	</p>
	<script>
	// 지도를 재설정할 범위정보를 가지고 있을 LatLngBounds 객체를 생성합니다
	let bounds = new kakao.maps.LatLngBounds();

	for (i = 0; i < latlng.length; i++) {
	    // LatLngBounds 객체에 좌표를 추가합니다
	    bounds.extend(latlng[i]);
	}
	
	function setBounds() {
	// LatLngBounds 객체에 추가된 좌표들을 기준으로 지도의 범위를 재설정합니다
	// 이때 지도의 중심좌표와 레벨이 변경될 수 있습니다
	map.setBounds(bounds);
	}
					
	function setMarkers(map) {
	    for (var i = 0; i < latlng.length; i++) {
	    	latlng[i].setMap(map);
	    }            
	}
	
	function hideMarkers() {
	    setMarkers(null);    
	}
	</script>



</body>
</html>
