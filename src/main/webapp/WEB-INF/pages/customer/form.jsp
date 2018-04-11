<%@ page contentType="text/html;charset=UTF-8" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form" %>
<form class="form-horizontal" id="form" method="post">
    <div class="form-group">
        <div class="col-md-12">
            <div class="form-group">
                <label for="name" class="col-md-2 control-label">姓名</label>
                <div class="col-md-4">
                    <input class="form-control" id="id" name="id" v-model="customer.id" type="hidden" />
                    <input class="form-control" id="name" name="name" v-model="customer.name"  required/>
                </div>
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