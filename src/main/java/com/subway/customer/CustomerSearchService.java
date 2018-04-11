package com.subway.customer;

import com.subway.service.app.BaseService;
import com.subway.utils.search.SortedSearchable;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.data.domain.Page;
import org.springframework.data.domain.Pageable;
import org.springframework.stereotype.Service;

import java.util.List;

/**
 * 用户信息业务查询类
 *
 * @author huangbin
 * @generate by autoCode
 * @Date 2018-3-1
 */
@Service
public class CustomerSearchService extends BaseService implements SortedSearchable {

    @Autowired
    CustomerRepository customerRepository;


    public List<Customer> findByConditions(String searchPhrase, int paramsSize) {
        String array[] = super.assembleSearchArray(searchPhrase, paramsSize);
        return customerRepository.findAll();
    }


    public Page<Customer> findByConditions(String searchPhrase, int paramsSize, Pageable pageable) {
        String array[] = super.assembleSearchArray(searchPhrase, paramsSize);
        return customerRepository.findAll(pageable);
    }

}