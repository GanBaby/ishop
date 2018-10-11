<%--
  Created by IntelliJ IDEA.
  User: ASUS
  Date: 2018/10/8
  Time: 14:42
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" language="java"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">

<head>
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
                    <table class="table table-striped table-bordered table-hover goodsTable">
                    </table>
                </div>

            </div>

        </div>
    </div>
</div>
<!-- 动态引入全局js与css -->
<jsp:include page="${pageContext.request.contextPath}/admin/view/main/admin_main.jsp" flush="true"/>
<!--页面的js文件-->
<script src="${pageContext.request.contextPath}/admin/js/goods/goods.js"></script>

</body>
</html>



