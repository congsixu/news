$(function(){
    $(document).ajaxStart(function(){
        $(".loader").show()
    })
    $(document).ajaxComplete(function(){
        $(".loader").hide()
    })

    // 增加数据
    $("#add").on("click",function(){
        $.ajax({
            url :"/admin.php?c=category&m=actioninsert",
            success : function(data){
                if(data == 1){
                    location.reload()
                }else(
                    alert("error")
                )
            }
        })
    })

    // 删除数据
    $("#tbody").on("click",".remove",function(){
        var r = $(this).closest('tr')
        var id = $(this).closest('tr').attr('data-id');
        $.ajax({
            url : "/admin.php?c=category&m=actiondelete&id="+id,
            success : function(data){
                if(data ==1){
                    // location.reload();
                    r.remove();
                }else{
                    alert('error');
                }
            }
        })
    })

    // 更改数据
    $("#tbody").on("blur","input",function(){
        let k = $(this).attr("data-type");
        let id = $(this).closest('tr').attr('data-id');
        let v = $(this).val();
        $.ajax({
            url : "/admin.php?c=category&m=actionupdate",
            data : {
                k : k,
                id : id,
                v : v
            },
            success : function(data){

            }
        })

    })

    //搜索数据
    $("#search").on("click",function () {
        let value = $('.form-control').val();
        if(value){
            $('#add').hide()
            $('#tbody').html("");
            $('#pagination-demo').hide();
            $.ajax({
                url:'/admin.php?c=category&m=searchList&s='+value,
                data:{

                },
                success:function(data){
                    data = JSON.parse(data);

                    if(data.length){
                        data.forEach(v=>{
                            $(`
    <tr data-id="${v.id}">
        <td class="table-user">
            ${v.id}
        </td>
        <td class="table-user td">
            <input data-type="name" class="form-control" type="text" value="${v.name}">
        </td>
        <td class="table-user td">
            <input data-type="is_default" class="form-control" type="text" value="${v.is_default}">
        </td>
        <td class="table-action">
            <a href="javascript: void(0);" class="remove action-icon"> <i class="mdi mdi-delete"></i></a>
        </td>
    </tr>               `)
                                .appendTo('#tbody');
                        })
                    }else{
                        alert('没有更多')
                    }
                }
            })
         }
    })


})