<%@ page contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" language="java" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">


<head>

    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">


    <title>用户列表</title>
    <%--网页头部的logo图片--%>
    <link rel="shortcut icon" href="${pageContext.request.contextPath}/admin/H+/img/favicon.ico">
    <%--bootstrap--%>
    <link href="${pageContext.request.contextPath}/admin/H+/css/bootstrap.min.css?v=3.3.6" rel="stylesheet">
    <%--字体图标--%>
    <link href="${pageContext.request.contextPath}/admin/H+/css/font-awesome.css?v=4.4.0" rel="stylesheet">
    <!-- bootstrap表格css -->
    <link href="${pageContext.request.contextPath}/admin/H+/css/plugins/dataTables/dataTables.bootstrap.css"
          rel="stylesheet">
    <%--动画的css--%>
    <link href="${pageContext.request.contextPath}/admin/H+/css/animate.css" rel="stylesheet">
    <%--H+的CSS样式--%>
    <link href="${pageContext.request.contextPath}/admin/H+/css/style.css?v=4.1.0" rel="stylesheet">

</head>

<body class="gray-bg">
<div class="wrapper wrapper-content animated fadeInRight">
    <div class="row">
        <div class="col-sm-12">
            <div class="ibox float-e-margins">
                <div class="ibox-title">
                    <h5>基本
                        <small>分类，查找</small>
                    </h5>
                    <div class="ibox-tools">
                        <a class="collapse-link">
                            <i class="fa fa-chevron-up"></i>
                        </a>
                        <a class="close-link">
                            <i class="fa fa-times"></i>
                        </a>
                    </div>
                </div>
                <div class="ibox-content">

                    <table class="table table-striped table-bordered table-hover userListTable">
                        <thead>
                        <tr>
                            <th>账号</th>
                            <th>用户类型</th>
                            <th>性别</th>
                            <th>用户名称</th>
                            <th>真实姓名</th>
                            <th>用户电话</th>
                            <th>用户邮箱</th>
                            <th>用户积分</th>
                            <th>账号状态</th>
                        </tr>
                        </thead>
                        <tbody>
                        </tbody>
                    </table>

                </div>
            </div>
        </div>
    </div>
</div>
<!-- 全局js -->
<script src="${pageContext.request.contextPath}/admin/H+/js/jquery.min.js?v=2.1.4"></script>
<script src="${pageContext.request.contextPath}/admin/H+/js/bootstrap.min.js?v=3.3.6"></script>

<script src="${pageContext.request.contextPath}/admin/H+/js/plugins/jeditable/jquery.jeditable.js"></script>

<!-- bootstrap表格js -->
<script src="${pageContext.request.contextPath}/admin/H+/js/plugins/dataTables/jquery.dataTables.js"></script>
<script src="${pageContext.request.contextPath}/admin/H+/js/plugins/dataTables/dataTables.bootstrap.js"></script>

<!-- 自定义js -->
<script src="${pageContext.request.contextPath}/admin/H+/js/content.js?v=1.0.0"></script>
<!--页面的js文件-->
<script src="${pageContext.request.contextPath}/admin/js/user/userList.js"></script>

</body>

</html>
