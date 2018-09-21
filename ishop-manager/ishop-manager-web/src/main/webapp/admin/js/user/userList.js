new Table({
    tag:".userListTable",
    url:"/user/selectList",
    columns : [
        {
            field : 'userId',
            title : 'ID',
            align : 'center'
        },
        {
            field : 'loginName',
            title : '账号',
            align : 'center'
        },
        {
            field : 'userName',
            title : '用户名称',
            align : 'center'
        },
        {
            field : 'trueName',
            title : '真实姓名',
            align : 'center'
        },
        {
            field : 'userType',
            title : '类型',
            align : 'center'
        },
        {
            field : 'userSex',
            title : '性别',
            align : 'center'
        },
        {
            field : 'userPhone',
            title : '手机',
            align : 'center'
        },
        {
            field : 'createTime',
            title : '创建时间',
            align : 'center'
        },
        {
            field : 'userStatus',
            title : '账号状态',
            align : 'center'
        },
        {
            title : '操作',
            field : 'id',
            align : 'center',
            formatter : function(value, row, index) {
                var e = '<a href="#" mce_href="#" onclick="edit(\''
                    + row.userId + '\')">编辑</a> ';
                var d = '<a href="#" mce_href="#" onclick="del(\''
                    + row.userId + '\')">删除</a> ';
                return e + d;
            }
        } ]
});