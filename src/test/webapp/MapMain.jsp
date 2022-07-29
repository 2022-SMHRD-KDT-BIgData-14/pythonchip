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
/* 사용자컨트롤을 위한 함수들 */
html, body {
	width: 100%;
	height: 100%;
	margin: 0;
	padding: 0;
}

.map_wrap {
	position: relative;
	overflow: hidden;
	width: 100%;
	height: 350px;
}

.radius_border {
	border: 1px solid #919191;
	border-radius: 5px;
}

.custom_typecontrol {
	position: absolute;
	top: 10px;
	right: 10px;
	overflow: hidden;
	width: 130px;
	height: 30px;
	margin: 0;
	padding: 0;
	z-index: 1;
	font-size: 12px;
	font-family: 'Malgun Gothic', '맑은 고딕', sans-serif;
}

.custom_typecontrol span {
	display: block;
	width: 65px;
	height: 30px;
	float: left;
	text-align: center;
	line-height: 30px;
	cursor: pointer;
}

.custom_typecontrol .btn {
	background: #fff;
	background: linear-gradient(#fff, #E6E6E6);
}

.custom_typecontrol .btn:hover {
	background: #F5F5F5;
	background: linear-gradient(#F5F5F5, #E3E3E3);
}

.custom_typecontrol .btn:active {
	background: #E6E6E6;
	background: linear-gradient(#E6E6E6, #fff);
}

.custom_typecontrol .selected_btn {
	color: #fff;
	background: #425470;
	background: linear-gradient(#425470, #5B6D8A);
}

.custom_typecontrol .selected_btn:hover {
	color: #fff;
}

.custom_zoomcontrol {
	position: absolute;
	top: 50px;
	right: 10px;
	width: 36px;
	height: 80px;
	overflow: hidden;
	z-index: 1;
	background-color: #F5F5F5;
}

.custom_zoomcontrol span {
	display: block;
	width: 36px;
	height: 40px;
	text-align: center;
	cursor: pointer;
}

.custom_zoomcontrol span img {
	width: 15px;
	height: 15px;
	padding: 12px 0;
	border: none;
}

.custom_zoomcontrol span:first-child {
	border-bottom: 1px solid #BFBFBF;
}

/* 커스텀 오버레이 css */
.wrap {
	position: absolute;
	left: 0;
	bottom: 40px;
	width: 288px;
	height: 132px;
	margin-left: -144px;
	text-align: left;
	overflow: hidden;
	font-size: 12px;
	font-family: 'Malgun Gothic', dotum, '돋움', sans-serif;
	line-height: 1.5;
}

.wrap * {
	padding: 0;
	margin: 0;
}

.wrap .info {
	width: 286px;
	height: 120px;
	border-radius: 5px;
	border-bottom: 2px solid #ccc;
	border-right: 1px solid #ccc;
	overflow: hidden;
	background: #fff;
}

.wrap .info:nth-child(1) {
	border: 0;
	box-shadow: 0px 1px 2px #888;
}

.info .title {
	padding: 5px 0 0 10px;
	height: 30px;
	background: #eee;
	border-bottom: 1px solid #ddd;
	font-size: 18px;
	font-weight: bold;
}

.info .close {
	position: absolute;
	top: 10px;
	right: 10px;
	color: #888;
	width: 17px;
	height: 17px;
	background:
		url('https://t1.daumcdn.net/localimg/localimages/07/mapapidoc/overlay_close.png');
}

.info .close:hover {
	cursor: pointer;
}

.info .body {
	position: relative;
	overflow: hidden;
}

.info .desc {
	position: relative;
	margin: 13px 0 0 90px;
	height: 75px;
}

.desc .ellipsis {
	overflow: hidden;
	text-overflow: ellipsis;
	white-space: nowrap;
}

.desc .jibun {
	font-size: 11px;
	color: #888;
	margin-top: -2px;
}

.info .img {
	position: absolute;
	top: 6px;
	left: 5px;
	width: 73px;
	height: 71px;
	border: 1px solid #ddd;
	color: #888;
	overflow: hidden;
}

.info:after {
	content: '';
	position: absolute;
	margin-left: -12px;
	left: 50%;
	bottom: 0;
	width: 22px;
	height: 12px;
	background:
		url('https://t1.daumcdn.net/localimg/localimages/07/mapapidoc/vertex_white.png')
}

.info .link {
	color: #5085BB;
}
</style>
</head>
<body>
	<form>
		<!-- 1. 검색창 -->
		<input id=input type="text" maxlength="50"><br> <br>
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
	<div class="map_wrap">
		<div id="map"
			style="width: 100%; height: 100%; position: relative; overflow: hidden;"></div>
		<!-- 지도타입 컨트롤 div 입니다 -->
		<div class="custom_typecontrol radius_border">
			<span id="btnRoadmap" class="selected_btn"
				onclick="setMapType('roadmap')">지도</span> <span id="btnSkyview"
				class="btn" onclick="setMapType('skyview')">스카이뷰</span>
		</div>
		<!-- 지도 확대, 축소 컨트롤 div 입니다 -->
		<div class="custom_zoomcontrol radius_border">
			<span onclick="zoomIn()"><img
				src="https://t1.daumcdn.net/localimg/localimages/07/mapapidoc/ico_plus.png"
				alt="확대"></span> <span onclick="zoomOut()"><img
				src="https://t1.daumcdn.net/localimg/localimages/07/mapapidoc/ico_minus.png"
				alt="축소"></span>
		</div>
	</div>

	<%
	ArrayList<StoreDTO> arr = new StoreDAO().getStoreList();
	Gson gson = new Gson();
	String json = gson.toJson(arr);
	System.out.println(json);
	%>

	<script>
	var arr2 = <%=json%>; <!-- 자바의 배열을 자바스크립트에서 바로 쓸 수 있게 만든 객체배열입니다. -->
	console.log(arr2);
	
	let keyword = []; <!-- 사용자가 선택한 키워드를 담을 배열입니다. -->
	let arr3 = []; <!-- 사용자가 선택한 키워드를 바탕으로 분류된 가게들을 담을 배열입니다. -->
	
	<!-- 마커를 표시할 위치와 내용을 가지고 있는 배열입니다 -->
	let markers=[];
	let marker=null;
	let positions = [];
	
	<!-- 커스텀 오버레이를 내용을 가지고 있는 배열입니다 -->
	let overlays=[];
	let overlay = null;
	let content = [];
	
	</script>








	<!--  kakao open api 연결 -->
	<script type="text/javascript"
		src="//dapi.kakao.com/v2/maps/sdk.js?appkey=2f8c752aae632b4c611274927d3bbb6a"></script>
	<!-- 지도창 여는 script -->
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








	<script>
	$("input[type='checkbox']").change(function(){ // 체크박스에 변화가 생긴다면
	
		if(this.checked){
			alert("체크되었습니다.")
			alert($(this).val())
			keyword.push($(this).val()) // 변한 체크박스의 value를 keyword에 넣어 준다
			console.log(keyword)
			showMarkers()
		}else {
			alert("체크가 해제되었습니다.")
			alert($(this).val())
			var index = keyword.indexOf($(this).val()) // 변한 value값이 들어 있는 keyword 인덱스를 찾는다.
			keyword.splice(index,1) // 해당 인덱스의 값을 빼준다.
			hideMarkers()
		}
	
		arr3=[];
		
		for(var i = 0; i< arr2.length; i++){
			for(var j =0; j<keyword.length; j++){
				if(arr2[i].keyword.includes(keyword[j])){
					arr3.push(arr2[i]);
				}
			}
		}
		
			console.log(arr3.length)
			console.log(arr3)
			
			// keyword : 사용자가 선택한 체크박스 키워드를 담아준 키워드 배열
			// arr3 : 사용자가 선택한 체크박스 키워드를 기준으로 새로 분류된 가게 배열 객체
			for(var i=0; i<arr3.length; i++){
				positions.push(new kakao.maps.LatLng(arr3[i].store_x, arr3[i].store_y))				
			
			// 커스텀 오버레이에 표시할 컨텐츠 입니다
			// 커스텀 오버레이는 아래와 같이 사용자가 자유롭게 컨텐츠를 구성하고 이벤트를 제어할 수 있기 때문에
			// 별도의 이벤트 메소드를 제공하지 않습니다
			content = '<div class="wrap">' +
			            '    <div class="info">' +
			            '        <div class="title">' +
			            arr3[i].store_name +
			            '            <div class="close" onclick="closeOverlay()" title="닫기"></div>' +
			            '        </div>' +
			            '        <div class="body">' +
			            '            <div class="img">' +
			            '                <img src="https://cfile181.uf.daum.net/image/250649365602043421936D" width="73" height="70">' +
			            '           </div>' +
			            '            <div class="desc">' +
			            '                <div class="ellipsis">'+arr3[i].location_gu+'</div>' +
			            '                <div class="jibun ellipsis">'+arr3[i].location_dong+'</div>' +
			            '                <div><a href="https://www.kakaocorp.com/main" target="_blank" class="link">홈페이지</a></div>' +
			            '            </div>' +
			            '        </div>' +
			            '    </div>' +
			            '</div>';
			
			// 마커 위에 커스텀오버레이를 표시합니다
			// 마커를 중심으로 커스텀 오버레이를 표시하기위해 CSS를 이용해 위치를 설정했습니다
			overlay = new kakao.maps.CustomOverlay({
		    content: content,
			map: map,
			position: new kakao.maps.LatLng(arr3[i].store_x, arr3[i].store_y)      
			});
			
			overlays.push(overlay)
			
			closeOverlay();
			
			}
			
	});
	</script>

	<script>
	<!-- 필요한 함수들을 모아놓은 스크립트 -->
	function setMarkers(map) {
	    for (var i = 0; i < markers.length; i++) {
	        markers[i].setMap(map);
	    }
	}
	
	//"마커 보이기" 버튼을 클릭하면 호출되어 배열에 추가된 마커를 지도에 표시하는 함수입니다
	function showMarkers() {
    setMarkers(map)
	}
	
	// "마커 감추기" 버튼을 클릭하면 호출되어 배열에 추가된 마커를 지도에서 삭제하는 함수입니다
	function hideMarkers() {
    setMarkers(null);
	}
	
	<!-- 사용자 컨트롤 분류함수들 -->
	//지도타입 컨트롤의 지도 또는 스카이뷰 버튼을 클릭하면 호출되어 지도타입을 바꾸는 함수입니다
	function setMapType(maptype) {
	 var roadmapControl = document.getElementById('btnRoadmap');
	 var skyviewControl = document.getElementById('btnSkyview');
	 if (maptype === 'roadmap') {
	     map.setMapTypeId(kakao.maps.MapTypeId.ROADMAP);
	     roadmapControl.className = 'selected_btn';
	     skyviewControl.className = 'btn';
	 } else {
	     map.setMapTypeId(kakao.maps.MapTypeId.HYBRID);
	     skyviewControl.className = 'selected_btn';
	     roadmapControl.className = 'btn';
	 }
	}
	//지도 확대, 축소 컨트롤에서 확대 버튼을 누르면 호출되어 지도를 확대하는 함수입니다
	function zoomIn() {
	 map.setLevel(map.getLevel() - 1);
	}
	//지도 확대, 축소 컨트롤에서 축소 버튼을 누르면 호출되어 지도를 확대하는 함수입니다
	function zoomOut() {
	 map.setLevel(map.getLevel() + 1);
	}
	
	<!-- 커스텀 오버레이 닫아주기 -->
	// 커스텀 오버레이를 닫기 위해 호출되는 함수입니다 
	function closeOverlay() {
	    overlay.setMap(null);     
	}
	</script>


</body>
</html>