<%@ page contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" language="java"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">

<head>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
<meta name="viewport" content="width=device-width, initial-scale=1.0, maximum-scale=1.0, user-scalable=no">
<link href="/css/shop.css" type="text/css" rel="stylesheet" />
<link href="skin/default/skin.css" rel="stylesheet" type="text/css" id="skin" />
<link href="css/Sellerber.css" type="text/css"  rel="stylesheet" />
<link href="css/bkg_ui.css" type="text/css" rel="stylesheet" />
<link href="font/css/font-awesome.min.css"  rel="stylesheet" type="text/css" />
<script src="js/jquery-1.9.1.min.js" type="text/javascript" ></script>
<script src="js/layer/layer.js" type="text/javascript"></script>
<script src="js/bootstrap.min.js" type="text/javascript"></script>
<script src="js/Sellerber.js" type="text/javascript"></script>
<script src="js/shopFrame.js" type="text/javascript"></script>
<script src="js/jquery.nicescroll.js" type="text/javascript"></script>
<script type="text/javascript" src="js/jquery.cookie.js"></script> 
<title>大气通用购物商城后台管理系统网站模板全套下载_在线演示_电脑网站模板_前端模板_js代码</title>
<meta name="keywords" content="大气,通用,购物商城,后台管理,管理系统,网站模板,全套下载" />
<meta name="description" content="大气通用购物商城后台管理系统网站模板全套下载。" />
</head>
<!--[if lt IE 9]>
  <script src="js/html5shiv.js"></script>
  <script src="js/respond.min.js"></script>
  <script type="text/javascript" src="js/PIE/PIE_IE678.js"></script>
 <![endif]-->
<body>
 <div class="Sellerber" id="Sellerber">
 <!--顶部-->
  <div class="Sellerber_header apex clearfix" id="Sellerber_header">
   <div class="l_f logo"><img src="images/logo_03.png" /></div>
   <div class="r_f Columns_top clearfix">
   <!--<div class="time_style"><i class="fa  fa-clock-o"></i><span id="time"></span></div>-->
   <div class="news l_f"><a href="#" class="fa  fa-bell "></a><em>5</em></div>
     <div class="administrator l_f">
       <img src="images/avatar.png"  width="36px"/><span class="user-info">欢迎你,超级管理员</span><i class="glyph-icon fa  fa-caret-down"></i>
       <ul class="dropdown-menu">
        <li><a href="#"><i class="fa fa-user"></i>个人信息</a></li>
        <li><a href="#"><i class="fa fa-cog"></i>系统设置</a></li>
        <li><a href="javascript:void(0)" id="Exit_system"><i class="fa fa-user-times"></i>退出</a></li>
       </ul>
     </div>
   </div>
  </div>
<!--左侧-->
  <div class="Sellerber_left menu" id="menuBar">
    <div class="show_btn" id="rightArrow"><span></span></div>
    <div class="side_title"><a title="隐藏" class="close_btn"><span></span></a></div>
    <div class="menu_style" id="menu_style">
    <div class="list_content">
    <div class="skin_select">
      <ul class="dropdown-menu dropdown-caret">
         <li><a class="colorpick-btn selected" href="javascript:ovid()"data-val="default"  id="default" style="background-color:#222A2D" ></a></li>
         <li><a class="colorpick-btn" href="javascript:ovid()" data-val="blue" style="background-color:#438EB9;" ></a></li>
         <li><a class="colorpick-btn" href="javascript:ovid()" data-val="green" style="background-color:#72B63F;" ></a></li>
         <li><a class="colorpick-btn" href="javascript:ovid()" data-val="blue" style="background-color:#D0D0D0;" ></a></li>
         <li><a class="colorpick-btn" href="javascript:ovid()" data-val="blue" style="background-color:#FF6868;" ></a></li>
        </ul>     
     </div>
     <div class="search_style">
        <form action="#" method="get" class="sidebar_form">
                    <div class="input-group">
                        <input type="text" name="q" class="form-control">
                        <span class="input-group-btn">
                            <a class="btn_flat" href="javascript:" onclick=""><i class="fa fa-search"></i></a>
                        </span>
                    </div>
                </form>
     </div>     
    <dl class="nav nav-list" id="menu_list">
     <dt class="shop_index nav_link " ><a href="javascript:void(0)" name="shop_index.html" class="iframeurl" title=""><i class="fa fa-home"></i><span class="menu-text">商城首页</span></a></dt>
     <dd class="submenu" style="height:0px; border:0px;"></dd>
     <dt class="nav_link ">
     <a href="javascript:void(0)" class="dropdown-toggle title_nav"><i class="fa fa-desktop"></i><span class="menu-text"> 商品管理 </span><b class="arrow fa fa-angle-down"></b></a>
     </dt>
     <dd class="submenu">
       <ul>
         <li class="home"><a href="javascript:void(0)" name="Products.html" title="产品类表" class="iframeurl"><i class="fa fa-angle-double-right"></i>产品管理</a></li>
         <li class="home"><a href="javascript:void(0)" name="Brand_Manage.html" title="品牌管理" class="iframeurl"><i class="fa fa-angle-double-right"></i>品牌管理</a></li>
         <li class="home"><a href="javascript:void(0)" name="Category_Manage.html" title="分类管理" class="iframeurl"><i class="fa fa-angle-double-right"></i>分类管理</a></li>
         </ul>
         </dd>
  <dt class="nav_link"><a href="#" class="dropdown-toggle title_nav"><i class="fa fa-database"></i><span class="menu-text"> 订单管理 </span><b class="arrow fa fa-angle-down"></b></a></dt>
    <dd class="submenu">
     <ul>
       <li class="home"><a href="javascript:void(0)" name="Order.html" title="订单类表" class="iframeurl"><i class="fa fa-angle-double-right"></i>订单类表</a></li>
       <li class="home"><a href="javascript:void(0)" name="Brand_Manage.html" title="品牌管理" class="iframeurl"><i class="fa fa-angle-double-right"></i>订单处理</a></li>
       <li class="home"><a href="javascript:void(0)" name="Order_Logistics.html" title="物流管理" class="iframeurl"><i class="fa fa-angle-double-right"></i>物流管理</a></li>
        <li class="home"><a href="javascript:void(0)" name="Category_Manage.html" title="分类管理" class="iframeurl"><i class="fa fa-angle-double-right"></i>退款操作</a></li>
       </ul>
      </dd>
       <dt class="nav_link"><a href="#" class="dropdown-toggle title_nav"><i class="fa fa-credit-card"></i><span class="menu-text"> 支付管理 </span><b class="arrow fa fa-angle-down"></b></a></dt>
    <dd class="submenu">
     <ul>
       <li class="home"><a href="javascript:void(0)" name="Products_List.html" title="产品类表" class="iframeurl"><i class="fa fa-angle-double-right"></i>产品类表</a></li>
       <li class="home"><a href="javascript:void(0)" name="Brand_Manage.html" title="品牌管理" class="iframeurl"><i class="fa fa-angle-double-right"></i>品牌</a></li>
       <li class="home"><a href="javascript:void(0)" name="Category_Manage.html" title="分类管理" class="iframeurl"><i class="fa fa-angle-double-right"></i>分类管理</a></li>
       </ul>
      </dd>
      <dt class="nav_link"><a href="#" class="dropdown-toggle title_nav"><i class="fa  fa-th-list"></i><span class="menu-text"> 店铺管理 </span><b class="arrow fa fa-angle-down"></b></a></dt>
    <dd class="submenu">
     <ul>
       <li class="home"><a href="javascript:void(0)" name="Products_List.html" title="产品类表" class="iframeurl"><i class="fa fa-angle-double-right"></i>店铺列表</a></li>
       <li class="home"><a href="javascript:void(0)" name="Brand_Manage.html" title="品牌管理" class="iframeurl"><i class="fa fa-angle-double-right"></i>店铺审核</a></li>
       <li class="home"><a href="javascript:void(0)" name="Category_Manage.html" title="分类管理" class="iframeurl"><i class="fa fa-angle-double-right"></i>店铺分类</a></li>
       </ul>
      </dd>
      <dt class="nav_link"><a href="#" class="dropdown-toggle title_nav"><i class="fa  fa-file-photo-o"></i><span class="menu-text"> 广告管理 </span><b class="arrow fa fa-angle-down"></b></a></dt>
    <dd class="submenu">
     <ul>
       <li class="home"><a href="javascript:void(0)" name="Advertising_list.html" title="广告列表" class="iframeurl"><i class="fa fa-angle-double-right"></i>广告列表</a></li>
       <li class="home"><a href="javascript:void(0)" name="Advertising_sort.html" title="分类管理" class="iframeurl"><i class="fa fa-angle-double-right"></i>分类管理</a></li>
       <li class="home"><a href="javascript:void(0)" name="Category_Manage.html" title="分类管理" class="iframeurl"><i class="fa fa-angle-double-right"></i>分类管理</a></li>
       </ul>
      </dd>
  <dt class="nav_link"><a href="#" class="dropdown-toggle title_nav"><i class="fa fa-bar-chart"></i><span class="menu-text"> 报表管理 </span><b class="arrow fa fa-angle-down"></b></a></dt>
    <dd class="submenu">
     <ul>
       <li class="home"><a href="javascript:void(0)" name="system_info.html" title="订单报表" class="iframeurl"><i class="fa fa-angle-double-right"></i>订单报表</a></li>
       <li class="home"><a href="javascript:void(0)" name="Columns.html" title="产品销量" class="iframeurl"><i class="fa fa-angle-double-right"></i>产品销量</a></li>
       <li class="home"><a href="javascript:void(0)" name="Category_Manage.html" title="分类管理" class="iframeurl"><i class="fa fa-angle-double-right"></i>交易量</a></li>
       </ul>
      </dd>
        <dt class="nav_link"><a href="#" class="dropdown-toggle title_nav"><i class="fa fa-user"></i><span class="menu-text"> 会员管理 </span><b class="arrow fa fa-angle-down"></b></a></dt>
    <dd class="submenu">
     <ul>
       <li class="home"><a href="javascript:void(0)" name="member_list.html" title="会员列表" class="iframeurl"><i class="fa fa-angle-double-right"></i>会员列表</a></li>
       <li class="home"><a href="javascript:void(0)" name="Columns.html" title="等级管理" class="iframeurl"><i class="fa fa-angle-double-right"></i>等级管理</a></li>
       <li class="home"><a href="javascript:void(0)" name="Category_Manage.html" title="会员记录" class="iframeurl"><i class="fa fa-angle-double-right"></i>会员记录</a></li>
       </ul>
      </dd>
      <dt class="nav_link"><a href="#" class="dropdown-toggle title_nav"><i class="fa fa-cogs"></i><span class="menu-text"> 系统管理 </span><b class="arrow fa fa-angle-down"></b></a></dt>
    <dd class="submenu">
     <ul>
       <li class="home"><a href="javascript:void(0)" name="system_info.html" title="系统信息" class="iframeurl"><i class="fa fa-angle-double-right"></i>系统信息</a></li>
       <li class="home"><a href="javascript:void(0)" name="Columns.html" title="自定义导航栏" class="iframeurl"><i class="fa fa-angle-double-right"></i>自定义导航栏</a></li>
       <li class="home"><a href="javascript:void(0)" name="Category_Manage.html" title="分类管理" class="iframeurl"><i class="fa fa-angle-double-right"></i>日志操作</a></li>
       </ul>
      </dd>
       <dt class="nav_link"><a href="#" class="dropdown-toggle title_nav"><i class="fa fa-file-text-o"></i><span class="menu-text"> 文章管理 </span><b class="arrow fa fa-angle-down"></b></a></dt>
    <dd class="submenu">
     <ul>
       <li class="home"><a href="javascript:void(0)" name="Article_list.html" title="文章列表" class="iframeurl"><i class="fa fa-angle-double-rightt"></i>文章列表</a></li>
       </ul>
      </dd>
       <dt class="nav_link"><a href="#" class="dropdown-toggle title_nav"><i class="fa  fa-hdd-o "></i><span class="menu-text"> OTA管理 </span><b class="arrow fa fa-angle-down"></b></a></dt>
    <dd class="submenu">
     <ul>
       <li class="home"><a href="javascript:void(0)" name="Article_list.html" title="文章列表" class="iframeurl"><i class="fa fa-angle-double-rightt"></i>门票列表</a></li>
       <li class="home"><a href="javascript:void(0)" name="Article_list.html" title="文章列表" class="iframeurl"><i class="fa fa-angle-double-rightt"></i>门票设置</a></li>
       </ul>
      </dd>
        <dt class="nav_link"><a href="#" class="dropdown-toggle title_nav"><i class="fa fa-file-text-o"></i><span class="menu-text">单页面管理 </span><b class="arrow fa fa-angle-down"></b></a></dt>
    <dd class="submenu">
     <ul>
       <li class="home"><a href="javascript:void(0)" name="page_list.html" title="页面列表" class="iframeurl"><i class="fa fa-angle-double-right"></i>页面列表</a></li>
       </ul>
      </dd>
       <dt class="nav_link"><a href="#" class="dropdown-toggle title_nav"><i class="fa fa-users"></i><span class="menu-text">管理员管理 </span><b class="arrow fa fa-angle-down"></b></a></dt>
    <dd class="submenu">
     <ul>
       <li class="home"><a href="javascript:void(0)" name="admin_Competence.html" title="权限设置" class="iframeurl"><i class="fa fa-angle-double-right"></i>权限设置</a></li>
       <li class="home"><a href="javascript:void(0)" name="administrator_list.html" title="管理员列表" class="iframeurl"><i class="fa fa-angle-double-right"></i>管理员列表</a></li>
       <li class="home"><a href="javascript:void(0)" name="Personal_info.htm" title="个人信息" class="iframeurl"><i class="fa fa-angle-double-right"></i>个人信息</a></li>
       </ul>
      </dd>
       <dt class="nav_link"><a href="#" class="dropdown-toggle title_nav"><i class="fa fa-wrench"></i><span class="menu-text">界面工具</span><b class="arrow fa fa-angle-down"></b></a></dt>
    <dd class="submenu">
     <ul>
       <li class="home"><a href="javascript:void(0)" name="interface.html" title="界面模板" class="iframeurl"><i class="fa fa-angle-double-right"></i>界面模板</a></li>
       <li class="home"><a href="javascript:void(0)" name="form_builder.html" title="表单构建器" class="iframeurl"><i class="fa fa-angle-double-right"></i>表单构建器</a></li>
       </ul>
      </dd>
    </dl>  
    </div>
  </div>
 </div>
<!--内容-->
  <div class="Sellerber_content" id="contents">
    <div class="breadcrumbs" id="breadcrumbs">
       <a id="js-tabNav-prev" class="radius btn-default left_roll" href="javascript:;"><i class="fa fa-backward"></i></a>
       <div class="breadcrumb_style clearfix">
	  <ul class="breadcrumb clearfix" id="min_title_list">
        <li class="active home"><span title="我的桌面" data-href="index.html"><i class="fa fa-home home-icon"></i>首页</span></li>
      </ul>
      </div>
       <a id="js-tabNav-next" class="radius btn-default right_roll" href="javascript:;"><i class="fa fa-forward"></i></a>
       <div class="btn-group radius roll-right">
                    <a class="dropdown tabClose" data-toggle="dropdown" aria-expanded="false">
                        页签操作<i class="fa fa-caret-down" style="padding-left: 3px;"></i>
                    </a>
                    <ul class="dropdown-menu dropdown-menu-right" id="dropdown_menu">
                        <li><a class="tabReload" href="javascript:void();">刷新当前</a></li>
                        <li><a class="tabCloseCurrent" href="javascript:void();">关闭当前</a></li>
                        <li><a class="tabCloseAll" href="javascript:void();">全部关闭</a></li>
                        <li><a class="tabCloseOther" href="javascript:void();">除此之外全部关闭</a></li>
                    </ul>
                </div>
                <a href="javascript:void()" class="radius roll-right fullscreen"><i class="fa fa-arrows-alt"></i></a>
    </div>
  <!--具体内容-->  
  <div id="iframe_box" class="iframe_content">
  <div class="show_iframe" id="show_iframe">
       <iframe scrolling="yes" class="simei_iframe" frameborder="0" src="shop_index.html" name="iframepage" data-href="shop_index.html"></iframe>
       </div>
      </div>
  </div>
<!--底部-->
  <div class="Sellerber_bottom info" id="bottom">
  <span class="l_f">版权所有：南京思美软件系统有限公司</span>
  </div>
 </div>
</body>
</html>
<script>
//设置框架
 $(function() { 
	$("#Sellerber").frame({
		float : 'left',
		color_btn:'.skin_select',
		header:70,//顶部高度
		bottom:30,//底部高度
		menu:200,//菜单栏宽度
		Sellerber_menu:'.list_content',
		Sellerber_header:'.Sellerber_header',
	});
});
//时间设置
  function currentTime(){ 
   var weekday=new Array(7)
	weekday[0]="星期一"
	weekday[1]="星期二"
	weekday[2]="星期三"
	weekday[3]="星期四"
	weekday[4]="星期五"
	weekday[5]="星期六"
	weekday[6]="星期日"	
    var d=new Date(),str='';	
    str+=d.getFullYear()+'年'; 
    str+=d.getMonth() + 1+'月'; 
    str+=d.getDate()+'日'; 
    str+=d.getHours()+'时'; 
    str+=d.getMinutes()+'分'; 
    str+= d.getSeconds()+'秒'+'&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;';
	str+=weekday[d.getDay()-1]; 
    return str; 
} 
setInterval(function(){$('#time').html(currentTime)},1000); 
$('#Exit_system').on('click', function(){
      layer.confirm('是否确定退出系统？', {
     btn: ['是','否'] ,//按钮
	 icon:2,
    }, 
	function(){
	  location.href="login.html";
        
    });
});
</script>
<script type="text/javascript">
$("#menu_style").niceScroll({  
	cursorcolor:"#888888",  
	cursoropacitymax:1,  
	touchbehavior:false,  
	cursorwidth:"5px",  
	cursorborder:"0",  
	cursorborderradius:"5px"  
}); 
</script>

