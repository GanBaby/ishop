
//获取根路径相当于jsp中的${pageContext.request.contextPath}
$.fn.rootPath = function(){
    var rootPath = $("#PageContext").val()+"/";
    return rootPath;
}