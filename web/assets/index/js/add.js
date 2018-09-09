$(function(){
    $(".del.control-block").on("click",".item",function(){
       $.ajax({
            url : '/index.php',
            data : {
                c : 'page',
                m : 'update',
                id : $(this).attr("data-id"),
                x : $(this).attr("default")
            },
            success : function (data) {
                if(data == 1){
                    // $(this).remove();
                    location.reload()
                }else{
                    alert("网络出了点问题")
                }
            }
        })
    })

    $(".add.control-block").on("click",".item",function(){
        $.ajax({
            url : '/index.php',
            data : {
                c : 'page',
                m : 'update',
                id : $(this).attr("data-id"),
                x : $(this).attr("default")
            },
            success : function (data) {
                // $(this).remove();
                location.reload()
            }
        })
    })
})