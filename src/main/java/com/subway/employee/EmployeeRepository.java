package com.subway.employee;
import java.util.List;
import java.util.Map;
import org.springframework.data.jpa.repository.JpaRepository;


/**
* 职工信息数据库访问接口
*
* @author huangbin
* @generate by autoCode
* @Date 2018-3-1
*/

public interface EmployeeRepository extends JpaRepository<Employee, Long> {


}
