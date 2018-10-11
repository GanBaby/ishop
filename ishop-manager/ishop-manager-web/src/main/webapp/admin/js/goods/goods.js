var url="/goods/select";
Plugins.table({
    tag:".goodsTable",
    url:url,
    columns : [
        {
            field : 'goodsId',
            title : 'ID',
            align : 'center'
        },
        {
            field : 'goodsSn',
            title : '商品编号',
            align : 'center'
        },
        {
            field : 'goodsName',
            title : '商品名称',
            align : 'center'
        },
        {
            field : 'goodsImg',
            title : '商品图片',
            align : 'center',
            formatter : function(value, row, index){
                var result = "<img src='"+$.fn.rootPath()+row.goodsImg+"' style='width:50px;height:70px;'>";
                return result;
            }
        },
        {
            field : 'isSale',
            title : '当前状态',
            align : 'center',
            formatter : function(value, row, index) {
                var result="";
                    if(row.issale==1){
                        result += "<a href='#' mce_href='#' class='btn btn-outline btn-primary btn-xs'"+ "onclick=\"edisGoodsSale("
                            + row.goodsId + ",0)\">上架</a> ";
                    }else{
                        result += "<a href='#' mce_href='#' class='btn btn-outline btn-warning btn-xs'"+" onclick=\"edisGoodsSale("
                            + row.goodsId + ",1)\">下架</a> ";
                    }
                return result;
            }
        },
        {
            field : 'isHot',
            title : '热销',
            align : 'center'
        },
        {
            field : 'goodsCatId',
            title : '商品最后一级商品分类ID',
            align : 'center'
        },
        {
            title : '操作',
            field : 'id',
            align : 'center',
            formatter : function(value, row, index) {
                var result="";
                result += '<a href="#" mce_href="#" onclick="del(\''
                    + row.goodsId + '\')"><span class="glyphicon glyphicon-pencil"><pseudo:before><pseudo:before> </span></a>&nbsp;&nbsp;&nbsp;&nbsp;';
                result += '<a class="glyphicon glyphicon-trash" onclick="delGoods(\''+row.goodsId+'\')"></a>';
                return result;
            }
        } ]
});


//删除商品的方法
    function delGoods(goodsId){
        //询问框
        parent.layer.confirm('您确定要删除这个商品吗?',{
            btn:['确定','取消'],//按钮
            shade:false //不显示遮罩
        },function(){
            $.post("/goods/delete",{goodsId:goodsId},function(data){
                if(data.rspCode=='success'){
                    parent.layer.msg(data.rspDesc);
                    $(".goodsTable").bootstrapTable('refresh',{"url":url});
                }else{
                    alert(data.rspDesc);
                }
            })
        });

    }


//商品上下架的状态
function edisGoodsSale(goodsId,status) {
    $.post("/goods/issale",{goodsId:goodsId,status:status},function (data) {
        if (data.rspCode=='success'){
            if(status==1){
                parent.layer.msg("上架成功");
            }else{
                parent.layer.msg("下架成功");
            }
            $(".goodsTable").bootstrapTable('refresh',{"url":url});
        } else {
           Plugins.toastr({status:"error",center:data.rspDesc});
        }
    })

}

