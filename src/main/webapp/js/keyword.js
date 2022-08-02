



function AjaxConGet(keyword){
    var url = "http://localhost:8081/pythonchip/SearchStoreAjax";
    let da =[]
    $.ajax({
        type:"GET",
        url:url,
        dataType:"json",
        data:{
            keyword : keyword,
        },
        success : function(d){
            da = d
            console.log(d)

        },
        error : function(request,status,error){

            console.log(error);

        }
    })
    console.log(typeof da)
    
    return da
}