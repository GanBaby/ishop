var Plugins = function(){}

/**
 * bootstrap table封装插件
 * @param option 参数
 * @constructor
 */
Plugins.table = function(option) {
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
    this.showColumns = null==option||option.showColumns==null?false:option.showColumns;// 显示所有的列
    this.striped = null==option||option.striped==null?true:option.striped;// 隔行变色
    this.sortName = null==option||option.sortName==null?"":option.sortName;//排序字段
    this.sortOrder = null==option||option.sortOrder==null?true:option.sortOrder;//是否启用排序

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
        columns : this.columns,//每列的数据值
        showColumns : this.showColumns,// 显示所有的列
        striped : this.striped,// 隔行变色
        sortName : this.sortName,//排序字段
        sortOrder : this.sortOrder,//是否启用排序
        queryParams : function(params) {//自定义参数，这里的参数是传给后台的，我这是是分页用的
            //这里的params是table提供的
            var data={
                offset : params.offset/params.limit+1,//从数据库第几条记录开始(当前页)
                pageSize : params.limit//找多少条
            }
            if(this.toolTag!=null){
                this.toolTag.each(function(item){
                    data.put(item,$(item));
                });
            }
            return data
        }
    });
}


/**
 * toastr通知插件封装
 * @param option 参数
 * @constructor
 */
Plugins.toastr = function(option) {
    this.status = null==option||null==option.status?"info":option.status;//消息提示样式 默认是常规，info 常规，success 成功，warning 警告，error 错误
    this.title = null==option||null==option.title?"":option.title;//消息标题,默认为空
    this.center = null==option||null==option.center?"":option.center;//消息内容,默认为空
    this.closeButton = null==option||null==option.closeButton?true:option.closeButton;//是否显示关闭按钮（提示框右上角关闭按钮）默认是显示
    this.debug = null==option||null==option.debug?false:option.debug;//是否使用debug模式 默认是不使用
    this.newestOnTop = null==option||null==option.newestOnTop?false:option.newestOnTop;//在队列的顶部或底部显示新的Toast消息。 默认是false
    this.progressBar = null==option||null==option.progressBar?false:option.progressBar;//是是否显示进度条（设置关闭的超时时间进度条） 默认是不显示
    /**弹出窗的位置
     * toast-top-left    顶端左边
     * toast-top-right   顶端右边
     * toast-top-center  顶端中间
     * toast-top-full-width 顶端，宽度铺满整个屏幕
     * toast-botton-right 底部右边
     * toast-bottom-left  底部左边
     * toast-bottom-center 底部中间
     * toast-bottom-full-width 顶端，宽度铺满整个屏幕
     **/
    this.positionClass = null==option||null==option.positionClass?"toast-bottom-right":option.positionClass;//弹出窗的位置 默认是 toast-bottom-right;
    this.preventDuplicates = null==option||null==option.preventDuplicates?false:option.preventDuplicates;//防止显示相同的Toast消息，为true时不会显示相同的信息,默认是false
    this.onclick = null==option||null==option.onclick?null:option.onclick;///点击消息框自定义事件
    this.showDuration = null==option||null==option.showDuration?"300":option.showDuration;///显示的动画时间,默认是300
    this.hideDuration = null==option||null==option.hideDuration?"150":option.hideDuration;//消失的动画时间,默认是150
    this.timeOut = null==option||null==option.timeOut?"0":option.timeOut;//展现时间，默认是0
    this.extendedTimeOut = null==option||null==option.extendedTimeOut?"500":option.extendedTimeOut;//加长展示时间，默认是500
    this.showEasing = null==option||null==option.showEasing?"swing":option.showEasing;//显示时的动画缓冲方式，默认是swing
    this.hideEasing = null==option||null==option.hideEasing?"linear":option.hideEasing;//消失时的动画缓冲方式，默认是linear
    this.showMethod = null==option||null==option.showMethod?"fadeIn":option.showMethod;//显示时的动画方式，默认是fadeIn
    this.hideMethod = null==option||null==option.hideMethod?"fadeOut":option.hideMethod;//消失时的动画方式，默认是fadeOutr

    toastr.options = {
        "closeButton": this.closeButton, //是否显示关闭按钮（提示框右上角关闭按钮）
        "debug": this.debug, //是否使用debug模式
        "newestOnTop": this.newestOnTop, //在队列的顶部或底部显示新的Toast消息。
        "progressBar": this.progressBar, //是否显示进度条（设置关闭的超时时间进度条）
        "positionClass": this.positionClass, //弹出窗的位置
        "preventDuplicates": this.preventDuplicates,  //防止显示相同的Toast消息，为true时不会显示相同的信息
        "onclick": this.onclick,    //点击消息框自定义事件
        "showDuration": this.showDuration, //显示的动画时间
        "hideDuration": this.hideDuration, //消失的动画时间
        "timeOut": this.timeOut, //展现时间
        "extendedTimeOut": this.extendedTimeOut, //加长展示时间
        "showEasing": this.showEasing, //显示时的动画缓冲方式
        "hideEasing": this.hideEasing, //消失时的动画缓冲方式
        "showMethod": this.showMethod, //显示时的动画方式
        "hideMethod": this.hideMethod //消失时的动画方式
    }

    //弹出消息框
    // toastr.success("祝贺你成功了");
    toastr[this.status](this.center,this.title);
}

