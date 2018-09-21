var Table = function(option) {

    this.tag = null==option||null==option.tag?null:option.tag;//初始化的表格标签
    this.url = null==option||option.url==""?"":option.url; //访问的地址
    this.pagination = null==option||option.pagination==null?true:option.pagination;//是否开启分页，默认是开启
    this.sidePagination = null==option||option.sidePagination==null?"server":option.sidePagination;//分页方式：client客户端分页，server服务端分页
    this.method = null==option||option.method==null?"get":option.method;//请求方式，默认是get请求
    this.toolbar = null==option||option.toolbar==null?"#toolbar":option.toolbar;//工具按钮用哪个容器，默认是id为toolbar的table标签
    this.search = null==option||option.search==null?false:option.search;//是否显示表格搜索，默认是关闭
    this.height = null==option||option.height==null?"":option.height;////行高，默认是自动调整
    this.clickToSelect = null==option||option.clickToSelect==null?false:option.clickToSelect;//是否启用点击选中行，默认不开启
    this.uniqueId = null==option||option.uniqueId==null?"":option.uniqueId;//每一行的唯一标识符，一般为主键列
    this.showToggle = null==option||option.showToggle==null?false:option.showToggle;//是否显示详细视图和列表视图的切换按钮,默认不显示
    this.cardView = null==option||option.cardView==null?false:option.cardView;//是否显示详细视图,默认不显示
    this.locale = null==option||option.locale==null?"zh-CN":option.locale;//设置语言支持，默认是中文支持
    this.pageSize = null==option||option.pageSize==null?10:option.pageSize;//每页数据，默认是10条

    $(this.tag).bootstrapTable({
        url : this.url,    //数据请求路径
        pagination:this.pagination, //开启分页
        sidePagination:'server', //服务器端分页
        method : 'get',      //请求类型
        toolbar:'#toolbar', //工具按钮用哪个容器
        search:true,//是否显示表格搜索
        clickToSelect:false,//是否启用点击选中行
        height:"",//行高，如果没有设置height属性，表格自动调整
        uniqueId:"userId",//每一行的唯一标识符，一般为主键列
        showToggle:true,//是否显示详细视图和列表视图的切换按钮
        cardView:false,//是否显示详细视图
        locale:"zh-CN",//中文支持
        pageSize : 10,//每页数据
        pageList : [ 10, 15, 20],//可选的每页的数据
        queryParams : function(params) {//自定义参数，这里的参数是传给后台的，我这是是分页用的
            return {
                //这里的params是table提供的
                offset : params.offset/10,//从数据库第几条记录开始
                pageSize : params.limit//找多少条
            };
        },
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
}
