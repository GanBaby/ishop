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
                //刷新表格
                table.refresh();
            }else{
                Plugins.toastr({status:"error",center:"系统出错了，请联系管理员"});
            }
        })
    });

}

//商品上下架的方法
function editGoodsSale(goodsId,status) {
    $.post("/goods/issale",{goodsId:goodsId,status:status},function (data) {
        if (data.rspCode=='success'){
            if(status==1){
                parent.layer.msg("上架成功");
            }else{
                parent.layer.msg("下架成功");
            }
            //刷新表格
            table.refresh();
        } else {
            Plugins.toastr({status:"error",center:"系统出错了，请联系管理员"});
        }
    })
}

//商品修改热销状态的方法
function editGoodsIsrecom(goodsId,status) {
    $.post("/goods/isrecom",{goodsId:goodsId,status:status},function (data) {
        if (data.rspCode=='success'){
            if(status==1){
                parent.layer.msg("商品修改为推荐状态");
            }else{
                parent.layer.msg("商品修改为正常状态");
            }
            //刷新表格
            table.refresh();
        }else {
            Plugins.toastr({status:"error",center:"系统出错了，请联系管理员"});
        }
    })
}

//修改商品的信息，ajax通过商品的id获取商品的信息
function openEdit(goodsId){
    //显示模态窗
    $("#editModifyModal").modal("show");

}

//确认修改的方法
function edit(){
    console.log("你提交了表单");
}



//初始化表格
var table = Plugins.table({
    el:".goodsTable",
    url:"/goods/select",
    toolTag:["#nameSearch"],
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
                    result += "<a href='#' mce_href='#' class='btn btn-outline btn-primary btn-xs'"+ "onclick=\"editGoodsSale("
                        + row.goodsId + ",0)\">上架</a> ";
                }else{
                    result += "<a href='#' mce_href='#' class='btn btn-outline btn-warning btn-xs'"+" onclick=\"editGoodsSale("
                        + row.goodsId + ",1)\">下架</a> ";
                }
                return result;
            }
        },
        {
            field : 'isRecom',
            title : '是否推荐',
            align : 'center',
            formatter : function(value, row, index) {
                var result="";
                if(row.isrecom==1){
                    result += "<a href='#' mce_href='#' class='btn btn-outline btn-primary btn-xs'"+ "onclick=\"editGoodsIsrecom("
                        + row.goodsId + ",0)\">推荐</a> ";
                }else{
                    result += "<a href='#' mce_href='#' class='btn btn-outline btn-warning btn-xs'"+" onclick=\"editGoodsIsrecom("
                        + row.goodsId + ",1)\">正常</a> ";
                }
                return result;
            }
        },
        {
            field : 'goodsCatidPath',
            title : '商品分类路径',
            align : 'center'
        },
        {
            title : '操作',
            field : 'id',
            align : 'center',
            formatter : function(value, row, index) {
                var result="";
                result += '<a class="glyphicon glyphicon-pencil" style="margin: 5px;" onclick="openEdit(\''
                    + row.goodsId + '\')"></a>';
                result += '<a class="glyphicon glyphicon-trash" style="margin: 5px;" onclick="delGoods(\''+row.goodsId+'\')"></a>';
                return result;
            }
        } ]
});

// 初始化验证
Plugins.validate({el:"validateForm",submitBtn:"saveModify",callback:edit});
