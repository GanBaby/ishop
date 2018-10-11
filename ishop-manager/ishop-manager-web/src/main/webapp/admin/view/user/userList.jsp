<%@ page contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" language="java"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">


<head>
<!-- bootstrap表格css -->
<link href="${pageContext.request.contextPath}/admin/H+/css/plugins/bootstrap-table/bootstrap-table.min.css" rel="stylesheet">
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
                    </table>

                </div>
            </div>
        </div>
    </div>
</div>

<!-- 动态引入全局js与css -->
<jsp:include page="${pageContext.request.contextPath}/admin/view/main/admin_main.jsp" flush="true"/>
<!-- bootstrap表格js -->
<script src="${pageContext.request.contextPath}/admin/H+/js/plugins/bootstrap-table/bootstrap-table.min.js"></script>
<script src="${pageContext.request.contextPath}/admin/H+/js/plugins/bootstrap-table/bootstrap-table-mobile.min.js"></script>
<script src="${pageContext.request.contextPath}/admin/H+/js/plugins/bootstrap-table/locale/bootstrap-table-zh-CN.min.js"></script>

<!--页面的js文件-->
<script src="${pageContext.request.contextPath}/admin/js/user/userList.js"></script>

</body>
</html>

