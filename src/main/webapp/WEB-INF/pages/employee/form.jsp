<%@ page contentType="text/html;charset=UTF-8" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form" %>
<form class="form-horizontal" id="form" method="post">
    <div class="form-group">
        <div class="col-md-12">
            <div class="form-group">
                <label for="workNo" class="col-md-2 control-label">工号</label>
                <div class="col-md-4">
                    <input class="form-control" id="id" name="id" v-model="employee.id" type="hidden"/>
                    <input class="form-control" id="workNo" name="workNo" v-model="employee.workNo" required/>
                </div>

                <label for="name" class="col-md-2 control-label">姓名</label>
                <div class="col-md-4">
                    <input class="form-control" id="name" name="name" v-model="employee.name" required/>
                </div>
            </div>
            <div class="form-group">
                <label for="locationId" class="col-md-2 control-label">负责区域</label>
                <div class="col-md-4">
                    <input class="form-control" id="locationId" name="locationId" v-model="employee.locationId"
                           required/>
                </div>

                <label for="address" class="col-md-2 control-label">详细地址</label>
                <div class="col-md-4">
                    <input class="form-control" id="address" name="address" v-model="employee.address" required/>
                </div>
            </div>
            <div class="form-group">
                <label for="gender" class="col-md-2 control-label">性别</label>
                <div class="col-md-4">
                    <select class="form-control" id="gender" name="status" v-model="employee.gender" style="width:100%"
                            required>
                        <option value="1" selected>男</option>
                        <option value="0">女</option>
                    </select>
                </div>

                <label for="idCard" class="col-md-2 control-label">身份证号</label>
                <div class="col-md-4">
                    <input class="form-control" id="idCard" name="idCard" v-model="employee.idCard" required/>
                </div>
            </div>

            <div class="form-group">
                <label for="telephone" class="col-md-2 control-label">联系电话</label>
                <div class="col-md-4">
                    <input class="form-control" id="telephone" name="telephone" v-model="employee.telephone" required/>
                </div>
                <label for="remark" class="col-md-2 control-label">状态</label>
                <div class="col-md-4">
                    <select class="form-control" id="status" name="status" v-model="employee.status" style="width:100%"
                            required>
                        <option value="1" selected>启用</option>
                        <option value="0">禁用</option>
                    </select>
                </div>
            </div>
            <div class="form-group">
                <label for="remark" class="col-md-2 control-label">备注</label>
                <div class="col-md-10">
                    <input class="form-control" id="remark" name="remark" v-model="employee.remark" required/>
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