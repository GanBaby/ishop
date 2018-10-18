var Plugins = function(){}
/**
 * bootstrap table封装插件
 * @param option 参数
 * @constructor
 */
Plugins.table = function(option) {
    //表格插件的属性
    var tableAttr = {};
    tableAttr.el = null==option||null==option.el?null:option.el;//初始化的表格标签
    tableAttr.url = null==option||option.url==""?"":option.url; //访问的地址
    tableAttr.pagination = null==option||option.pagination==null?true:option.pagination;//是否开启分页，默认是开启
    tableAttr.sidePagination = null==option||option.sidePagination==null?"server":option.sidePagination;//分页方式：client客户端分页，server服务端分页
    tableAttr.method = null==option||option.method==null?"get":option.method;//请求方式，默认是get请求
    tableAttr.toolbar = null==option||option.toolbar==null?"#toolbar":option.toolbar;//工具按钮用哪个容器，默认是id为toolbar的table标签
    tableAttr.search = null==option||option.search==null?false:option.search;//是否显示表格搜索，默认是关闭
    tableAttr.height = null==option||option.height==null?"":option.height;////行高，默认是自动调整
    tableAttr.clickToSelect = null==option||option.clickToSelect==null?false:option.clickToSelect;//是否启用点击选中行，默认不开启
    tableAttr.uniqueId = null==option||option.uniqueId==null?"":option.uniqueId;//每一行的唯一标识符，一般为主键列
    tableAttr.showToggle = null==option||option.showToggle==null?false:option.showToggle;//是否显示详细视图和列表视图的切换按钮,默认不显示
    tableAttr.cardView = null==option||option.cardView==null?false:option.cardView;//是否显示详细视图,默认不显示
    tableAttr.locale = null==option||option.locale==null?"zh-CN":option.locale;//设置语言支持，默认是中文支持
    tableAttr.pageSize = null==option||option.pageSize==null?10:option.pageSize;//每页数据，默认是10条
    tableAttr.pageList = null==option||option.pageList==null?[10,15,20]:option.pageList;//可选的每页的数据，默认是[10,15,20]
    tableAttr.toolTag = null==option||option.toolTag==null?null:option.toolTag;//工具组标签
    tableAttr.columns = null==option||option.columns==null?null:option.columns;//每列的数据值
    tableAttr.showColumns = null==option||option.showColumns==null?false:option.showColumns;// 显示所有的列
    tableAttr.striped = null==option||option.striped==null?true:option.striped;// 隔行变色
    tableAttr.sortName = null==option||option.sortName==null?"":option.sortName;//排序字段
    tableAttr.sortOrder = null==option||option.sortOrder==null?true:option.sortOrder;//是否启用排序

    $(tableAttr.el).bootstrapTable({
        url : tableAttr.url,    //数据请求路径
        pagination:tableAttr.pagination, //开启分页
        sidePagination:tableAttr.sidePagination, //服务器端分页
        method : tableAttr.method,      //请求类型
        toolbar:tableAttr.toolbar, //工具按钮用哪个容器
        search:tableAttr.search,//是否显示表格搜索
        clickToSelect:tableAttr.clickToSelect,//是否启用点击选中行
        height:tableAttr.height,//行高，如果没有设置height属性，表格自动调整
        uniqueId:tableAttr.uniqueId,//每一行的唯一标识符，一般为主键列
        showToggle:tableAttr.showToggle,//是否显示详细视图和列表视图的切换按钮
        cardView:tableAttr.cardView,//是否显示详细视图
        locale:tableAttr.locale,//中文支持
        pageSize : tableAttr.pageSize,//每页数据
        pageList : tableAttr.pageList,//可选的每页的数据
        columns : tableAttr.columns,//每列的数据值
        showColumns : tableAttr.showColumns,// 显示所有的列
        striped : tableAttr.striped,// 隔行变色
        sortName : tableAttr.sortName,//排序字段
        sortOrder : tableAttr.sortOrder,//是否启用排序
        queryParams : function(params) {//自定义参数，这里的参数是传给后台的，我这是是分页用的
            //这里的params是table提供的
            var data={
                offset : params.offset/params.limit+1,//从数据库第几条记录开始(当前页)
                pageSize : params.limit//找多少条
            }
            if(tableAttr.toolTag!=null){
                $(tableAttr.toolTag).each(function(index,value){
                    data[value.substr(1)]=$(value).val();
                });
            }
            return data
        }
    });

    //添加事件
    if(tableAttr.toolTag!=null){
        //给搜索按钮添加事件
        $(".searchBtn").on("click",
            function(){
                table.refresh();
            }
        );
        //给搜索框标签添加回车事件
        $(tableAttr.toolTag).each(function(index,value){
            $(value).keypress(function(e){
                var eCode = e.keyCode ? e.keyCode : e.which ? e.which : e.charCode;
                if (eCode == 13){
                    table.refresh();
                }
            })
        });
    }
    //返回插件的常用功能事件
    var table = {
        refresh:function(){
            // $(tableAttr.el).bootstrapTable('refresh',{"url":tableAttr.url});
            $(tableAttr.el).bootstrapTable('refresh',{silent: true}); //静默方式刷新数据
        }
    }
    return table;
}
//================================================我是可爱的分割线=================================================================
/**
 * toastr通知插件封装
 * @param option 参数
 * @constructor
 */
Plugins.toastr = function(option) {
    //通知插件的属性
    var toastrAttr = {};
    toastrAttr.status = null==option||null==option.status?"info":option.status;//消息提示样式 默认是常规，info 常规，success 成功，warning 警告，error 错误
    toastrAttr.title = null==option||null==option.title?"":option.title;//消息标题,默认为空
    toastrAttr.center = null==option||null==option.center?"":option.center;//消息内容,默认为空
    toastrAttr.closeButton = null==option||null==option.closeButton?true:option.closeButton;//是否显示关闭按钮（提示框右上角关闭按钮）默认是显示
    toastrAttr.debug = null==option||null==option.debug?false:option.debug;//是否使用debug模式 默认是不使用
    toastrAttr.newestOnTop = null==option||null==option.newestOnTop?false:option.newestOnTop;//在队列的顶部或底部显示新的Toast消息。 默认是false
    toastrAttr.progressBar = null==option||null==option.progressBar?false:option.progressBar;//是是否显示进度条（设置关闭的超时时间进度条） 默认是不显示
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
    toastrAttr.positionClass = null==option||null==option.positionClass?"toast-bottom-right":option.positionClass;//弹出窗的位置 默认是 toast-bottom-right;
    toastrAttr.preventDuplicates = null==option||null==option.preventDuplicates?false:option.preventDuplicates;//防止显示相同的Toast消息，为true时不会显示相同的信息,默认是false
    toastrAttr.onclick = null==option||null==option.onclick?null:option.onclick;///点击消息框自定义事件
    toastrAttr.showDuration = null==option||null==option.showDuration?"300":option.showDuration;///显示的动画时间,默认是300
    toastrAttr.hideDuration = null==option||null==option.hideDuration?"150":option.hideDuration;//消失的动画时间,默认是150
    toastrAttr.timeOut = null==option||null==option.timeOut?"0":option.timeOut;//展现时间，默认是0
    toastrAttr.extendedTimeOut = null==option||null==option.extendedTimeOut?"500":option.extendedTimeOut;//加长展示时间，默认是500
    toastrAttr.showEasing = null==option||null==option.showEasing?"swing":option.showEasing;//显示时的动画缓冲方式，默认是swing
    toastrAttr.hideEasing = null==option||null==option.hideEasing?"linear":option.hideEasing;//消失时的动画缓冲方式，默认是linear
    toastrAttr.showMethod = null==option||null==option.showMethod?"fadeIn":option.showMethod;//显示时的动画方式，默认是fadeIn
    toastrAttr.hideMethod = null==option||null==option.hideMethod?"fadeOut":option.hideMethod;//消失时的动画方式，默认是fadeOutr

    toastr.options = {
        "closeButton": toastrAttr.closeButton, //是否显示关闭按钮（提示框右上角关闭按钮）
        "debug": toastrAttr.debug, //是否使用debug模式
        "newestOnTop": toastrAttr.newestOnTop, //在队列的顶部或底部显示新的Toast消息。
        "progressBar": toastrAttr.progressBar, //是否显示进度条（设置关闭的超时时间进度条）
        "positionClass": toastrAttr.positionClass, //弹出窗的位置
        "preventDuplicates": v.preventDuplicates,  //防止显示相同的Toast消息，为true时不会显示相同的信息
        "onclick": toastrAttr.onclick,    //点击消息框自定义事件
        "showDuration": toastrAttr.showDuration, //显示的动画时间
        "hideDuration": toastrAttr.hideDuration, //消失的动画时间
        "timeOut": toastrAttr.timeOut, //展现时间
        "extendedTimeOut": toastrAttr.extendedTimeOut, //加长展示时间
        "showEasing": toastrAttr.showEasing, //显示时的动画缓冲方式
        "hideEasing": toastrAttr.hideEasing, //消失时的动画缓冲方式
        "showMethod": toastrAttr.showMethod, //显示时的动画方式
        "hideMethod": toastrAttr.hideMethod //消失时的动画方式
    }

    //弹出消息框
    // toastr.success("祝贺你成功了");
    toastr[toastrAttr.status](toastrAttr.center,toastrAttr.title);
}
//================================================我也是可爱的分割线=================================================================
/**
 * jquery validate插件封装
 * @param option 配置参数
 */
Plugins.validate = function(option){
    //以下为修改jQuery Validation插件兼容Bootstrap的方法，没有直接写在插件中是为了便于插件升级
    $.validator.setDefaults({
        highlight: function (element) {
            $(element).closest('.form-group').removeClass('has-success').addClass('has-error');
        },
        success: function (element) {
            element.closest('.form-group').removeClass('has-error').addClass('has-success');
        },
        errorElement: "span",
        errorPlacement: function (error, element) {
            if (element.is(":radio") || element.is(":checkbox")) {
                error.appendTo(element.parent().parent().parent());
            } else {
                error.appendTo(element.parent());
            }
        },
        errorClass: "help-block m-b-none",
        validClass: "help-block m-b-none"
    });

    //验证插件的属性
    var validateAttr = {};
    validateAttr.el = null==option||null==option.el?"validateForm":option.el;//验证的表单id，默认为validateForm
    validateAttr.submitBtn = null==option||null==option.submitBtn?"submit":option.submitBtn;//验证表单的提交按钮的id，默认是submit
    validateAttr.callback = null==option||null==option.callback?function(){}:option.callback;//表单验证成功后提交的方法

    //获取所有需要验证的元素
    var elems = $('#'+validateAttr.el+' [required]');

    var icon = "<i class='fa fa-times-circle'></i> ";

    var data = {};
    elems.each(function(i,e){
        var eleAttr ={};
        //非空提示
        eleAttr["required"] = icon+"不能为空";
        if($(e).attr("minlength")){
            eleAttr["minlength"]=icon + "必须"+$(e).attr("minlength")+"字符以上";
        }
        data[$(e).attr("name")] = eleAttr;
    })

    $("#"+validateAttr.el).validate({
        messages: data
        //重写showErrors
        /* showErrors: function (errorMap, errorList) {
             $.each(errorList, function (i, v) {
                 //在此处用了layer的方法,显示效果更美观
                 layer.tips(v.message, v.element, {tips: [2, '#000'],time: 2000 });
                 return false;
             });
         }*/
    })
    //提交表单时的点击事件
    $("#"+validateAttr.submitBtn).click(function(){
        if($("#"+validateAttr.el).valid()){
            validateAttr.callback();
        }
    });
}
