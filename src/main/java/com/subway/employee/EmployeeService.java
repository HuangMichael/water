package com.subway.employee;

import java.util.List;
import java.util.Map;

import com.subway.service.app.BaseService;
import org.springframework.beans.factory.annotation.Autowired;
import com.subway.service.commonData.CommonDataService;
import org.springframework.data.domain.Page;
import org.springframework.data.domain.Pageable;
import org.springframework.stereotype.Service;
import com.subway.object.ReturnObject;
import static com.subway.utils.ConstantUtils.*;


/**
* 职工信息业务类
*
* @author huangbin
* @generate by autoCode
* @Date 2018-3-1
*/
@Service
public class EmployeeService extends BaseService {


@Autowired
EmployeeRepository employeeRepository;


@Autowired
CommonDataService commonDataService;

public List
<Employee> findAll() {
return  employeeRepository.findAll();
}


public Page< Employee> findAll(Pageable pageable) {
return  employeeRepository.findAll(pageable);
}


/**
* @param id id
* @return 根据id删除对象
*/
public ReturnObject delete(Long id) {
employeeRepository.delete(id);
Employee employee = employeeRepository.findOne(id);
return commonDataService.getReturnType(employee == null, DELETE_SUCCESS, DELETE_FAILURE);
}


/**
* @param employee
* @return 保存信息
*/
public ReturnObject save(Employee employee) {

employee = employeeRepository.save(employee);
return commonDataService.getReturnType(employee != null, SAVE_SUCCESS, SAVE_FAILURE);
}


public  Employee findById(Long id) {
return  employeeRepository.getOne(id);
}

}
