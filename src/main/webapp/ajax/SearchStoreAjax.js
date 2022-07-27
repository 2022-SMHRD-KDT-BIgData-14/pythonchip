

$(document).ready(function(){
    $('#searchButton').click(function(){
        AjaxConGet();
        console.log('클릭 합니다!')
    })
})

function AjaxConGet(){
    var url = "http://localhost:8081/pythonchip/SearchStoreAjax";
	key = $('#searchinput').val()
	job = $("#searchSelector option:selected").val();
	console.log(key)
	console.log(job)
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

			$('.col').fadeOut("fast").fadeOut(300)
			setTimeout(() => {
                
            $('#table').empty()
            data.forEach(element => {
                
            console.log(element)
			str = str + "  <div class=\"col\">\r\n"
				+ "    <div class=\"card\">\r\n"
				+ "      <img src=\"https://www.coffeebeankorea.com/data/menu/%EC%BD%9C%EB%93%9C%EB%B8%8C%EB%A3%A815_1.jpg\" class=\"card-img-top\" alt=\"...\">\r\n"
				+ "      <div class=\"card-body\">\r\n"
				+ "        <h5 class=\"card-title\"> "+ element.store_name+" </h5>\r\n"
				+ "        <p class=\"card-text\"> 주소 : "+ element.location_dong+element.location_gu  +"  </p>\r\n"
				+ "        <p class=\"card-text\"> 별점 : "+ element.store_grade  +"  </p>\r\n"
				
                + "        <p class=\"card-text\"> tel : "+ element.store_tel +" </p>\r\n"
				+ "      </div>\r\n"
				+ "    </div>\r\n"
				+ "  </div>"
            });
            $('#table').append(str)
        }, 300);
            },
        error : function(request,status,error){
            alert('code:'+request.status+"\n"+"message:"+request.responseText+"\n"+"error:"+error); //에러 상태에 대한 세부사항 출력
            alert(e);
        }
    })
    
}



