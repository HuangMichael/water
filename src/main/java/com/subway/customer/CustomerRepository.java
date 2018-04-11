package com.subway.customer;

import java.util.List;
import java.util.Map;

import org.springframework.data.domain.Page;
import org.springframework.data.domain.Pageable;
import org.springframework.data.jpa.repository.JpaRepository;


/**
 * 用户信息数据库访问接口
 *
 * @author huangbin
 * @generate by autoCode
 * @Date 2018-3-1
 */

public interface CustomerRepository extends JpaRepository<Customer, Long> {


    /**
     * @param name
     * @param status
     * @param authKey
     * @return
     */
    List<Customer>  findByNameContainingAndStatusAndAuthKeyStartingWith(String name,String status,String authKey);




    /**
     * @param name
     * @param status
     * @param authKey
     * @param pageable
     * @return
     */
    Page<Customer> findByNameContainingAndStatusAndAuthKeyStartingWith(String name, String status, String authKey, Pageable pageable);


}
