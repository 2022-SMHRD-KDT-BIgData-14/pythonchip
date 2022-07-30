

$(document).ready(function(){
    $('#searchButton').click(function(){
        AjaxConGet();
		console.log('검색 버튼')
    })
})

$(document).on('click','.keywordBtn', function(){
    AjaxKeyword($(this)[0].innerText)
})

function AjaxKeyword(Keyword){

    var url = "http://localhost:8081/pythonchip/SearchStoreAjax"
    $.ajax({
        type:"GET",
        url:url,
        dataType:"json",
        data:{
            keyword : Keyword,
			job : 'keyword' 
        },

        success : function(data){
	
            var str=""
            console.log(data)
			$('#insideStoreTable').isotope('remove',$('.item-gallery') )
			$('.wrap-gallery').isotope({
                itemSelector: '.item-gallery',
                percentPosition: true,
 	  			layoutMode: 'masonry',
                animationEngine: 'best-available',
                masonry: {
                    columnWidth: '.item-gallery',
					columnHeight: '.item-gallery'
                }
            })
			setTimeout(() => {

            data.forEach(element => {
                
            console.log(element)
			str = $("  <div class=\"item-gallery hov-img-zoom\">\r\n"
				+ "      <img src=\"https://www.coffeebeankorea.com/data/menu/%EC%BD%9C%EB%93%9C%EB%B8%8C%EB%A3%A815_1.jpg\" class=\"card-img-top\" alt=\"...\">\r\n"
				+ "                  <div class=\"overlay-item-gallery trans-0-10 flex-c-m\"><a class=\"btn-show-gallery flex-c-m fa fa-search\" href=\"https://www.coffeebeankorea.com/data/menu/%EC%BD%9C%EB%93%9C%EB%B8%8C%EB%A3%A815_1.jpg\"data-lightbox=\"gallery\"></a></div>"
				+ "      <div>\r\n"
				+ "        <h5> "+ element.store_name+" </h5>\r\n"
				+ "        <p> 주소 : "+ element.location_dong+element.location_gu+"</p>\r\n"
				+ "        <p> 별점 : "+ element.store_grade  +"  </p>\r\n"
                + "        <p> tel : "+ element.store_tel +" </p>\r\n"
				+ "    </div>\r\n"
				+ "  </div>")
				$('#insideStoreTable').isotope().append(str).isotope('appended',str).isotope('layout');
				console.log('isotope')
            });
		setTimeout(() => {
		$('.wrap-gallery').isotope('layout')
		},300)
        }, 300);
            

},
        error : function(request,status,error){
            alert('code:'+request.status+"\n"+"message:"+request.responseText+"\n"+"error:"+error); //에러 상태에 대한 세부사항 출력
            alert(e);
        }
    })

}

function AjaxConGet(){
    var url = "http://localhost:8081/pythonchip/SearchStoreAjax";
	key = $('#searchinput').val()
	job = $("#searchSelector option:selected").val();
    $.ajax({
        type:"GET",
        url:url,
        dataType:"json",
        data:{
            keyword : key,
			job : job 
        },
        success : function(data){
	
            var str=""
            console.log(data)
			$('#insideStoreTable').isotope('remove',$('.item-gallery') )
			$('.wrap-gallery').isotope({
                itemSelector: '.item-gallery',
                percentPosition: true,
 	  			layoutMode: 'masonry',
                animationEngine: 'best-available',
                masonry: {
                    columnWidth: '.item-gallery',
					columnHeight: '.item-gallery'
                }
            })
			setTimeout(() => {

            data.forEach(element => {
                
            console.log(element)
			str = $("  <div class=\"item-gallery hov-img-zoom\">\r\n"
				+ "      <img src=\"https://www.coffeebeankorea.com/data/menu/%EC%BD%9C%EB%93%9C%EB%B8%8C%EB%A3%A815_1.jpg\" class=\"card-img-top\" alt=\"...\">\r\n"
				+ "                  <div class=\"overlay-item-gallery trans-0-10 flex-c-m\"><a class=\"btn-show-gallery flex-c-m fa fa-search\" href=\"https://www.coffeebeankorea.com/data/menu/%EC%BD%9C%EB%93%9C%EB%B8%8C%EB%A3%A815_1.jpg\"data-lightbox=\"gallery\"></a></div>"
				+ "      <div>\r\n"
				+ "        <h5> "+ element.store_name+" </h5>\r\n"
				+ "        <p> 주소 : "+ element.location_dong+element.location_gu+"</p>\r\n"
				+ "        <p> 별점 : "+ element.store_grade  +"  </p>\r\n"
                + "        <p> tel : "+ element.store_tel +" </p>\r\n"
				+ "    </div>\r\n"
				+ "  </div>")
				$('#insideStoreTable').isotope().append(str).isotope('appended',str).isotope('layout');
				console.log('isotope')
            });
		setTimeout(() => {
		$('.wrap-gallery').isotope('layout')
		},500)
        }, 300);
            },
        error : function(request,status,error){
            alert('code:'+request.status+"\n"+"message:"+request.responseText+"\n"+"error:"+error); //에러 상태에 대한 세부사항 출력
            alert(e);
        }
    })
    
}



