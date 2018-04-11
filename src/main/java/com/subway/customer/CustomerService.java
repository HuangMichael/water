package com.subway.customer;

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
 * 用户信息业务类
 *
 * @author huangbin
 * @generate by autoCode
 * @Date 2018-3-1
 */
@Service
public class CustomerService extends BaseService {


    @Autowired
    CustomerRepository customerRepository;


    @Autowired
    CommonDataService commonDataService;

    public List
            <Customer> findAll() {
        return customerRepository.findAll();
    }


    public Page<Customer> findAll(Pageable pageable) {
        return customerRepository.findAll(pageable);
    }


    /**
     * @param id id
     * @return 根据id删除对象
     */
    public ReturnObject delete(Long id) {
        customerRepository.delete(id);
        Customer customer = customerRepository.findOne(id);
        return commonDataService.getReturnType(customer == null, DELETE_SUCCESS, DELETE_FAILURE);
    }


    /**
     * @param customer
     * @return 保存信息
     */
    public ReturnObject save(Customer customer) {

        customer = customerRepository.save(customer);
        return commonDataService.getReturnType(customer != null, SAVE_SUCCESS, SAVE_FAILURE);
    }


    public Customer findById(Long id) {
        return customerRepository.getOne(id);
    }

}
