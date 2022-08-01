
	$("input[type='checkbox']").change(function(){ // 체크박스에 변화가 생긴다면
        console.log('체크박스 클릭!')
		if(this.checked){
			keyword.push($(this).val()) // 변한 체크박스의 value를 keyword에 넣어 준다
			console.log(keyword)
            hideMarkers()
		}else {
            hideMarkers()
			var index = keyword.indexOf($(this).val()) // 변한 value값이 들어 있는 keyword 인덱스를 찾는다.
            keyword.splice(index,1) // 해당 인덱스의 값을 빼준다.
		}
	
		arr3=[];
        markers=[]
		console.log(keyword)
		// keyword가 있는 장소만 arr3에 저장
		for(var i = 0; i< arr2.length; i++){
			for(var j =0; j<keyword.length; j++){
				if(arr2[i].keyword.includes(keyword[j])){
					arr3.push(arr2[i]);
				}
			}
		}
		
		console.log(arr3.length)
		console.log(arr3)
		
		var marker = null;
		var contents = [];
		var cnt = 0;
		
		
		for(var i =0; i<arr3.length; i++){
			
			marker = new kakao.maps.Marker({
    		title : arr3[i].store_name,
			map : map, // 마커를 표시할 지도
    		position: new kakao.maps.LatLng(arr3[i].store_x, arr3[i].store_y)
			});
			
			// 마커가 지도 위에 표시되도록 설정합니다
			markers.push(marker);
			}
		

		for(var i =0; i<arr3.length; i++){
			// 커스텀 오버레이에 표시할 컨텐츠 입니다
			// 커스텀 오버레이는 아래와 같이 사용자가 자유롭게 컨텐츠를 구성하고 이벤트를 제어할 수 있기 때문에
			// 별도의 이벤트 메소드를 제공하지 않습니다
			content = '<div class="wrap">' +
		            '    <div class="info">' +
		            '        <div class="title">' +
		            arr3[i].store_name +
		            '            <div class="close"+ onclick="closeOverlay()" title="닫기"></div>' +
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
		 	 overlay = {
		     title : arr3[i].store_name,
		     content: content,
			 store_x: arr3[i].store_x,
             store_y: arr3[i].store_y
			 };
			 
			console.log('overlay')
            position = new kakao.maps.LatLng(overlay.store_x, overlay.store_y)
            
			kakao.maps.event.addListener(markers[i], 'click', (function(position,_marker, overlay)
            {
                return function(){


                    _overlay = new kakao.maps.CustomOverlay({
                    title : overlay.title,
                    content: overlay.content,
                    map: map,
                    position: new kakao.maps.LatLng(overlay.store_x, overlay.store_y)
                    });
                    _overlay.setMap(map)
                    overlays.push(_overlay)
                    

            }
			})(position, markers[i], overlay));


		}

			// 마커에 click 이벤트를 등록합니다	
		showMarkers()
		});
	
	// 커스텀 오버레이를 닫기 위해 호출되는 함수입니다
	function closeOverlay() {
        overlays.forEach(el => {
            el.setMap(null);
        });
	}
	
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
	