package com.subway.customer;


import com.subway.location.Location;
import com.subway.member.Member;
import lombok.Data;

import javax.persistence.*;

/**
 * Created by huangbin on 2018/04/11 0023.
 * 用户信息
 */
@Entity
@Table(name = "T_CUSTOMER")
@Data
public class Customer implements java.io.Serializable {

    @Id
    @GeneratedValue(strategy = GenerationType.AUTO)
    private Long id;

    @Column(length = 50)
    private String name;//位置描述

    @Column(length = 20)
    private String linkPhone;//联系电话

    @Column(length = 20)
    private String idCard;//身份证号

    @ManyToOne(fetch = FetchType.LAZY)
    @JoinColumn(name = "location_id", referencedColumnName = "id")
    private Location location;  //所属区域

    @Column(length = 200)
    private String address;//详细地址

    @Column(length = 200)
    private String photoUrl;//照片路径

    @Column(length = 20, nullable = false) //默认位置正常
    private String authKey;//状态

    @Column(length = 1, nullable = false) //默认位置正常
    private String status;//状态

}