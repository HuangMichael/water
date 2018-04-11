<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<div class="container">
    <div class="row">
        <div id="content" class="col-lg-12">
            <!-- PAGE HEADER-->
            <%@include file="../common/common-breadcrumb.jsp" %>
            <div class="row">
                <div class="col-md-12">
                    <!-- BOX -->
                    <div class="box border blue">
                        <div class="box-title">
                            <h4><i class="fa fa-table"></i>应用查询配置表</h4>
                        </div>
                        <%@include file="../common/common-menubar.jsp" %>
                        <div class="box-body">
                            <div id="contentDiv">
                                <div class="box-body">
                                    <div class="form-group" style="margin-bottom:10px;position:inherit"
                                         id="searchBox">
                                        <div class="col-md-2">
                                            <input class="form-control" id="appDesc" name="appDesc" placeholder="查询描述"/>

                                        </div>
                                        <div class="col-md-2">
                                            <select class="form-control" id="status" onchange="search()">
                                                <option value="1" selected>有效</option>
                                                <option value="0">无效</option>
                                            </select>
                                        </div>
                                        <div class="col-md-2">
                                            <%@include file="../common/common-searchBtn.jsp" %>
                                        </div>
                                    </div>
                                    <table id="appSearchListTable"
                                           class="table table-bordered table-hover table-striped">
                                        <thead>
                                        <tr>
                                            <%@include file="tableList.jsp" %>
                                        </tr>
                                        </thead>
                                    </table>
                                </div>
                            </div>
                        </div>
                    </div>
                    <!-- /BOX -->
                </div>
            </div>
            <%@include file="../common/common-back2top.jsp" %>
        </div>
        <!-- /CONTENT-->
    </div>
</div>


<!-- 模态框（Modal） -->
<div class="modal fade" id="editModal" tabindex="-1" role="dialog" aria-labelledby="myModalLabel">
    <div class="modal-dialog">
        <div class="modal-content">
            <div class="modal-header">
                <button type="button" class="close" data-dismiss="modal">
                    &times;
                </button>
                <h4 class="modal-title" id="myModalLabel1">
                    编辑记录
                </h4>
            </div>
            <div class="modal-body">
                <%@include file="form.jsp" %>
            </div>
        </div><!-- /.modal-content -->
    </div><!-- /.modal -->
</div>

<div class="modal fade " id="uploadModal" tabindex="-1" role="dialog" aria-labelledby="myModalLabel2">
    <div class="modal-dialog" role="document">
        <div class="modal-content">
            <div class="modal-header">
                <button type="button" class="close" data-dismiss="modal" aria-label="Close">
                    <span>&times;</span>
                </button>
                <h4 class="modal-title pull-left" id="myModalLabel2">请选择文件</h4>
            </div>
            <div class="modal-body">
                <div id="dropZone" class="dropzone"></div>
            </div>
        </div>
    </div>
</div>

<div class="modal fade " id="searchColsModal" tabindex="-1" role="dialog" aria-labelledby="myModalLabel2">
    <div class="modal-dialog" role="document">
        <div class="modal-content">
            <div class="modal-header">
                <button type="button" class="close" data-dismiss="modal" aria-label="Close">
                    <span>&times;</span>
                </button>
                <h4 class="modal-title pull-left" id="myModalLabel">添加查询条件</h4>
            </div>
            <div class="modal-body">
                <%@include file="columnList.jsp" %>
            </div>
        </div>
    </div>
</div>
<script type="text/javascript" src="/js/app/appSearch/appSearch.js"></script>
