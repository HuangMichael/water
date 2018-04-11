package com.subway.employee;

import com.subway.location.Location;
import lombok.Data;

import javax.persistence.*;
import java.io.Serializable;

/**
 * 职工信息实体类
 *
 * @author huangbin
 * @generate by autoCode
 * @Date 2018-3-1
 */
@Entity
@Table(name = "t_employee")
@Data
public class Employee implements Serializable {


    //表之间的关联注解  请自行添加判断
    @Id
    @GeneratedValue(strategy = GenerationType.AUTO)
    private Long id;
    @Column(length = 20)
    private String workNo;
    @Column(length = 50)
    private String name;
    @ManyToOne(fetch = FetchType.LAZY)
    @JoinColumn(name = "location_id", referencedColumnName = "id")
    private Location location;  //所属区域
    @Column(length = 200)
    private String address;
    @Column(length = 1)
    private String gender;
    @Column(length = 20)
    private String idCard;
    @Column(length = 200)
    private String photoUrl;
    @Column(length = 20)
    private String telephone;
    @Column(length = 200)
    private String remark;
    @Column(length = 1, nullable = false)
    private String status;

}
