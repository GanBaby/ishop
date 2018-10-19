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
            }else if(data.rspCode=='error'){
                Plugins.toastr({status:"warning",center:data.rspDesc});
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
        } else if(data.rspCode=='error'){
            Plugins.toastr({status:"warning",center:data.rspDesc});
        }else{
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
        }else if(data.rspCode=='error'){
            Plugins.toastr({status:"warning",center:data.rspDesc});
        }else{
            Plugins.toastr({status:"error",center:"系统出错了，请联系管理员"});
        }
    })
}

//修改商品的信息，ajax通过商品的id获取商品的信息
function openEdit(goodsId){

    //获取商品信息的ajax
    $.post("/goods/editBefore",{goodsId:goodsId},function(data){
        if(data.rspCode=='success'){
            //获取商品信息
            var goods = data.entity.tcGoods;
            //获取一级分类集合
            var oneCatList = data.entity.oneCatList;
            //获取二级分类集合
            var twoCatList = data.entity.twoCatList;
            //获取三级分类集合
            var threeCatList = data.entity.threeCatList;
            //获取商品的分类数组
            var catArr = goods.goodsCatidPath.split("_");
            //初始化商品信息
            $("#editGoodsId").val(goods.goodsId);
            $("#editGoodsNo").val(goods.goodsSn);
            $("#editGoodsName").val(goods.goodsName);
            $("#editSale option").each(function(i,e){
                if($(e).val()==goods.issale){
                    $(e).attr("selected","true");
                }
            })
            $("#editRecom option").each(function(i,e){
                if($(e).val()==goods.isrecom){
                    $(e).attr("selected","true");
                }
            })
           /* //循环遍历一级分类
            var catStr = "";
            _.each(oneCatList,function(e,i){
                if(catArr[0]==e.catId){
                    catStr += "<option value='"+e.catId+"' selected>"+e.catName+"</option>";
                }else{
                    catStr += "<option value='"+e.catId+"'>"+e.catName+"</option>";
                }
            })
            $("#editOneCatName").html(catStr);
            //遍历二级分类
            catStr = "";
            _.each(twoCatList,function(e,i){
                if(catArr[1]==e.catId){
                    catStr += "<option value='"+e.catId+"' selected>"+e.catName+"</option>";
                }else if(catArr[0]==e.parentId){
                    catStr += "<option value='"+e.catId+"'>"+e.catName+"</option>";
                }
            })
            $("#editTwoCatName").html(catStr);
            //遍历三级分类
            catStr = "";
            _.each(threeCatList,function(e,i){
                if(catArr[2]==e.catId){
                    catStr += "<option value='"+e.catId+"' selected>"+e.catName+"</option>";
                }else if(catArr[1]==e.parentId){
                    catStr += "<option value='"+e.catId+"'>"+e.catName+"</option>";
                }
            })
            $("#editThreeCatName").html(catStr);

            //给一级分类注册事件，当改变时二级分类会跟着改变
            $("#editOneCatName").on("change",function(event){
                var parentId = $(event.currentTarget).val();
                //遍历二级分类
                catStr = "<option value='' selected>请选择商品二级分类</option>";
                _.each(twoCatList,function(e,i){
                    if(parentId==e.parentId){
                         catStr += "<option value='"+e.catId+"'>"+e.catName+"</option>";
                    }
                })
                $("#editTwoCatName").html(catStr);
                //清空三级分类
                $("#editThreeCatName").html("");
            })
            //给二级分类注册事件，当改变时三级分类会跟着改变
            $("#editTwoCatName").on("change",function(event){
                var parentId = $(event.currentTarget).val();
                //遍历二级分类
                catStr = "<option value='' selected>请选择商品三级分类</option>";
                _.each(threeCatList,function(e,i){
                    if(parentId==e.parentId){
                        catStr += "<option value='"+e.catId+"'>"+e.catName+"</option>";
                    }
                })
                $("#editThreeCatName").html(catStr);
            })*/

           //使用jsTree树形视图插件\
            $('#catNameTree').jstree({
                'core': {
                    'data': [

                    ]
                }
            });

        }else if(data.rspCode=='error'){
            Plugins.toastr({status:"warning",center:data.rspDesc});
        }else{
            Plugins.toastr({status:"error",center:"系统出错了，请联系管理员"});
        }
    })


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
            field : 'issale',
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
            field : 'isrecom',
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
