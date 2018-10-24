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
<div class="modal fade" id="editModifyModal">
    <div class="modal-dialog">
        <div class="modal-content">
            <div class="modal-header">
                <button type="button" class="close" data-dismiss="modal">×</button>
                <h4 class="modal-title">修改商品信息</h4>
            </div>
            <div class="modal-body">
                <form class="form-horizontal" id="validateForm">
                    <div class="form-group">
                        <label for="editGoodsNo" class="col-sm-2 control-label">商品ID</label>
                        <div class="col-sm-10">
                            <input type="text" class="form-control" id="editGoodsId" name="editGoodsId" required readonly>
                        </div>
                    </div>

                    <div class="form-group">
                        <label for="editGoodsNo" class="col-sm-2 control-label">商品编号:</label>
                        <div class="col-sm-10">
                            <input type="text" class="form-control" id="editGoodsNo" name="editGoodsNo" minlength="5" required>
                        </div>
                    </div>

                    <div class="form-group">
                        <label for="editGoodsName" class="col-sm-2 control-label">商品名称:</label>
                        <div class="col-sm-10">
                            <input type="text" class="form-control" id="editGoodsName" name="editGoodsName" required>
                        </div>
                    </div>

                    <div class="form-group">
                        <label for="editGoodsImg" class="col-sm-2 control-label">商品图片:</label>
                        <div class="col-sm-10">
                            <input type="file" class="form-control" id="editGoodsImg" name="editGoodsImg" required>
                        </div>
                    </div>

                    <div class="form-group">
                        <label for="editSale" class="col-sm-2 control-label">当前状态:</label>
                        <div class="col-sm-10">
                            <select type="text" class="form-control" id="editSale" name="editSale" required>
                                <option value="">请选择</option>
                                <option value="1">上架</option>
                                <option value="0">下架</option>
                            </select>
                        </div>
                    </div>

                    <div class="form-group">
                        <label for="editRecom" class="col-sm-2 control-label">是否推荐:</label>
                        <div class="col-sm-10">
                            <select class="form-control" id="editRecom" name="editRecom" required>
                                <option value="">请选择</option>
                                <option value="1">推荐</option>
                                <option value="0">正常</option>
                            </select>
                        </div>
                    </div>

                    <div class="form-group">
                           <div class="col-sm-4">
                               <label for="catNameTree" class="control-label">商品分类:</label>
                               <div class="col-sm-10">
                                   <div id="catNameTree" name="catNameTree" required> </div>
                               </div>
                           </div>
                    </div>
                    <div class="modal-footer">
                        <button class="btn btn-default" data-dismiss="modal">关闭</button>
                        <button class="btn btn-primary" id="saveModify">保存</button>
                    </div>
                </form>
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



