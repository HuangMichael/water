package com.subway.customer;

import java.util.List;
import java.util.Map;

import org.springframework.data.jpa.repository.JpaRepository;


/**
 * 用户信息数据库访问接口
 *
 * @author huangbin
 * @generate by autoCode
 * @Date 2018-3-1
 */

public interface CustomerRepository extends JpaRepository<Customer, Long> {


}
