var url="/goods/select";
new Table({
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
            align : 'center'
        },
        {
            field : 'isSale',
            title : '上/下架',
            align : 'center',
            formatter : function(value, row, index) {
                var result='';
                    if(row.issale==1){
                        result += '<a href="#" mce_href="#" class="btn btn-outline btn-primary btn-xs" onclick="edit(\''
                            + row.goodsId + '\')">上架</a> ';
                    }else{
                        result += '<a href="#" mce_href="#" class="btn btn-outline btn-warning btn-xs" onclick="edit(\''
                            + row.goodsId + '\')">下架</a> ';
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
                var d = '<a href="#" mce_href="#" onclick="del(\''
                    + row.goodsId + '\')"><span class="glyphicon glyphicon-pencil"><pseudo:before><pseudo:before> </span></a>&nbsp;&nbsp;&nbsp;&nbsp;';
                var f = '<a class="glyphicon glyphicon-trash" onclick="delGoods(\''+row.goodsId+'\')"></a>';
                return d + f;
            }
        } ]
});


//删除商品的方法
    function delGoods(goodsId){
        $.post("/goods/delete",{goodsId:goodsId},function(data){
            if(data.rspCode=='success'){
                alert(data.rspDesc);
                $(".goodsTable").bootstrapTable('refresh',{"url":url});
            }else{
                alert(data.rspDesc);
            }
        })

    }

