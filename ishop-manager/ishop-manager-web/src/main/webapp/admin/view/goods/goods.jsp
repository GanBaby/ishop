<%@ page contentType="text/html; charset=UTF-8" pageEncoding="utf-8" language="java"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">

<head>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8">
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
                <div class="col-md-12 col-sm-12 col-xs-12">
                    <div id="toolbar" class="form-inline">
                        <div class="form-group">
                            <label for="nameSearch">商品名称:</label>
                            <input type="text" class="form-control" id="nameSearch">
                        </div>
                        <button type="submit" class="btn btn-success searchBtn">搜索</button>
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

<!-- 修改模态窗 -->
<div class="modal fade" id="modifyModal">
    <div class="modal-dialog">
        <div class="modal-content">
            <div class="modal-header">
                <button type="button" class="close" data-dismiss="modal">×</button>
                <h4 class="modal-title">修改商品信息</h4>
            </div>
            <div class="modal-body">
                <div class="form-inline">
                    <div class="form-group">
                        <label >商品ID:</label>
                        <input type="text" class="form-control" id="goodsId">
                    </div>
                    <div class="form-group">
                        <label>商品编号:</label>
                        <input type="text" class="form-control" id="goodsNo">
                    </div>
                    <div class="form-group">
                        <label>商品名称:</label>
                        <input type="text" class="form-control" id="goodsName">
                    </div>
                    <div class="form-group">
                        <label>商品图片:</label>
                        <div class="col-sm-10">
                            <input type="file" class="form-control" id="goodsImg">
                        </div>
                    </div>
                    <div class="form-group">
                        <label>当前状态:</label>
                        <select class="form-control" id="status"></select>
                    </div>
                </div>
            <div class="modal-footer">
                <button class="btn btn-default" data-dismiss="modal">关闭</button>
                <button class="btn btn-primary" id="saveModify">保存</button>
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



