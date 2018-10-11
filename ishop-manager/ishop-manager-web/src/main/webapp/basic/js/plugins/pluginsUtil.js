/**
 * bootstrap table封装插件
 * @param option 参数
 * @constructor
 */
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
    this.pageList = null==option||option.pageList==null?[10,15,20]:option.pageList;//可选的每页的数据，默认是[10,15,20]
    this.toolTag = null==option||option.toolTag==null?null:option.toolTag;//工具组标签
    this.columns = null==option||option.columns==null?null:option.columns;//每列的数据值

    $(this.tag).bootstrapTable({
        url : this.url,    //数据请求路径
        pagination:this.pagination, //开启分页
        sidePagination:this.sidePagination, //服务器端分页
        method : this.method,      //请求类型
        toolbar:this.toolbar, //工具按钮用哪个容器
        search:this.search,//是否显示表格搜索
        clickToSelect:this.clickToSelect,//是否启用点击选中行
        height:this.height,//行高，如果没有设置height属性，表格自动调整
        uniqueId:this.uniqueId,//每一行的唯一标识符，一般为主键列
        showToggle:this.showToggle,//是否显示详细视图和列表视图的切换按钮
        cardView:this.cardView,//是否显示详细视图
        locale:this.locale,//中文支持
        pageSize : this.pageSize,//每页数据
        pageList : this.pageList,//可选的每页的数据
        queryParams : function(params) {//自定义参数，这里的参数是传给后台的，我这是是分页用的
            //这里的params是table提供的
            var data={
                offset : params.offset/10,//从数据库第几条记录开始
                pageSize : params.limit//找多少条
            }
            if(this.toolTag!=null){
                this.toolTag.each(function(item){
                    data.put(item,$(item));
                });
            }
            return data
        },
        columns : this.columns
    });
}
