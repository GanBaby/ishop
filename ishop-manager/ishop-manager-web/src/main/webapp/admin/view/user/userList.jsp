<%@ page contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" language="java" %>

    <!-- bootstrap表格css -->
    <link href="${pageContext.request.contextPath}/admin/H+/css/plugins/dataTables/dataTables.bootstrap.css"
          rel="stylesheet">
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
                            <th>注册时间</th>
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

<%--动态引入全局js与css--%>
<jsp:include page="${pageContext.request.contextPath}/admin/view/main/admin_main.jsp" flush="true" />
<!-- bootstrap表格js -->
<script src="${pageContext.request.contextPath}/admin/H+/js/plugins/dataTables/jquery.dataTables.js"></script>
<script src="${pageContext.request.contextPath}/admin/H+/js/plugins/dataTables/dataTables.bootstrap.js"></script>
<!--页面的js文件-->
<script src="${pageContext.request.contextPath}/admin/js/user/userList.js"></script>

</body>
