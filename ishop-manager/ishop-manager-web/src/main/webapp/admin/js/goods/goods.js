new Table({
    tag:".goodsTable",
    url:"/goods/selectList",
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
                var e = '<a href="#" mce_href="#" onclick="edit(\''
                    + row.goodsId + '\')">上架</a> ';
                var d = '<a href="#" mce_href="#" onclick="del(\''
                    + row.goodsId + '\')">下架</a> ';
                return e + d;
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
                var e = '<a href="#" mce_href="#" onclick="edit(\''
                    + row.goodsId + '\')">编辑</a> ';
                var d = '<a href="#" mce_href="#" onclick="del(\''
                    + row.goodsId + '\')">修改</a> ';
                return e + d;
                var f = '<a href="#" mce_href="#" onclick="del(\''
                    + row.goodsId + '\')">删除</a> ';
                return e + d + f;
            }
        } ]
});