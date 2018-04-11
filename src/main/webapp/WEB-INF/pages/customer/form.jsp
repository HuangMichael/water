<%@ page contentType="text/html;charset=UTF-8" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form" %>
<form class="form-horizontal" id="form" method="post">
    <div class="form-group">
        <div class="col-md-12">
                    <div class="form-group">
                <label for="id" class="col-md-2 control-label">序号</label>
                <div class="col-md-4">
                    <input class="form-control" id="id" name="id" v-model="customer.id" />
                </div>
            </div>
            <div class="form-group">
                <label for="content" class="col-md-2 control-label">留言</label>
                <div class="col-md-4">
                    <input class="form-control" id="content" name="content" v-model="customer.content" />
                </div>
            </div>
            <div class="form-group">
                <label for="siteId" class="col-md-2 control-label">站点</label>
                <div class="col-md-4">
                    <input class="form-control" id="siteId" name="siteId" v-model="customer.siteId" />
                </div>
            </div>
            <div class="form-group">
                <label for="columnId" class="col-md-2 control-label">栏目</label>
                <div class="col-md-4">
                    <input class="form-control" id="columnId" name="columnId" v-model="customer.columnId" />
                </div>
            </div>
            <div class="form-group">
                <label for="sortNo" class="col-md-2 control-label">排序</label>
                <div class="col-md-4">
                    <input class="form-control" id="sortNo" name="sortNo" v-model="customer.sortNo" />
                </div>
            </div>
            <div class="form-group">
                <label for="status" class="col-md-2 control-label">状态</label>
                <div class="col-md-4">
                    <input class="form-control" id="status" name="status" v-model="customer.status" />
                </div>
            </div>
            <div class="form-group">
                <label for="id" class="col-md-2 control-label">序号</label>
                <div class="col-md-4">
                    <input class="form-control" id="id" name="id" v-model="customer.id" />
                </div>
            </div>
            <div class="form-group">
                <label for="name" class="col-md-2 control-label">姓名</label>
                <div class="col-md-4">
                    <input class="form-control" id="name" name="name" v-model="customer.name"  required/>
                </div>
            </div>
            <div class="form-group">
                <label for="idCard" class="col-md-2 control-label">身份证号</label>
                <div class="col-md-4">
                    <input class="form-control" id="idCard" name="idCard" v-model="customer.idCard"  required/>
                </div>
            </div>
            <div class="form-group">
                <label for="locationId" class="col-md-2 control-label">区域</label>
                <div class="col-md-4">
                    <input class="form-control" id="locationId" name="locationId" v-model="customer.locationId"  required/>
                </div>
            </div>
            <div class="form-group">
                <label for="address" class="col-md-2 control-label">详细住址</label>
                <div class="col-md-4">
                    <input class="form-control" id="address" name="address" v-model="customer.address"  required/>
                </div>
            </div>
            <div class="form-group">
                <label for="linkPhone" class="col-md-2 control-label">联系电话</label>
                <div class="col-md-4">
                    <input class="form-control" id="linkPhone" name="linkPhone" v-model="customer.linkPhone"  required/>
                </div>
            </div>
            <div class="form-group">
                <label for="photoUrl" class="col-md-2 control-label">照片路径</label>
                <div class="col-md-4">
                    <input class="form-control" id="photoUrl" name="photoUrl" v-model="customer.photoUrl"  required/>
                </div>
            </div>
            <div class="form-group">
                <label for="authKey" class="col-md-2 control-label">授权码</label>
                <div class="col-md-4">
                    <input class="form-control" id="authKey" name="authKey" v-model="customer.authKey" />
                </div>
            </div>
            <div class="form-group">
                <label for="status" class="col-md-2 control-label">状态</label>
                <div class="col-md-4">
                    <input class="form-control" id="status" name="status" v-model="customer.status" />
                </div>
            </div>
        </div>
    </div>
    <div class="modal-footer">
        <button type="button" class="btn btn-default"
                data-dismiss="modal">关闭
        </button>
        <button id="saveBtn" name="saveBtn"
                class="btn btn-danger">保存
        </button>
    </div>
    </div>
</form>