$(".userListTable").dataTable({
    "processing": true,//数据加载时显示进度条
    "searching": true,//启用搜索功能
    "serverSide": true,//这个用来指明是通过服务端来取数据
    "sPaginationType": "full_numbers",      //分页样式
    "sAjaxSource": "/user/selectList",//这个是请求的地址
    "fnServerData": retrieveData, // 获取数据的处理函数
    "columns":[
        {"data":"loginName"},
        {"data":"userType"},
        {"data":"userSex"},
        {"data":"userName"},
        {"data":"trueName"},
        {"data":"userPhone"},
        {"data":"userEmail"},
        {"data":"userScore"},
        {"data":"userStatus"},
        {"data":"createTime"}
    ],
    "lengthMenu":[
        [10,15,20]
    ],
    order:[[9,"desc"]],
    "language": {
        "lengthMenu": "  _MENU_ 条数据",
        "emptyTable": "表格中没有数据~",
        "info": "显示 _START_ 到 _END_ 条数据 共 _TOTAL_ 条数据",
        "infoEmpty": "没有数据~",
        "infoFiltered": "(在 _MAX_ 条数据中查询)",
        "lengthMenu": "显示 _MENU_ 条数据",
        "search": "查询:",
        "zeroRecords": "没有找到对应的数据",
        "paginate": {
            "previous":"上一页",
            "next": "下一页",
            "last": "末页",
            "first": "首页"
        }
    },

});

// 3个参数的名字可以随便命名,但必须是3个参数,少一个都不行
function retrieveData(sSource,aoData, fnCallback){
    $.ajax({
        url:sSource,//这个就是请求地址对应sAjaxSource
        data:{"map":aoData},//这个是把datatable的一些基本数据传给后台,比如起始位置,每页显示的行数
        type:'post',
        dataType:'json',
        async : false,
        success : function(result) {
            fnCallback(result);//把返回的数据传给这个方法就可以了,datatable会自动绑定数据的
        },
        error : function(msg) {}
    });
}
