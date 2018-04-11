package com.subway.employee;
import java.util.List;
import java.util.Map;

import org.springframework.data.domain.Page;
import org.springframework.data.domain.Pageable;
import org.springframework.data.jpa.repository.JpaRepository;


/**
* 职工信息数据库访问接口
*
* @author huangbin
* @generate by autoCode
* @Date 2018-3-1
*/

public interface EmployeeRepository extends JpaRepository<Employee, Long> {


    /**
     * @param name
     * @param status
     * @return
     */
    List<Employee>  findByNameContainingAndStatus(String name,String status);


    /**
     * @param name
     * @param status
     * @param pageable
     * @return
     */
    Page<Employee> findByNameContainingAndStatus(String name, String status, Pageable pageable);


}
